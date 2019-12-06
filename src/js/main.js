/*********************************************************************************************************************************
    機能：xml特殊文字変換
注意事項：無し
*********************************************************************************************************************************/
String.prototype.xmlEncode = function () {
  return this
    .replace(/&/ig, "&amp;")
    .replace(/</ig, "&lt;")
    .replace(/>/ig, "&gt;")
    .replace(/"/ig, "\\&quot;")
    .replace(/'/ig, "&apos;");
};

/*********************************************************************************************************************************
    機能：文字列繰り返し
注意事項：無し
*********************************************************************************************************************************/
String.prototype.repeat = function (n) {
  let ret = "",
    str = this;
  for (; n > 0; n >>>= 1, str += str)
    if (n & 1) ret += str;
  return ret;
};

var fs = require('fs');
var path = require('path');
var nw = require('nw.gui');
var iconvlite = require('iconv-lite');
const nwDir = path.dirname(process.execPath) + path.sep;

document.addEventListener('DOMContentLoaded', function () {
  new Vue({
    el: "#app",
    data: {
      id: 0, //ファイルID
      langType: 'ja',
      language: {
        "openFile": "開く",
        "movetab": "タブ移動",
        "delete": "削除"
      },
      tabLeft: {
        selected: 0,
        list: []
      },
      tabRight: {
        selected: 0,
        list: []
      },
      err: [], //{filename:'', msg:''}
      isShowOption: false, 
      isShowHelp: false,
      options:{
        AIS1:true,
        AIS2:true,
        AIS3:true,
        AIS4:true,
        AIS5:true,
        AIS6:true,
        AIS7:true,
        MS1:true,
        MS2:true,
        MS3:true,
        MS4:true,
        MS5:true,
        MS6:true,
        MS7:true,
        JAMA:true,
        IEC1:true,
        IEC2:true,
        IEC3:true,
        IEC4:true,
        IEC5:true,
        IEC6:true,
        root:true,
        product:true,
        layer:true,
        parts:true,
        material:true,
        substance:true,
      }
    },
    mounted :function(){
      //optionsをローカルファイルから取得
      let opt;
      try {
        opt = fs.readFileSync(nwDir + "option.json", { encoding: "utf-8" });
      }catch(e){}
      if (opt) {
        this.options = JSON.parse(opt);
      }else{
        fs.writeFileSync(nwDir + "option.json", JSON.stringify(this.$root.options));
      }

      //引数ファイル処理
      let arg = nw.App.argv;
      if (arg.length) this.openArgFile(arg);
    },
    methods: {
      openFile: async function (e) {
        let me = this;

        if (!(window.File && window.FileReader && window.FileList && window.Blob)) return;
        let files = [];
        //FileListを配列化
        for (let i = 0; i < e.target.files.length; i++) files.push(e.target.files[i]);

        //ファイルのテキスト読み取り
        let tabObject = [];
        await Promise.all(files.map(function (file) {
          return me.getFileArr(file, tabObject);
        }));

        this.showFile(tabObject);
      },
      openArgFile: async function(arg){
        let me = this;
        let tabObject = [];
        await Promise.all(arg.map(function(f){
          return me.getFileArr({path: f, name:path.basename(f)}, tabObject, true);
        }));
        me.showFile(tabObject);
      },
      showFile: async function(tabObject){
        let me = this;

        //ファイルテキストをオブジェクト化
        await Promise.all(tabObject.map(async function (o, index) {
          switch (o.type) {
            case 'extErr':
              me.err.push({filename:o.name, msg:'表示できない拡張子です'});
              break;  
            case 'zipErr':
              me.err.push({filename:o.name, msg:'chemSHRPAのデータが破損しています'});
              break;
            case 'xmlTypeErr':
              me.err.push({filename:o.name, msg:'xml書式が展開できない形式です'});
              break;
            case 'AIS':
            case 'AIS-temp':
              o.data = { unique: {}, tree: {}, table: {} };
              o.txt = o.txt.replace(/&quot;/igm, '\\&quot;');
              o.data.unique = await me.xmlTransform(o.txt, 'xsl/AIS_UNIQUE.xsl');
              o.data.tree = await me.xmlTransform(o.txt, 'xsl/AIS_TREE.xsl');
              o.data.table = await me.xmlTransform(o.txt, 'xsl/AIS_TABLE.xsl');
              break;
            case 'MSDSplus':
            case 'MSDSplus-temp':
              o.data = { unique: {}, table: {} };
              o.txt = o.txt.replace(/&quot;/igm, '\\&quot;');
              o.data.unique = await me.xmlTransform(o.txt, 'xsl/MSDSplus_UNIQUE.xsl');
              o.data.table = await me.xmlTransform(o.txt, 'xsl/MSDSplus_TABLE.xsl');
              break;
            case 'IEC62474':
              o.data = { unique: {}, tree: {}, table: {} };
              o.txt = o.txt.replace(/&quot;/igm, '\\&quot;');
              o.data.unique = await me.xmlTransform(o.txt, 'xsl/IEC62474_UNIQUE.xsl');
              o.data.table = await me.xmlTransform(o.txt, 'xsl/IEC62474_TABLE.xsl');
              o.data.tree = await me.xmlTransform(o.txt, 'xsl/IEC62474_TREE.xsl');
              break;
            case 'JAMA':
              o.data = { unique: {}, tree: {} };
              let ver = 0;
              try {
                ver = o.txt.split("\r\n")[0].split('","')[1].replace(/Ver\./, '') - 0;
              }catch(e){}
              if (!ver) {
                o.result = false;
                me.err.push({filename:o.name, msg:'JAMAファイルと形式が異なります'});
                break;
              }
              o.txt = me.JamaToXML(o.txt, ver);
              o.data.unique = await me.xmlTransform(o.txt, 'xsl/JAMA_UNIQUE.xsl');
              o.data.tree = await me.xmlTransform(o.txt, 'xsl/JAMA_TREE.xsl');
              break;
          }
        }));
        
        //エラーデータを削除
        tabObject = tabObject.filter(function(o){
          return o.result;
        });

        //dataをJSON.parse
        tabObject.map(o => {
          try {
            if (o.data.unique) o.data.unique = JSON.parse(o.data.unique);
            if (o.data.tree) o.data.tree = JSON.parse(o.data.tree);
            if (o.data.table) o.data.table = JSON.parse(o.data.table);
          } catch (e) {
            console.log('JSON parse error');
            console.log(o.data);
          }
        });

        //ユニーク部 / ツリー　展開設定
        tabObject.map(function(l){
          Object.keys(l.data.unique).forEach(key => l.data.unique[key].isShow = me.options[key])
          if (l.data.tree) {
            let spred = function(node){
              node.isOpen = me.options[node.type];
              if (node.children) node.children.map(n => spred(n) );
            }
            spred(l.data.tree);
          }
        });

        //変換後の配列をタブリストに投入
        this.tabLeft.list = this.tabLeft.list.concat(tabObject);
      },
      getFileArr: async function (file, o, isFs) {
        let me = this;
        //ファイルタイプの判定
        let f = [],
          type = '',
          detail = '';
        switch (file.name.slice(-4).toUpperCase()) {
          case '.XML': //AIS・MSDSplus・IEC62474判定
            f = isFs? [fs.readFileSync(file.path, { encoding: 'utf8' })] : await this.readFile(file);
            type = 'XML';
            break;
          case '.CSV': //文字コード
            f = isFs? [me.readFileSync_encoding(file.path, 'Shift_JIS')] :await this.readFile(file, 'shift_jis');
            type = 'JAMA';
            detail = 'tree';
            break;
          case 'SHAI': //ZIP
          case 'SHCI': //ZIP
            f = await this.readFile(file, null, true, isFs);
            type = 'IEC62474';
            detail = 'table';
            break;
          default:
            //拡張子エラー
            o.push({
              result: false,
              type: 'extErr',
              name: file.name
            });
            return;
        }
        if (f === 'zipErr') {
          //ZIP解凍エラー
          o.push({
            result: false,
            type: 'zipErr',
            name: file.name
          });
          return;
        }
        //XML判定と戻り値へのプッシュ
        f.map(function (fres) {
          if (type === 'XML') {
            switch (true) {
              case (/MSDSplus-temp/.test(fres)):
                type = 'MSDSplus-temp';
                detail = 'table';
                break;
              case (/AIS-temp/.test(fres)):
                type = 'AIS-temp';
                detail = 'table';
                break;
              case (/MSDSplus/.test(fres)):
                type = 'MSDSplus';
                detail = 'table';
                break;
              case (/AIS/.test(fres)):
                type = 'AIS';
                detail = 'table';
                break;
              case (/chemSHERPA-A/.test(fres)):
              case (/chemSHERPA-C/.test(fres)):
              case (/IEC62474/.test(fres)):
                type = 'IEC62474';
                detail = 'table';
                break;
              default:
                o.push({
                  result: false,
                  type: 'xmlTypeErr',
                  name: file.name
                });
                return;
            }
          }
          me.id++;
          o.push({
            result: true,
            id: me.id,
            type: type,
            name: file.name,
            txt: fres,
            detail: detail
          });
        });
        return;
      },
      readFile: async function (file, encode, isZip, isFs) {
        const me = this;
        const awaitForLoad = function (target) {
          return new Promise(function (resolve) {
            let listener = resolve;
            target.addEventListener("loadend", listener, {
              once: true
            });
          });
        };
        let reader = new FileReader();
        encode = encode ? encode : 'utf8';
        if (isZip) {
          try {
            let zipArr
            if (isFs){
              zipArr = new Uint8Array(fs.readFileSync(file.path));
            }else{
              reader.readAsArrayBuffer(file);
              let res = await awaitForLoad(reader);
              zipArr = new Uint8Array(res.target.result);
            }
            let unzip = new Zlib.Unzip(zipArr);
            let res2 = [];
            unzip.getFilenames().map(function (zipf) {
              let utf8arr = unzip.decompress(zipf);
              res2.push(me.Utf8ArrayToStr(utf8arr));
            });
            return res2; //配列戻し
          } catch (e) {
            console.log(e);
            return 'zipErr';
          }
        } else {
          reader.readAsText(file, encode);
          let res = await awaitForLoad(reader);
          return [res.target.result]; //ZIPが配列で戻すので合わせる
        }
      },
      Utf8ArrayToStr: function (b) {
        var a;var c="";var f=b.length;for(a=0;a<f;){var d=b[a++];switch(d>>4){case 0:case 1:case 2:case 3:case 4:case 5:case 6:case 7:c+=String.fromCharCode(d);break;case 12:case 13:var e=b[a++];c+=String.fromCharCode((d&31)<<6|e&63);break;case 14:e=b[a++];var g=b[a++];c+=String.fromCharCode((d&15)<<12|(e&63)<<6|(g&63)<<0)}}return c
      },
      xmlTransform: async function (xmlStr, xslPath) {
        if (xmlStr.charCodeAt(0) === 0xFEFF) xmlStr = xmlStr.slice(1); //BOM削除
        xmlStr = xmlStr.replace(/<DESCRIPT(.|\s)*?>/im, "<DESCRIPT>"); //JAMP-名前空間除去
        xmlStr = xmlStr.replace(/xmlns=".*?"/im, "").replace(/xmlns:xsi=".*?"/im, ""); //chem-名前空間除去

        let xml = this.parseXML(xmlStr);
        let xsl = await this.xhrLoad(xslPath, true); //xslロード
        let xslp = new XSLTProcessor();
        xslp.importStylesheet(xsl);
        let o = xslp.transformToFragment(xml, document);
        let res = o.textContent;

        //XSLT変換不足対応
        res = res.replace(/\n\s*/igm, '');
        switch (xslPath) {
          case 'xsl/AIS_TABLE.xsl':
            res = res
              .replace(/\#\[/g, '],[')
              .replace(/\@\[/, '[')
              .replace(/\}\{/g, '},{');
            break;
          case 'xsl/MSDSplus_TABLE.xsl':
            res = res.replace(/\]\s?\[/g, '],[');
            break;
          case 'xsl/IEC62474_TABLE.xsl':
          case 'xsl/IEC62474_TREE.xsl':
            res = res.replace(/\}\{/g, '},{');
            break;
        }
        return res;
      },
      xhrLoad: async function (url, isXML) {
        const response = await fetch(url);
        const res = await response.text();
        return isXML ? this.parseXML(res) : res;
      },
      parseXML: function (xmlStr) {
        return new DOMParser().parseFromString(xmlStr, "text/xml")
      },
      JamaToXML: function (strJAMA, ver) {
        //変数及びオブジェクト定義
        let arrJAMA = [],
          JamaXML = [],
          level, rept, PrevNode,
          makeValue = function (hits, arr) {
            let res = "";
            for (let i = hits[0]; i < hits[hits.length - 1] + 1; i++) {
              if (hits.indexOf(i) != -1) {
                res += '<V col="' + i + '">' + arr[i].xmlEncode() + "</V>";
              }
            }
            return res;
          },
          closeNB = function () {
            switch (PrevNode) {
              case "BH":
                rept = Number(arrJAMA[arrJAMA.length - 1][7]) - 1;
                JamaXML[JamaXML.length] = "</PARTS>".repeat(rept);
                break;
              case "ZR":
                rept = Number(arrJAMA[arrJAMA.length - 1][7]) - 1;
                JamaXML[JamaXML.length] = "</MATERIAL>";
                JamaXML[JamaXML.length] = "</PARTS>".repeat(rept);
                break;
            }
            JamaXML[JamaXML.length] = '</NPARTS>';
          };
        //区分ごとのJAMA列
        let col = {
          NB: [2, 3, 4, 5],
          BH: (ver < 230) ? [6, 7, 8, 9, 10, 11, 33, 39, 40, 45] : [6, 7, 8, 9, 10, 11, 39, 40, 45],
          ZR: (ver < 230) ? [12, 13, 14, 15, 16, 17, 18, 19, 28, 29, 30, 31, 32, 41, 46, 48] : [12, 13, 14, 15, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 41, 46, 48],
          KB: (ver < 240) ? [20, 23, 24, 25, 26, 34, 42, 43, 44, 47] : [20, 23, 24, 25, 26, 34, 35, 42, 43, 44, 47]
        }

        //実処理
        strJAMA = strJAMA.split("\r\n");
        for (let i = 0; i < strJAMA.length; i++) {
          if (strJAMA[i] != "") {
            arrJAMA[arrJAMA.length] = strJAMA[i].slice(1, strJAMA[i].length - 1).split('","');
          }
        }
        //配列0行目
        JamaXML[JamaXML.length] = '<?xml version="1.0" encoding="UTF-8" ?>';
        JamaXML[JamaXML.length] = '<JAMA>';
        JamaXML[JamaXML.length] = '<toolLang>ja</toolLang>';
        JamaXML[JamaXML.length] = "<VER>" + arrJAMA[0][1].xmlEncode() + "</VER>";
        JamaXML[JamaXML.length] = "<CSV_DATE>" + arrJAMA[0][2].xmlEncode() + "</CSV_DATE>";
        JamaXML[JamaXML.length] = "<DATA_VALIDATE>" + arrJAMA[0][3].xmlEncode() + "</DATA_VALIDATE>";
        JamaXML[JamaXML.length] = "<EX_LIST>" + arrJAMA[0][5].xmlEncode() + "</EX_LIST>";
        //配列1行目
        JamaXML[JamaXML.length] = "<MAKER_CODE>" + arrJAMA[1][1].xmlEncode() + "</MAKER_CODE>";
        JamaXML[JamaXML.length] = "<SUPPLIER_CODE>" + arrJAMA[1][2].xmlEncode() + "</SUPPLIER_CODE>";
        JamaXML[JamaXML.length] = "<SUPPLIER_NAME>" + arrJAMA[1][3].xmlEncode() + "</SUPPLIER_NAME>";
        JamaXML[JamaXML.length] = "<RES_LIMIT>" + arrJAMA[1][4].xmlEncode() + "</RES_LIMIT>";
        JamaXML[JamaXML.length] = "<RES_DATE>" + arrJAMA[1][5].xmlEncode() + "</RES_DATE>";
        //2行目以降
        for (let i = 2, l = arrJAMA.length; i < l; i++) {
          for (let j = 4; j < 25; j++) {
            if (arrJAMA[i][j] == "") continue;
            switch (j) {
              case 4: //###納入部品(重量列)###    2/3/4/5
                if (i > 2) closeNB();
                JamaXML[JamaXML.length] = '<NPARTS level="' + arrJAMA[i][7] + '" row="' + i + '">';
                JamaXML[JamaXML.length] = makeValue(col.NB, arrJAMA[i]);
                PrevNode = "NB";
                break;
              case 10: //###構成部品(重量列)###    6/7/8/9/10/11/(33)/39/40/45 ※リサイクルマーク
                if (PrevNode == "ZR") {
                  JamaXML[JamaXML.length] = "</MATERIAL>";
                }
                if (arrJAMA[i - 1][7] != "1") {
                  rept = Number(arrJAMA[i - 1][7]) - Number(arrJAMA[i][7]) + 1;
                  JamaXML[JamaXML.length] = "</PARTS>".repeat(rept);
                }
                level = arrJAMA[i][7];
                JamaXML[JamaXML.length] = '<PARTS level="' + level + '" row="' + i + '">';
                JamaXML[JamaXML.length] = makeValue(col.BH, arrJAMA[i]);
                PrevNode = "BH";
                break;
              case 15: //###材料###        12/13/14/15/16/17/18/19/28/29/30/31/32/(33)/41/46/48　※GADSL物質申告済
                if (arrJAMA[i][7] == "1" && PrevNode == "BH") { //納入部品直下の場合
                  JamaXML[JamaXML.length] = "</MATERIAL>";
                  rept = Number(arrJAMA[i - 1][7]) - 1;
                  JamaXML[JamaXML.length] = "</PARTS>".repeat(rept);
                } else if (PrevNode == "ZR") {
                  JamaXML[JamaXML.length] = "</MATERIAL>";
                }
                level = Number(arrJAMA[i][7]) + 1;
                JamaXML[JamaXML.length] = '<MATERIAL level="' + level + '" row="' + i + '">';
                JamaXML[JamaXML.length] = makeValue(col.ZR, arrJAMA[i]);
                PrevNode = "ZR";
                break;
              case 24: //###化合物###      20/23/24/25/26/34/(35)/42/43/44/47
                level = Number(arrJAMA[i][7]) + 2;
                JamaXML[JamaXML.length] = '<SUBSTANCE level="' + level + '" row="' + i + '">';
                JamaXML[JamaXML.length] = makeValue(col.KB, arrJAMA[i]);
                JamaXML[JamaXML.length] = '</SUBSTANCE>';
                break;
            }
          }
        }
        closeNB();
        JamaXML[JamaXML.length] = '</JAMA>';
        return JamaXML.join("\n");
      },
      readFileSync_encoding: function(filename, encoding) {
        var content = fs.readFileSync(filename);
        return iconvlite.decode(content, encoding);
      }
    }
  });
});