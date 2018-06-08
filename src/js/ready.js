/*********************************************************************************************************************************
    機能：レディ関数
注意事項：無し
*********************************************************************************************************************************/
$(function () {
  //引数取得
  var arg = nw.App.argv;

  //言語,ツールバー,ダイアログ設定
  setLanguage();
  setToolbar();
  setDialog();
  setContext();

  //ファイルタブの設定
  $("#contents").tabs().hide();
  $("#contents1").tabs().hide();

  //コンテンツハイトの変更イベント
  $(window).resize(function () {
    $("#contents .tabContents").height($("body").height() - $("#fileTab").height() - 25);
    $("#contents1 .tabContents").height($("body").height() - $("#fileTab1").height() - 25);
  }).resize();

  //ファイル選択ダイアログ
  $("#fileDialog").change(function (e) {
    var fn = $(this).val();
    if (fn.toUpperCase().match(/(CSV|XML|JGP4|SHAI|SHCI)$/)) {
      for (var i = 0; i < $(this)[0].files.length; i++) {
        showFile($(this)[0].files[i]);
      }
    } else {
      if (fn === "") return;　 //ファイル名が空欄⇒キャンセル
      errMsg(msg.msgNotSupport);
    }
  });

  //windowObject関係
  var win = nw.Window.get();
  win.show(); //画面表示
  win.on('close', function () {
    //一時ファイルの削除
    var files = fs.readdirSync(tmpPath);
    for (var file in files) {
      fs.unlinkSync(tmpPath + files[file]);
    }
    this.close(true);
  });

  //削除ボタンの挙動
  $("#contents, #contents1").on("click", "span.ui-icon-close", function () {
    var cid = $(this).parents("#contents").length ? "#contents" : "#contents1";
    var panelId = $(this).closest("li").remove().attr("aria-controls");
    $("#" + panelId).remove();
    $(cid).tabs("refresh");

    //コンテンツの非表示判定
    var t0 = $("#fileTab").find("li").length;
    var t1 = $("#fileTab1").find("li").length;
    if (t0 === 0 && t1 === 0) {
      $("#contents, #contents1").hide();
      $("#contents").css("width", "100%");
      $("#dropMsg").show();
    }
    if (t0 !== 0 && t1 === 0) {
      $("#contents1").hide();
      $("#contents").css("width", "100%");
    }
    if (t0 === 0 && t1 !== 0) {
      //ｔ0が0でt1がある場合は、すべてt0に移してt0を非表示
      $("#fileTab1 button.moveView").each(function () {
        $(this).click();
      });
      $("#contents1").hide();
    }
    $(window).resize();
  });

  //ビュー移動の挙動
  $("#contents, #contents1").on("click", "button.moveView", function () {
    var cid = $(this).parents("#contents").length ? "#contents" : "#contents1";
    var moveTab = function ($li, $tabC, myTab) {
      var opt = cid == "#contents" ? "1" : "";
      $li.clone().appendTo("#fileTab" + opt);
      $tabC.find(".accordion").accordion("destroy");
      $tabC.find("h4").removeClass("ui-state-active");
      $tabC.clone().appendTo("#contents" + opt);
      $li.remove();
      $tabC.remove();
      $("#contents").tabs("refresh");
      $("#contents1").tabs("refresh");

      //ツリービューとアコーディオンのイベント設定
      var $added = $("#contents" + opt).find("div.tabContents").last();
      $added.find(".tabArea").tabs();
      setAccordion($added);
      setTreeview($added);

      //ファイルタブの見た目修正
      $("#fileTab li").last().find("a").click();
      $("#fileTab1 li").last().find("a").click();

      //ビュー変更タブの修正
      switch ($tabC.attr("crtFileType")) {
        case "MSDSplus":
        case "MSDSplus-temp":
          $added.find(".tabArea").tabs("disable", 1);
          break;
        case "JAMA":
        case "IEC62474":
          $added.find(".tabTitleTree").click();
          $added.find(".tabArea")
            .tabs("option", "active", 1)
            .tabs("disable", 0);
          break;
        case "JGP":
          $added.find(".tabArea").tabs("disable", 1);
          break;
      }
      convertUnit($added.find(".uniqueArea"));
      convertUnit($added.find(".tabTable"));
    }

    //コンテンツタブの幅と表示
    if ($(cid.replace(/contents/, "fileTab")).find("li").length === 1) {
      //タブが一つの場合
      if (cid === "#contents") {
        //左タブの場合　なにもしない 0
        return;
      } else {
        //右タブの場合 1
        $("#contents").css("width", "100%").show();
        $("#contents1").hide();
        moveTab($(this).parents("li"), $($(this).parents("li").find("a").attr("href")), cid);
      }
    } else {
      //タブが複数の場合 2
      $("#contents").css("width", "50%");
      $("#contents1").show();
      moveTab($(this).parents("li"), $($(this).parents("li").find("a").attr("href")), cid);
    }

    //コンテンツタブの高さ
    $(window).resize();
  });

  //JGPアイテムセレクタ
  $("#contents, #contents1").on("click", "table.ItemSelector>tbody>tr", function () {
    if ($(this).children("td:first").html() !== "") return;
    showJGPItem($(this).attr("class").split(" ")[0].replace(/JGP200_/, ""), $(this).parents("div.tabContents"));
    $(this)
      .siblings().each(function () {
        $(this).children("td:first").html("");
      }).end()
      .children("td:first")
      .html('<div style="width:10px;height:10px;background:#ec6d71;"></div>');
  });

  //tempフォルダ作成
  if (!fs.existsSync(tmpPath)) fs.mkdirSync(tmpPath);

  //iec62474の添付ファイル用イベントデリゲート
  $("#contents, #contents1").on("click", ".IEC2 button", function () {
    var fileName = tmpPath + $(this).parents("tr").find("td").first().text();
    var data = $(this).parent().attr("data-base64");
    var decode = new Buffer(data, 'base64');
    fs.writeFileSync(fileName, decode);
    nw.Shell.openItem(fileName);
  });

  //検索バインド
  $("#criteria").on("keyup", function (e) {
    if ($(this).val() == "") {
      $("#contents, #contents1").removeHighlight();
      $("#bunshi, #bunbo").text("0");
      return;
    }
    $("#contents, #contents1").removeHighlight();
    $(".uniqueArea, .tabArea>div:visible").highlight($(this).val());
    $("#bunbo").text($("#contents, #contents1").find(".highlight").length);
    if ($("#contents, #contents1").find(".highlight").length) {
      $("#bunshi").text("1");
    } else {
      $("#bunshi").text("0");
    }
  });
  $("#moveUp, #moveDown").click(function (e) {
    if ($("#bunbo").text() == "0") return;
    var $hl = $("#contents, #contents1").find(".highlight");

    if ($hl.filter(".current").length) {
      //currentがいる場合
      $hl.removeClass("current");
      if (this.id == "moveUp") {
        if ($("#bunshi").text() == "1") {
          $("#bunshi").text($("#bunbo").text());
          $hl.last().addClass("current");
        } else {
          $("#bunshi").text($("#bunshi").text() - 0 - 1);
          $hl.eq($("#bunshi").text() - 0 - 1).addClass("current");
        }
      } else {
        if ($("#bunshi").text() == $("#bunbo").text()) {
          $("#bunshi").text("1");
          $hl.first().addClass("current");
        } else {
          $("#bunshi").text($("#bunshi").text() - 0 + 1);
          $hl.eq($("#bunshi").text() - 0 - 1).addClass("current");
        }
      }
    } else {
      //currentがいない場合
      $hl.eq(0).addClass("current");
    }
    $("html,body").animate({
      scrollTop: $hl.filter(".current").offset().top - ($(window).height() / 2)
    });
  });
  $("#searchClose").click(function (e) {
    $("#search").slideUp("fast", function () {
      $("#criteria").val("").keyup();
    });
  });

  //ファイルドロップ対応
  window.ondragover = function (e) {
    e.preventDefault();
    $("#fileCatcher").fadeIn("fast");
    return false;
  };
  window.ondragleave = function (e) {
    if (e.target.id === "fileCatcher") {
      e.preventDefault();
      $("#fileCatcher").fadeOut("fast");
    }
    return false;
  };
  window.ondrop = function (e) {
    //ドロップするとJGPのアイテム選択イベントが切れる...
    e.preventDefault();
    $("#fileCatcher").fadeOut("fast");
    var f = e.dataTransfer.files;
    if (!f[0].path.toUpperCase().match(/(CSV|XML|JGP4|SHAI|SHCI)$/)) {
      errMsg('"' + f[0].path + '"\n\n' + msg.msgNotSupport);
    } else {
      for (var i = 0; i < f.length; i++) {
        showFile(f[i]);
      }
    }
    return;
  };

  //***引数ファイルの表示***
  for (var i = 0, l = arg.length; i < l; i++) {
    showFileFromPath(arg[i]);
  }

  //about配下のリンク設定
  $("#about a").click(function (e) {
    e.preventDefault();
    nw.Shell.openExternal($(this).attr("href"));
  });

  //secound instanceの処理
  var splitCml = function (cml) {
    var res, reg, mat;
    reg = /"([^"]+)"|([^ ]+)/g;
    res = [];
    while (mat = reg.exec(cml)) res[res.length] = mat[1] || mat[2];
    return res.slice(1);
  }
  nw.App.on('open', function (pathData) {
    nw.Window.get().focus();
    var p = splitCml(pathData);
    showFileFromPath(p[p.length - 1].replace(/\"/igm, ''));
  });


});

