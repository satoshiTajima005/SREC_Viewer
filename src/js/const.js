var exec = require('child_process').exec;
var fs = require('fs');
var iconv = require('iconv-lite');
var path = require('path');
var nw = require('nw.gui');
const nwDir = path.dirname(process.execPath) + path.sep;
const tmpPath = nwDir + "temp" + path.sep;
var jsonOption = {
  "chkAIS1": true, "chkAIS2": true, "chkAIS3": true, "chkAIS4": true, "chkAIS5": true, "chkAIS6": true, "chkAIS7": true,
  "chkMS1": true, "chkMS2": true, "chkMS3": true, "chkMS4": true, "chkMS5": true, "chkMS6": true, "chkMS7": true,
  "chkJGP1": true, "chkJGP2": true, "chkJGP3": true, "chkJGP4": true,
  "chkJAMA1": true,
  "chkIEC1": true, "chkIEC2": true, "chkIEC3": true, "chkIEC4": true, "chkIEC5": true, "chkIEC6": true,
  "chkJamaTree1": true, "chkJamaTree2": true, "chkJamaTree3": true,
  "menu": {
    "weight": true,
    "rate": true,
    "lang": "ja",
    "enc": "Shift-JIS"
  }
};
var jsonTool = null;
var crtLang = "ja"; //初期言語設定
var strXML = {}; //対象ファイルのXML文字列
var msg = {}; //エラーメッセージオブジェクト
var tempIEC = [] //一時的に作成したIEC62474ファイルのパス
var tabCounter = 0;
const tabTemplate =
  '<li>' +
  '<a href="#{href}">#{label}</a>' +
  '<button class="moveView" title="別ビューへ移動">' +
  '<span class="ui-icon ui-icon-extlink"></span>' +
  '</button>' +
  ' <span class="ui-icon ui-icon-close" role="presentation" title="閉じる">Remove Tab</span>' +
  '</li>';
const contentsTemp =
  '<div class="tabContents" id="contents-@">' +
  '<div class="uniqueArea"></div>' +
  '<hr class="hr"/>' +
  '<div class="tabArea">' +
  '<ul class="tabs">' +
  '<li><a class="tabTitleTable" href="#tbl_@"><img src="css/images/TABLE.gif" /><span class="tabTitleTxtTbl">{tableView}</span></a></li>' +
  '<li><a class="tabTitleTree" href="#tre_@"><img src="css/images/TREE.gif" /><span class="tabTitleTxtTre">{treeView}</span></a></li>' +
  '</ul>' +
  '<div id="tbl_@" class="tabTable"></div>' +
  '<div id="tre_@" class="tabTree">' +
  '<div class="tvLeft"></div>' +
  '<div class="tvRight"></div>' +
  '</div>' +
  '</div>' +
  '</div>'

/*********************************************************************************************************************************
    機能：zip解凍済オブジェクト取得関数
注意事項：[{_data:"", name:""}]
*********************************************************************************************************************************/
var getUnpackedZIP = function (path) {
  var res = [];
  try {
    var bnr = fs.readFileSync(path, 'binary');
    var zip = new require('node-zip')(bnr, {
      base64: false,
      checkCRC32: true
    });
    for (var f in zip.files) {
      var o = {
        name: iconv.decode(zip.files[f].name, "UTF-8"),
        data: iconv.decode(zip.files[f]["_data"], "UTF-8")
      }
      res[res.length] = o;
    }
  } catch (e) {
    return false;
  }
  return res;
}

/*********************************************************************************************************************************
    機能：エラーメッセージ
注意事項：無し
*********************************************************************************************************************************/
function errMsg(msg) {
  $("body").append(
    $('<div id="errMsg" class="ui-corner-all">' + msg.replace(/\n/igm, "<br/>") + '</div>')
  );
  $("#errMsg").css("left", $(window).width() / 2 - $("#errMsg").width() / 2 + "px");
  var h = $(window).height() / 2 - $("#errMsg").height() / 2;
  $("#errMsg").animate({
    top: h + "px"
  }, 200, function () {
    $("#errMsg").effect("bounce", {
      times: 3
    }, function () {
      setTimeout(function () {
        $("#errMsg").fadeOut(function () {
          $("#errMsg").remove();
        });
      }, 2500);
    });
  });
}

/*********************************************************************************************************************************
    機能：10進数値適正化
注意事項：無し
*********************************************************************************************************************************/
Number.prototype.trimFixed = function () {
  return this.toFixed(11) - 0;
};

/*********************************************************************************************************************************
    機能：文字列繰り返し
注意事項：無し
*********************************************************************************************************************************/
String.prototype.repeat = function (n) {
  var ret = "",
    str = this;
  for (; n > 0; n >>>= 1, str += str)
    if (n & 1) ret += str;
  return ret;
};

/*********************************************************************************************************************************
    機能：xml特殊文字変換
注意事項：無し
*********************************************************************************************************************************/
String.prototype.xmlEncode = function () {
  return this
    .replace(/&/ig, "&amp;")
    .replace(/</ig, "&lt;")
    .replace(/>/ig, "&gt;")
    .replace(/"/ig, "&quot;")
    .replace(/'/ig, "&apos;");
};

/*********************************************************************************************************************************
    機能：XMLコンバート
注意事項：無し
*********************************************************************************************************************************/
function getTransform(xslFile, xmlStr) {
  try {
    var xml = $.parseXML(xmlStr);
  } catch (e) {
    return "parseErr";
  }
  var xsl = fs.readFileSync(xslFile, {
    encoding: "utf-8"
  });
  xsl = $.parseXML(xsl);
  var xsltProcessor = new XSLTProcessor();
  xsltProcessor.importStylesheet(xsl);
  return xsltProcessor.transformToFragment(xml, document);
}