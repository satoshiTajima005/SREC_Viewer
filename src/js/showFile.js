/*********************************************************************************************************************************
    機能：ファイルパスからの表示ルート
注意事項：無し
*********************************************************************************************************************************/
function showFileFromPath(p) {
	p.toUpperCase().match(/(CSV|XML|JGP4|SHAI|SHCI)$/);
	var ext = $.trim(RegExp.$1);
	switch (ext) {
		case "XML":
			var t = fs.readFileSync(p, {
				encoding: "utf-8"
			});
			callBack(ext, t, p);
			break;
		case "CSV":
		case "JGP4":
			var buf = fs.readFileSync(p);
			var t = iconv.decode(buf, jsonOption.menu.enc);
			callBack(ext, t, p);
			break;
		case "SHAI":
		case "SHCI":
			var f = getUnpackedZIP(p);
			if (!f) {
				errMsg(msg.msgIecUnpackNG);
			} else {
				for (var i = 0; i < f.length; i++) {
					callBack("XML", f[i].data, p);
				}
			}
			return;
		default:
			errMsg('"' + p + '"\n\n' + msg.msgNotSupport);
	}
}

/*********************************************************************************************************************************
    機能：表示のルート
注意事項：無し
*********************************************************************************************************************************/
function showFile(oFile) {

	//ファイル処理
	oFile.path.toUpperCase().match(/(CSV|XML|JGP4|SHAI|SHCI)$/);
	var ext = $.trim(RegExp.$1);
	switch (ext) {
		case "XML":
			var enc = "UTF-8";
			break;
		case "CSV":
			var enc = jsonOption.menu.enc;
			break;
		case "JGP4":
			var enc = jsonOption.menu.enc;
			break;
		case "SHAI":
		case "SHCI":
			var f = getUnpackedZIP(oFile.path);
			if (!f) {
				errMsg(msg.msgIecUnpackNG);
				return;
			}
			for (var i = 0; i < f.length; i++) {
				callBack("XML", f[i].data, oFile.path);
			}
			return;
		default:
			errMsg(msg.msgNotSupport);
			return;
	}
	var reader = new FileReader();
	reader.onload = function (e) {
		callBack(ext, e.target.result, oFile.path);
		$(window).resize();
	}
	reader.readAsText(oFile, enc);
}