/*********************************************************************************************************************************
    機能：言語設定関数
注意事項：
*********************************************************************************************************************************/
function setLanguage() {
  var optionPath = nwDir + "option.json";
  try {
    jsonOption = fs.readFileSync(optionPath, {
      encoding: "utf-8"
    });
    jsonOption = JSON.parse(jsonOption);
    $("#option input:checkbox").each(function () {
      $(this).prop("checked", jsonOption[this.id]);
    });
  } catch (e) {
    $("#option input:checkbox")
      .attr("checked", "checked")
      .prop("checked", "checked");
  }
  crtLang = jsonOption.menu.lang;
  jsonTool = fs.readFileSync("dic/tool_" + crtLang + ".json", {
    encoding: "utf-8"
  });
  jsonTool = eval("(" + jsonTool + ")");
}

/*********************************************************************************************************************************
    機能：設定書込関数
注意事項：
*********************************************************************************************************************************/
function writeOption() {
  $("#option input:checkbox").each(function () {
    jsonOption[this.id] = !!$(this).prop("checked")
  });
  fs.writeFileSync(nwDir + "option.json", JSON.stringify(jsonOption, null, "\t"));
}

/*********************************************************************************************************************************
    機能：右クリ設定
注意事項：無し
*********************************************************************************************************************************/
function setContext() {
  var getNewMenuItem = function (target) {
    return new nw.MenuItem({
      label: target,
      click: function () {
        var txt = encodeURIComponent($.trim(window.getSelection().toString()));
        var url;
        switch (target) {
          case "Google":
            url = "https://www.google.com/search?q=" + txt;
            break;
          case "Yahoo!":
            url = "https://search.yahoo.com/search;?p=" + txt;
            break;
          case "Bing":
            url = "https://www.bing.com/search?q=" + txt;
            break;
          case "Baido":
            url = "http://www.baidu.com/s?wd=" + txt;
            break;
        }
        nw.Shell.openExternal(url);
      }
    });
  }
  var subMenu = new nw.Menu();
  subMenu.append(getNewMenuItem("Google"));
  subMenu.append(getNewMenuItem("Yahoo!"));
  subMenu.append(getNewMenuItem("Bing"));
  subMenu.append(getNewMenuItem("Baido"));

  var context = new nw.Menu();
  context.append(new nw.MenuItem({
    label: jsonTool.menu.copy,
    click: function () {
      var txt = $.trim(window.getSelection().toString());
      nw.Clipboard.get().set(txt);
    }
  }));
  context.append(new nw.MenuItem({
    label: jsonTool.menu.webSearch,
    submenu: subMenu
  }));

  var pos = {
    x: 0,
    y: 0
  };
  $("#contents, #contents1").contextmenu(function (e) {
    e.preventDefault();
    var focusStr = (!!window.getSelection().toString())
    context.items[0].enabled = focusStr;
    context.items[1].enabled = focusStr;
    context.popup(pos.x, pos.y);
  }).mousemove(function (e) {
    pos.x = e.clientX;
    pos.y = e.clientY;
  });
}

/*********************************************************************************************************************************
    機能：ツールバー設定
注意事項：無し
*********************************************************************************************************************************/
/*
menubar(menu)
├file(item)
│    └file(subitem:menu)
│        ├open(item)
│        ├print(item)
│        └search(item)
├option(item)
│    └option(subitem:menu)
│        ├view(item)
│        ├lang(item)
│        │    └lang(subitem:menu)
│        │        ├ja(item)
│        │        ├en(item)
│        │        └zh(item)
│        ├enc(item)
│        │    └enc(subitem:menu)
│        │        ├sjis(item)
│        │        ├ansi(item)
│        │        └gb(item)
│        └unit(item)
│            └unit(subitem:menu)
│                ├weight(item)
│                └rate(item)
└other(item)
    └other(subitem:menu)
        └about(item)
*/
function setToolbar() {
  //内部関数定義
  var changeLang = function (me, lang) {
    for (var i = 0; i < iLang.submenu.items.length; i++) {
      iLang.submenu.items[i].checked = false;
    }
    me.checked = true;
    if (jsonOption.menu.lang !== lang) {
      jsonOption.menu.lang = lang;
      writeOption();
      location.reload();
    }
  }
  var changeEnc = function (me, enc) {
    for (var i = 0; i < iEnc.submenu.items.length; i++) {
      iEnc.submenu.items[i].checked = false;
    }
    me.checked = true;
    if (jsonOption.menu.enc !== enc) {
      jsonOption.menu.enc = enc;
      writeOption();
    }
  }
  var appendItems = function (menu, items) {
    for (var i = 0; i < items.length; i++) {
      menu.append(items[i]);
    }
    return menu;
  }

  //メニューアイテムの作成
  var iOpen = new nw.MenuItem({
    label: jsonTool.menu.open,
    key: "O",
    modifiers: "ctrl",
    click: function () {
      $("#fileDialog").click();
    }
  });
  var iPrint = new nw.MenuItem({
    label: jsonTool.menu.print,
    key: "P",
    modifiers: "ctrl",
    click: function () {
      window.print();
    }
  });
  var iSearch = new nw.MenuItem({
    label: jsonTool.menu.search,
    key: "F",
    modifiers: "ctrl",
    click: function () {
      $("#search").slideToggle("fast", function () {
        if ($("#search:visible").length) {
          $("#criteria")[0].focus();
        } else {
          $("#criteria").val("").keyup();
        }
      });
    }
  });
  var iInit = new nw.MenuItem({
    label: jsonTool.menu.init,
    key: "I",
    modifiers: "ctrl",
    click: function () {
      $("#option").dialog("open");
    }
  });
  var iJa = new nw.MenuItem({
    type: "checkbox",
    label: jsonTool.menu.ja,
    checked: jsonOption.menu.lang == "ja",
    click: function () {
      changeLang(this, "ja");
    }
  });
  var iEn = new nw.MenuItem({
    type: "checkbox",
    label: jsonTool.menu.en,
    checked: jsonOption.menu.lang == "en",
    click: function () {
      changeLang(this, "en");
    }
  });
  var iZh = new nw.MenuItem({
    type: "checkbox",
    label: jsonTool.menu.zh,
    checked: jsonOption.menu.lang == "zh",
    click: function () {
      changeLang(this, "zh");
    }
  });
  //エンコード
  var iSjis = new nw.MenuItem({
    type: "checkbox",
    label: jsonTool.menu["Shift-JIS"],
    checked: jsonOption.menu.enc == "Shift-JIS",
    click: function () {
      changeEnc(this, "Shift-JIS");
    }
  });
  var iAnsi = new nw.MenuItem({
    type: "checkbox",
    label: jsonTool.menu.ANSI,
    checked: jsonOption.menu.enc == "ANSI",
    click: function () {
      changeEnc(this, "ANSI");
    }
  });
  var iGb = new nw.MenuItem({
    type: "checkbox",
    label: jsonTool.menu.GB2312,
    checked: jsonOption.menu.enc == "GB2312",
    click: function () {
      changeEnc(this, "GB2312");
    }
  });
  //ユニット
  var iWeight = new nw.MenuItem({
    type: "checkbox",
    label: jsonTool.menu.weight,
    checked: true,
    click: function () {
      jsonOption.menu.weight = this.checked;
      writeOption();
    }
  });
  var iRate = new nw.MenuItem({
    type: "checkbox",
    label: jsonTool.menu.rate,
    checked: true,
    click: function () {
      jsonOption.menu.rate = this.checked;
      writeOption();
    }
  });
  var iAbout = new nw.MenuItem({
    label: jsonTool.menu.about,
    key: "A",
    modifiers: "ctrl",
    click: function () {
      $("#about").dialog("open");
    }
  });

  //構成作成
  var iFile = new nw.MenuItem({
    label: jsonTool.menu.file,
    key: "F",
    modifiers: "alt",
    submenu: appendItems(new nw.Menu(), [iOpen, iPrint, iSearch])
  });
  var iLang = new nw.MenuItem({
    label: jsonTool.menu.lang,
    submenu: appendItems(new nw.Menu(), [iJa, iEn, iZh])
  });
  var iEnc = new nw.MenuItem({
    label: jsonTool.menu.enc,
    submenu: appendItems(new nw.Menu(), [iSjis, iAnsi, iGb])
  });
  var iUnit = new nw.MenuItem({
    label: jsonTool.menu.unit,
    submenu: appendItems(new nw.Menu(), [iWeight, iRate])
  });
  var iView = new nw.MenuItem({
    label: jsonTool.menu.view,
    key: "V",
    modifiers: "alt",
    submenu: appendItems(new nw.Menu(), [iInit, iLang, iEnc, iUnit])
  });
  var iHelp = new nw.MenuItem({
    label: jsonTool.menu.help,
    key: "H",
    modifiers: "alt",
    submenu: appendItems(new nw.Menu(), [iAbout])
  });

  //メインメニュー作成
  nw.Window.get().menu = appendItems(new nw.Menu({
    type: 'menubar'
  }), [iFile, iView, iHelp]);

  for (var key in jsonTool["id"]) {
    $("#" + key).html(jsonTool["id"][key]);
  }
  for (var key in jsonTool["class"]) {
    $("." + key).html(jsonTool["class"][key]);
  }
  msg = jsonTool["script"];
}