/*********************************************************************************************************************************
    機能：読み取り後の処理
注意事項：SHAI・SHCIファイルは解凍後のXMLを投げる
*********************************************************************************************************************************/
function callBack(ext, text, p) {
	//コンテンツタブの表示
	$("#contents").show();
	var id = "contents-" + tabCounter;
	var li = $(tabTemplate.replace(/#\{href\}/g, "#" + id).replace(/#\{label\}/g, ("Tab " + tabCounter)));

	var $t = $("#contents").tabs();
	$("#fileTab").append(li);
	$t.append(contentsTemp.replace(/\@/igm, tabCounter).replace(/\{tableView\}/, jsonTool.id.tabTitleTxtTbl).replace(/\{treeView\}/, jsonTool.id.tabTitleTxtTre));
	$t.tabs("refresh");
	$t.find("div.tabContents").last().find("div.tabArea").tabs();
	tabCounter++;

	var $tabC = $t.find("div.tabContents").last();

	var res;
	switch (ext) {
		case "XML":
			if (text.match(/http\:\/\/std\.iec\.ch\/iec62474/)) {
				res = showIEC(text, $tabC);
			} else {
				res = showJAMP(text, $tabC);
			}
			break;
		case "CSV":
			res = showJAMA(text, $tabC);
			break;
		case "JGP4":
			res = showJGP4(text, $tabC);
			break;
	}

	//何かしらエラーがあった場合
	if (res !== true) {
		//タブの除去
		$("#contents").tabs().find("span.ui-icon-close").last().click();
		//エラーメッセージの表示
		errMsg(res);
	} else {
		$("#dropMsg").hide();
		$tabC.attr("crtFilePath", p);
		var f = path.basename(p);
		$("#fileTab li").last().find("a").text(f).click();
	}
}

/*********************************************************************************************************************************
    機能：AIS MSDSplus 表示
注意事項：無し
*********************************************************************************************************************************/
function showJAMP(sXML, $tabC) {
	if (sXML.charCodeAt(0) === 0xFEFF) sXML = sXML.slice(1); //BOM削除

	sXML = sXML
		.replace(/<DESCRIPT(.|\s)*?>/im, "<DESCRIPT>") //名前空間除去
		.replace(/<\/DESCRIPT>/, "<toolLang>" + crtLang + "</toolLang></DESCRIPT>"); //表示言語の追加
	var status = getTransform("xsl/getJAMPStatus.xsl", sXML).textContent;
	switch (status) {
		case "":
		case undefined:
			return msg.msgJampNG;
		case "parseErr":
			return msg.msgEncodeNG;
	}
	status = status.split(",");

	//JAMPフォーマットのXMLか確認
	switch (status[0]) {
		case "AIS":
		case "MSDSplus":
			break;
		case "AIS-temp":
		case "MSDSplus-temp":
			if (!confirm(msg.msgJampTemp)) return false;
			break;
		default:
			return msg.msgJampNG;
	}
	switch ($.trim(status[1])) {
		case "Ver.3.0":
		case "Ver.3.1":
		case "Ver.4.0":
		case "Ver.4.1":
			break;
		default:
			return msg.msgJampVerNG;
	}
	status[1] = $.trim(status[1]).substr(4, 1);

	var fName = "xsl/" + status[0].replace(/-temp$/igm, "");
	$tabC.find("div.uniqueArea").html(getTransform(fName + "_UNIQUE.xsl", sXML));
	setAccordion($tabC);
	$tabC.find(".tabTable").html(getTransform(fName + "_TABLE.xsl", sXML));
	if (status[0].match(/AIS/)) {
		$tabC.find(".tvLeft").html(getTransform(fName + "_TREE.xsl", sXML));
		setTreeview($tabC);
	} else {
		$tabC.find(".tabArea").tabs("disable", 1);
	}

	//単位コンバート設定
	convertUnit($tabC.find(".uniqueArea"));
	convertUnit($tabC.find(".tabTable"));

	//読み込みファイル情報設定
	$tabC.attr("crtFileType", status[0]);
	$tabC.attr("crtFileVer", status[1]);

	return true;
}

/*********************************************************************************************************************************
    機能：IEC62474 表示
注意事項：無し
*********************************************************************************************************************************/
function showIEC(sXML, $tabC) {
	if (sXML.charCodeAt(0) === 0xFEFF) sXML = sXML.slice(1); //BOM削除

	//バージョン確認
	sXML.match(/schemaDatabaseVersion="(.*?)"/);
	if (RegExp.$1 !== "X6.01ex1.0") {
		return msg.msgIECVerNG;
	};

	//表示前処理
	var mainStr = sXML.match(/<Main.*?>/m)[0].replace(/xmlns(:xsi)?=".*?"/gm, "").replace(/\s*\>/, ">").replace("  ", ""); //名前空間除去
	sXML = sXML
		.replace(/<Main.*?>/m, mainStr)
		.replace(/<\/Main>/, "<toolLang>" + crtLang + "</toolLang></Main>"); //表示言語の追加

	//表示
	$tabC.find(".uniqueArea").html(getTransform("xsl/IEC62474_UNIQUE.xsl", sXML));
	$tabC.find(".tvLeft").html(getTransform("xsl/IEC62474_TREE.xsl", sXML));
	setAccordion($tabC);
	setTreeview($tabC);
	$tabC.find("a.tabTitleTree").click();
	$tabC.find(".tabArea").tabs("disable", 0);

	//読み込みファイル情報設定
	$tabC.attr("crtFileType", "IEC62474");
	$tabC.attr("crtFileVer", $("#docInfo_1 td:first").text());

	return true;
}

/*********************************************************************************************************************************
    機能：JAMA 表示
注意事項：無し
*********************************************************************************************************************************/
function showJAMA(txt, $tabC) {
	/*********************************************************************************************************************************
		機能：JAMA -> XML 変換関数
	注意事項：
	*********************************************************************************************************************************/
	var JamaToXML = function (strJAMA) {
		//変数及びオブジェクト定義
		var arrJAMA = [],
			JamaXML = [],
			level, rept, PrevNode,
			makeValue = function (hits, arr) {
				var res = "";
				for (var i = hits[0]; i < hits[hits.length - 1] + 1; i++) {
					if ($.inArray(i, hits) != -1) {
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
		var col = {
			NB: [2, 3, 4, 5],
			BH: (ver < 230) ? [6, 7, 8, 9, 10, 11, 33, 39, 40, 45] : [6, 7, 8, 9, 10, 11, 39, 40, 45],
			ZR: (ver < 230) ? [12, 13, 14, 15, 16, 17, 18, 19, 28, 29, 30, 31, 32, 41, 46, 48] : [12, 13, 14, 15, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 41, 46, 48],
			KB: (ver < 240) ? [20, 23, 24, 25, 26, 34, 42, 43, 44, 47] : [20, 23, 24, 25, 26, 34, 35, 42, 43, 44, 47]
		}

		//実処理
		strJAMA = strJAMA.split("\r\n");
		for (var i = 0; i < strJAMA.length; i++) {
			if (strJAMA[i] != "") {
				arrJAMA[arrJAMA.length] = strJAMA[i].slice(1, strJAMA[i].length - 1).split('","');
			}
		}
		//配列0行目
		JamaXML[JamaXML.length] = '<?xml version="1.0" encoding="UTF-8" ?>';
		JamaXML[JamaXML.length] = '<JAMA>';
		JamaXML[JamaXML.length] = '<toolLang>' + crtLang + '</toolLang>';
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
		for (var i = 2, l = arrJAMA.length; i < l; i++) {
			for (var j = 4; j < 25; j++) {
				if (arrJAMA[i][j] == "") continue;
				switch (j) {
					case 4: //###納入部品(重量列)###		2/3/4/5
						if (i > 2) closeNB();
						JamaXML[JamaXML.length] = '<NPARTS level="' + arrJAMA[i][7] + '" row="' + i + '">';
						JamaXML[JamaXML.length] = makeValue(col.NB, arrJAMA[i]);
						PrevNode = "NB";
						break;
					case 10: //###構成部品(重量列)###		6/7/8/9/10/11/(33)/39/40/45 ※リサイクルマーク
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
					case 15: //###材料###				12/13/14/15/16/17/18/19/28/29/30/31/32/(33)/41/46/48　※GADSL物質申告済
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
					case 24: //###化合物###			20/23/24/25/26/34/(35)/42/43/44/47
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
	};
	/*********************************************************************************************************************************/

	//バージョンと「正常終了」確認
	var csv = txt.split("\r\n");
	var ver = csv[0].split('","');
	if (ver.length < 2) return msg.msgJamaCsvNG;
	var status = ver[3];
	ver = ver[1].replace(/Ver|\./ig, "");
	if (!isFinite(ver)) return msg.msgJamaCsvNG;
	if (204 > ver || ver > 250) return msg.msgJamaVerNG;

	if (status != "正常終了" && status != "Successful" && status != "正常退出") {
		if (!confirm(msg.msgJamaStatusNG.replace(/@status@/, status))) return;
	}

	//表示前処理
	strXML[$tabC.attr("id")] = JamaToXML(txt);

	//表示
	var htm = getTransform("xsl/JAMA_UNIQUE.xsl", strXML[$tabC.attr("id")]);
	switch (htm) {
		case "":
		case undefined:
			return msg.msgJamaCsvNG;
		case "parseErr":
			return msg.msgEncodeNG;
	}

	$tabC.find(".uniqueArea").html(htm);
	$tabC.find(".tvLeft").html(getTransform("xsl/JAMA_TREE.xsl", strXML[$tabC.attr("id")]));
	$tabC.find(".tvLeft span").each(function () {
		var ck = false;
		switch ($(this).attr("class")) {
			case "nparts":
				ck = !jsonOption.chkJamaTree1;
				break;
			case "parts":
				ck = !jsonOption.chkJamaTree2;
				break;
			case "material":
				ck = !jsonOption.chkJamaTree3;
				break;
			case "substance":
				ck = !jsonOption.chkJamaTree4;
				break;
		}
		if (ck) $(this).parent("li").addClass("closed");
	});

	//jQuery ui 設定
	setAccordion($tabC);
	setTreeview($tabC);

	//読み込みファイル情報設定
	$tabC.attr("crtFileType", "JAMA");
	$tabC.attr("crtFileVer", ver);

	//初期表示
	$tabC.find("a.tabTitleTree").click();
	$tabC.find(".tabArea")
		.tabs("option", "active", 1)
		.tabs("disable", 0);

	return true;
}


/*********************************************************************************************************************************
  機能：JGPアイテム表示
注意事項：無し
*********************************************************************************************************************************/
var showJGPItem = function (eq, $tabC) {
	//$tabC.css("display", "none");
	$tabC.find(".tabTitleTable").click();
	var txt = strXML[$tabC.attr("id")].replace(/<\/JGP>/, "").split("<JGP200>");
	var tmp = "<JGP200>" + "<toolLang>" + crtLang + "</toolLang>\n" + "<ver>" + $tabC.attr("crtFileVer").substring(0, 3) + "</ver>\n";
	txt = tmp + (txt[eq].replace(/<toolLang>.*$/, ""));

	$tabC.find(".ItemHeader").html(getTransform("xsl/JGP_ITEM.xsl", txt));
	$tabC.find(".tabTable").html(getTransform("xsl/JGP_TABLE.xsl", txt));
	$tabC.find(".tv").addClass("tree" + crtLang);
	//$tabC.css("display", "block");
};

function showJGP4(txt, $tabC) {
	/*********************************************************************************************************************************
		機能：JGP -> XML 変換関数
	注意事項：無し
	*********************************************************************************************************************************/
	var JgpToXml = function (strJGP) {
		var TargetString = $.trim(strJGP.xmlEncode().replace(/\t/ig, "</V><V>")).replace(/\r\n/ig, "</V>\n") + "</V>";
		var Row = TargetString.split("\n");
		for (var i = 0; i < Row.length; i++) {
			if (!isFinite(Row[i].substr(0, 3))) {
				Row[i - 1] = Row[i - 1] + "\n" + Row[i];
				Row[i] = "";
			}
		}
		var PrevRow;
		for (var i = 0; i < Row.length; i++) {
			if (Row[i] == "") {
				continue;
			}
			var CurrentRow = Row[i].substr(0, 3);
			Row[i] = "<JGP" + CurrentRow + ">" + Row[i].substr(7);
			switch (CurrentRow) {
				case "200":
					switch (PrevRow) {
						case "200":
							Row[i] = "</JGP200>" + Row[i];
							break;
						case "300":
							Row[i] = "</JGP300></JGP200>" + Row[i];
							break;
						case "600":
						case "700":
							Row[i] = "</JGP600></JGP300></JGP200>" + Row[i];
							break;
					}
					break;
				case "300":
					if (PrevRow == "300") {
						Row[i] = "</JGP300>" + Row[i];
					}
					if (PrevRow == "600" || PrevRow == "700") {
						Row[i] = "</JGP600></JGP300>" + Row[i];
					}
					break;
				case "600":
					if (PrevRow == "600" || PrevRow == "700") {
						Row[i] = "</JGP600>" + Row[i];
					}
					break;
				case "100":
				case "110":
				case "120":
				case "700":
					Row[i] = Row[i] + "</JGP" + Row[i].substr(4, 3) + ">";
					break;
			}
			PrevRow = CurrentRow;
		}
		TargetString = '<?xml version="1.0" encoding="UTF-8"?><JGP>' + Row.join("");
		if (PrevRow == "300") {
			TargetString += "</JGP300>";
		}
		if (PrevRow == "600") {
			TargetString += "</JGP600></JGP300>";
		}
		if (PrevRow == "700") {
			TargetString += "</JGP700></JGP600></JGP300>";
		}
		TargetString += "</JGP200><toolLang>" + crtLang + "</toolLang></JGP>";

		//一部のCAS-NOで前部に空白があるので除去
		TargetString = TargetString.replace(/<V> /ig, "<V>");

		return TargetString;
	};

	/*********************************************************************************************************************************/

	strXML[$tabC.attr("id")] = JgpToXml(txt);
	var unique = getTransform("xsl/JGP_UNIQUE.xsl", strXML[$tabC.attr("id")]);
	switch (unique) {
		case "":
		case undefined:
			return msg.msgJgpNG;
		case "parseErr":
			return msg.msgEncodeNG;
	}

	//表示
	$tabC.find(".uniqueArea").html(unique);

	//jQuery ui 設定
	setAccordion($tabC);

	//読み込みファイル情報設定
	$tabC.attr("crtFileType", "JGP");
	$tabC.attr("crtFileVer", $("#100at2").text().substring(0, 3));

	//初期表示
	$tabC.find(".ItemSelector tr:eq(1)").click();
	$tabC.find(".tabArea").tabs("disable", 1);

	return true;
}