/*********************************************************************************************************************************
    機能：ダイアログ設定
注意事項：無し
*********************************************************************************************************************************/
function setDialog() {
  //about
  $("#about").dialog({
    title: jsonTool.menu.about,
    autoOpen: false,
    width: 520,
    resizable: false,
    modal: true,
    open: function () {
      $("body").css("overflow", "hidden");
    },
    close: function () {
      $("body").css("overflow", "auto");
    }
  });

  //オプション設定ダイアログ
  $("#option").dialog({
    title: msg.msgOptTitle,
    autoOpen: false,
    width: 700,
    resizable: false,
    modal: true,
    buttons: {
      'OK': function () {
        writeOption();
        $(this).dialog('close');
      },
      'msgCancel': function () {
        $(this).dialog('close');
      }
    },
    open: function () {
      setLanguage();
      $("body").css("overflow", "hidden");
    },
    close: function () {
      setLanguage();
      $("body").css("overflow", "auto");
    }
  });
  $("#langSpan").buttonset();
  $("button.ui-button:contains('msgCancel')").text(msg.msgCancel);
}

/*********************************************************************************************************************************
    機能：アコーディオン設定
注意事項：
*********************************************************************************************************************************/
function setAccordion($tabC) {
  $tabC.show();
  $tabC.find(".accordion").accordion({
    header: "h4",
    autoHeight: false,
    collapsible: true,
    active: 100
  }).height("auto");
  $.fx.off = true;
  $tabC.find(".accordion h4").unbind('click').click(function () {
    $(this).next().slideToggle("fast");
    $(this).toggleClass("ui-state-active").children("span")
      .toggleClass("ui-icon-triangle-1-s")
      .toggleClass("ui-icon-triangle-1-e");
  });
  $("#InitialView input:checked").each(function () {
    $tabC.find("." + $(this).attr("id").replace(/chk/, "") + " h4 a").click();
  });
  $.fx.off = false;
  $tabC.find(".ui-accordion-content").height("auto");
}

/*********************************************************************************************************************************
    機能：ツリービュー設定
注意事項：
*********************************************************************************************************************************/
function setTreeview($tabC) {
  $tabC.find("a.tabTitleTree").one('click', function () {
    $tabC.find(".tv").treeview();
    $tabC.find(".tv a").click(function (e) {
      e.preventDefault();
      $tabC.find(".tv a").removeClass("selected");
      $(this).addClass("selected");

      //ツリービュー詳細表示
      var xml = [];
      $(this).nextAll().each(function () {
        var id = $(this).attr("id").split("_");
        xml[xml.length] = '<input id="' + id[0] + '" value="' + $(this).val().xmlEncode() + '"/>';
      });
      var treeXML = "<BREAK_DOWN>\n" +
        "<type>" + $tabC.attr("crtFileType").replace(/-temp/igm, "") + "</type>\n" +
        "<cls>" + $(this).attr("id").substring(0, 2) + "</cls>\n" +
        "<ver>" + $tabC.attr("crtFileVer") + "</ver>\n" +
        "<toolLang>" + crtLang + "</toolLang>\n" +
        "" + xml.join("") +
        "</BREAK_DOWN>";
      var htm = getTransform("xsl/BreakDown.xsl", treeXML);
      $tabC.find(".tvRight").html(htm);
      convertUnit($tabC.find(".tvRight"));
    });
  });
  $tabC.find(".tv a:eq(0)").click();
}

/*********************************************************************************************************************************
    機能：単位コンバート設定
注意事項：
*********************************************************************************************************************************/
function convertUnit($target) {
  //重量コンバート(mg -> g -> kg 繰り返し)
  if (jsonOption.menu.weight) {
    $target.find(".weight")
      .attr("title", msg.titleWeight)
      .css("cursor", "pointer")
      .click(function () {
        var txt = $(this).text();
        switch (txt.slice(-2)) {
          case "kg":
            $(this).text((txt.replace(/kg$/igm, "") * 1000000).trimFixed() + "mg");
            break;
          case "mg":
            $(this).text((txt.replace(/mg$/igm, "") / 1000).trimFixed() + "g");
            break;
          default:
            if (txt != "") $(this).text((txt.replace(/g$/igm, "") / 1000).trimFixed() + "kg");
        }
      })
  }

  //含有率コンバート(ppm < -- > % 繰り返し)
  if (jsonOption.menu.rate) {
    $target.find(".rate")
      .attr("title", msg.titleRate)
      .css("cursor", "pointer")
      .click(function () {
        var txt = $(this).text();
        switch (txt.slice(-1)) {
          case "%":
            $(this).text((txt.replace(/%$/igm, "") * 10000) + "ppm");
            break;
          case "m":
            $(this).text((txt.replace(/ppm$/igm, "") / 10000) + "%");
            break;
        }
      });
  }
}