/*アプリケーションコンポーネント*/
Vue.component('tabs', {
  props: ['target', 'moveto', 'language'],
  template: `
    <div class="column">
      <div class="tabs is-boxed">
        <ul style="overflow:hidden;">
          <li v-for="(item, index) in tabObject.list" :key="item.id" :class="{'is-active': tabObject.selected === index}" @click="clickTab(tabObject, index)">
            <a :title="item.name">
              <span class="tabname">{{item.name}}</span>
              <span class="icon movetab" :title="language.movetab" @click="moveTab(tabObject, item, index, moveto.list)">
                <i class="fas fa-file-export"></i>
              </span>
              <button class="delete is-small" aria-label="close" :title="language.delete" @click="deleteTab(tabObject, index)"></button>
            </a>
          </li>
        </ul>
      </div>
      <div class="preview tabbody">
        <div v-if="tabObject.list[tabObject.selected]">
          <ais
            v-if="/AIS/.test(tabObject.list[tabObject.selected].type)"
            ref="ais"
            :detail="tabObject.list[tabObject.selected].detail"
            :unique="tabObject.list[tabObject.selected].data.unique"
            :table="tabObject.list[tabObject.selected].data.table"
            :tree="tabObject.list[tabObject.selected].data.tree">
          </ais>
          <msds-plus
            v-if="/MSDS/.test(tabObject.list[tabObject.selected].type)"
            ref="msp"
            :detail="tabObject.list[tabObject.selected].detail"
            :unique="tabObject.list[tabObject.selected].data.unique"
            :table="tabObject.list[tabObject.selected].data.table">
          </msds-plus>
          <jama
            v-if="/JAMA/.test(tabObject.list[tabObject.selected].type)"
            ref="jama"
            :detail="tabObject.list[tabObject.selected].detail"
            :unique="tabObject.list[tabObject.selected].data.unique"
            :tree="tabObject.list[tabObject.selected].data.tree">
          </jama>
          <chem
            v-if="/IEC/.test(tabObject.list[tabObject.selected].type)"
            ref="chem"
            :detail="tabObject.list[tabObject.selected].detail"
            :unique="tabObject.list[tabObject.selected].data.unique"
            :table="tabObject.list[tabObject.selected].data.table"
            :tree="tabObject.list[tabObject.selected].data.tree">
          </chem>
        </div>
      </div>
    </div>
  `,
  data: function(){
    return {
      tabObject: this.target
    }
  },
  methods: {
    clickTab: function(target, index){
      target.selected = index;
      if (this.$refs.ais) this.$refs.ais.changeView('table');
      if (this.$refs.msp) this.$refs.msp.changeView('table');
      if (this.$refs.jama) this.$refs.jama.changeView('table');
      if (this.$refs.chem) this.$refs.chem.changeView('table');
      this.$nextTick(function () {
        if (this.$refs.jama) this.$refs.jama.changeView('tree');
      });
    },
    deleteTab: function(target, index){
      target.list.splice( index, 1 );
    },
    moveTab: function(target, item, index, moveTo){
      moveTo.push(Object.create(item));
      this.deleteTab(target, index);
    }
  }
});
Vue.component('ErrMsg', {
  props: ['o'],
  template: `
    <div style="position:fixed; right:0; bottom:0;">
      <div v-for="(err, index) in item" :key="index" class="notification is-warning">
        <button class="delete" @click="removeErr(index)"></button>
        {{err.filename}}<br/>
        {{err.msg}}
      </div>
    </div>
  `,
  data: function (){
    return {
      item : this.o
    }
  },
  methods: {
    removeErr: function(index){
      this.item.splice(index, 1);
    }
  }
});
Vue.component('OptionDlg', {
  props: ['o'],
  template: `
    <div class="modal is-active">
      <div class="modal-background"></div>
      <div class="modal-card">
        <header class="modal-card-head">
          <p class="modal-card-title">初期表示設定</p>
          <button class="delete" aria-label="close" @click="closeDlg"></button>
        </header>
        <section class="modal-card-body">
          <h5 class="title is-5">セクション表示設定</h5>
          <h6 class="title is-6">-- AIS --</h6>
          <div class="items">
            <label class="checkbox"><input type="checkbox" v-model="item.AIS1">AISに関する情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.AIS2">発行会社情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.AIS3">発行/作成 部門情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.AIS4">依頼者情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.AIS5">型番情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.AIS6">成型品情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.AIS7">集計情報</label>
          </div>
          <h6 class="title is-6">-- MSDSplus --</h6>
          <div class="items">
            <label class="checkbox"><input type="checkbox" v-model="item.MS1">MSDSplusに関する情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.MS2">発行会社情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.MS3">発行/作成 部門情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.MS4">依頼者情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.MS5">型番情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.MS6">製品情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.MS7">報告法令等の制定/改訂番号</label>
          </div>
          <h6 class="title is-6">-- JAMA --</h6>
          <div class="items">
            <label class="checkbox"><input type="checkbox" v-model="item.JAMA">ファイル基本情報</label>
          </div>
          <h6 class="title is-6">-- IEC62474(chemSHERPA) --</h6>
          <div class="items">
            <label class="checkbox"><input type="checkbox" v-model="item.IEC1">文書情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.IEC2">添付文書</label>
            <label class="checkbox"><input type="checkbox" v-model="item.IEC3">連絡先情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.IEC4">依頼/回答 情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.IEC5">問い合わせ情報</label>
            <label class="checkbox"><input type="checkbox" v-model="item.IEC6">製品基本情報</label>
          </div>
          <h5 class="title is-5">ツリー展開設定</h5>
          <div class="items">
            <label class="checkbox"><input type="checkbox" v-model="item.product">製品</label>
            <label class="checkbox"><input type="checkbox" v-model="item.layer">階層</label>
            <label class="checkbox"><input type="checkbox" v-model="item.parts">部品</label>
            <label class="checkbox"><input type="checkbox" v-model="item.material">材料</label>
            <label class="checkbox"><input type="checkbox" v-model="item.substance">物質</label>
          </div>
        </section>
        <footer class="modal-card-foot">
          <button class="button" @click="closeDlg">閉じる</button>
        </footer>
      </div>
    </div>
  `,
  data: function (){
    return {
      item : this.o
    }
  },
  methods: {
    closeDlg: function(){
      //Cookies.set('opt', JSON.stringify(this.item), { expires: 365 });
      fs.writeFileSync(nwDir + "option.json", JSON.stringify(this.$root.options));
      this.$parent.isShowOption = false;
    }
  }
});
Vue.component('HelpDlg', {
  template: `
  <div class="modal is-active">
    <div class="modal-background"></div>
    <div class="modal-card">
      <header class="modal-card-head">
        <p class="modal-card-title">SREC-Viewerについて</p>
        <button class="delete" aria-label="close" @click="close"></button>
      </header>
      <section class="modal-card-body">
        <div class="columns">
          <div class="column is-narrow">
            <img src="css/logo_48.png"/>
          </div>
          <div class="column">
            SREC-Viewer<br/>(Substances Reports of Environmental Concern Viewer)<br/>環境負荷物質報告書ビューア Ver.7.0.1
          </div>
        </div>
<pre>
Copyright 2010 - 2019 Satoshi Tajima
<a href="http://opensource.org/licenses/mit-license.php">Released under the MIT license</a>
Mail      <a href="mailto:froghand0104@gmail.com">froghand0104@gmail.com</a>
Blog      <a href="http://froghand0104.blogspot.com" target="_blank">http://froghand0104.blogspot.com</a>
GitHub    <a href="https://github.com/satoshiTajima005/SREC_Viewer" target="_blank">https://github.com/satoshiTajima005/SREC_Viewer</a>
</pre>【使用方法など】
<pre class="helpPre">
電気・電子・自動車業界で、環境情報伝達に一般的に使用されている
・JAMP-AIS [*.xml]
・JAMP-MSDSPlus [*.xml]
・chemSHRPA(AI/CI) [*.shai, *.shci, *.xml]
・IEC62474 [*.xml]
・JAMA/JAPIA統一データシート [*.csv]
の各ファイルのビューワです。

・ウィンドウへのファイルドロップにも対応しています
・ファイル関連付けを行いたい方は、<a href="https://froghand0104.blogspot.com/p/blog-page.html" target="_blank">ダウンロード版</a>をご使用ください。
・多言語化は・・・ご要望が多ければやろうかな

※環境情報は機密事項を含むので、オプション機能とアクセス解析を除くすべての機能は
　クライアント側で処理しており、サーバーに表示したファイル内容が
　送信されることはありません。
※JGPSSIの表示機能に関しては、実務上ほぼ使われなくなったので、
　大幅改定を機に削除しました。
問題がありましたらメールかブログコメントで連絡をいただけると助かります。
</pre>【著作権情報ほか】
<pre class="helpPre">
【著作権】
---AIS/MSDSplus表示機能に関して---
  本ツールはECALGA環境辞書を複写/引用しています。
  ECALGA環境辞書の著作権はJEITA ECセンターにあります。
  JETITA ECセンター  <a href="http://ec.jeita.or.jp/">http://ec.jeita.or.jp/</a>
  ECALGA環境辞書     <a href="http://ec.jeita.or.jp/jp/modules/contents09/">http://ec.jeita.or.jp/jp/modules/contents09/</a>
  Copyright (c) 2007 JEITA
==Leaf icon==
  Creator : DragonArt
  Website : <a href="http://dragonartz.wordpress.com/">http://dragonartz.wordpress.com/</a>
 ==SpyGlass icon==
  Creator : VistaICO Toolbar Icons
  Website : <a href="http://www.vistaico.com/contact.htm">http://www.vistaico.com/contact.htm</a>
  Copyright (C) VistaICO.com

【免責事項】
・当ツールを使用したことによって生じた損害については一切の責任を負いません。
</pre>
      </section>
    </div>
  </div>
  `,
  methods: {
    close: function(){
      this.$root.isShowHelp=false;
    }
  }
});

/*共有コンポーネント*/
Vue.component('UniqueTr', {
  props: ['title', 'value'],
  template: `<tr><th :style="/^[1-6]$/.test(title)?'width:50px;text-arign:center;':''">{{title}}</th><td>{{value}}</td></tr>`
});
Vue.component('UniqueWrap', {
  props: {oName:{type: String}, target:{ type: Object } },
  template: `
    <div class="message is-green">
      <div class="message-header" @click="toggleDetail">
        <p>{{target.title}}</p>
        <span class="icon" v-if="!target.isShow"><i class="fas fa-caret-right"></i></span>
        <span class="icon" v-if="target.isShow"><i class="fas fa-caret-down"></i></span>
      </div>
      <transition name="fade">
        <div class="message-body columns" v-show="target.isShow">
          <div class="column">
            <table class="unique-table table is-bordered is-narrow">
              <tbody>
                <unique-tr v-for="(item,index) in target.data[0]" :title="item.title" :value="item.value" :key="index"></unique-tr>
              </tbody>
            </table>
          </div>
          <div class="column">
            <table class="unique-table table is-bordered is-narrow">
              <tbody>
                <unique-tr v-for="(item,index) in target.data[1]" :title="item.title" :value="item.value" :key="index"></unique-tr>
              </tbody>
            </table>
          </div>
        </div>
      </transition>
    </div>
  `,
  methods: {
    toggleDetail: function(){
      this.target.isShow = !this.target.isShow;
    }
  }
});
Vue.component('TableView', {
  props: {target:{type: Object} },
  template:
    `<div class="tabbody">
      <table class="table is-bordered is-narrow" style="margin: 10px;">
        <thead>
          <tr v-for="(tr,index) in target.thead" :key="index">
            <th v-for="(th,index) in tr" :key="index" :colspan="th.colspan" :class="th.class">{{th.value}}</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(tr,index) in target.tbody" :key="index">
            <td v-for="(td,index) in tr" :key="index" :rowspan="td.rowspan">{{td.value}}</td>
          </tr>
        </tbody>
      </table>
    </div>`
});
Vue.component('TreeView', {
  props: {target:{type: Object} },
  template: `
    <div class="tree tabbody" style="overflow:visible;">
      <div class="columns">
        <div class="column treecol">
          <div>
            <ul>
              <slot></slot>
            </ul>
          </div>
        </div>
        <div class="column treecol">
          <div>
            <table class="table">
              <tr v-for="(row, index) in selected" :key="index">
                <th>{{row.name}}</th>
                <td>{{row.value}}</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  `,
  data: function(){
    return {
      selected: []
    }
  },
  methods: {
    showDetail: function(arg){
      this.selected = arg.props;
      this.$parent.treeSelect(arg);
    }
  }
});
Vue.component('TreeChild', {
  props: {item:{type: Object}, treeID:{type: String} },
  template: `
    <li class="item">
      <span>
        <span class="icon" @click="toggle" v-if="node.children && !node.isOpen"><i class="fas fa-caret-right"></i></span>
        <span class="icon" @click="toggle" v-if="node.children && node.isOpen"><i class="fas fa-caret-down"></i></span>
        <span v-if="!node.children" style="display:inline-block; width:24px;">&nbsp;</span>
        <span @click="select({treeID: treeID, props: node.props})">
          <span v-if="node.type=='product'"><img src="css/ticon_product.png"></span>
          <span v-if="node.type=='layer'"><img src="css/ticon_layer.png"></span>
          <span v-if="node.type=='parts'"><img src="css/ticon_parts.png"></span>
          <span v-if="node.type=='material'"><img src="css/ticon_material.png"></span>
          <span v-if="node.type=='substance'"><img src="css/ticon_substance.png"></span>
          <span v-if="node.type=='law'"><img src="css/ticon_law.png"></span>
          <span :class="{'is-selected': isSelected}">{{ node.name }}</span>
        </span>
      </span>
      <ul class="node" v-show="node.isOpen" v-if="node.children">
        <tree-child v-for="(child, index) in node.children" :key="index" :item="child" :treeID="treeID+''+index"></tree-child>
      </ul>
    </li>
  `,
  data: function(){
    return {
      node: this.item,
      isSelected: false
    }
  },
  methods: {
    toggle: function(){
      this.node.isOpen = !this.node.isOpen;
    },
    select: function(arg){
      if (this.$parent.showDetail){
        this.$parent.showDetail(arg);
      }else{
        this.$parent.select(arg);
      }
    },
  }
});

/*個別コンポーネント*/
Vue.component('AisUnique', {
  props: { target:{ type: Object } },
  template: `
    <div class="unique">
      <unique-wrap oName="AIS1" :target="target.AIS1"></unique-wrap>
      <unique-wrap oName="AIS2" :target="target.AIS2"></unique-wrap>
      <unique-wrap oName="AIS3" :target="target.AIS3"></unique-wrap>
      <unique-wrap oName="AIS4" :target="target.AIS4"></unique-wrap>

      <div class="AIS5 message is-green">
        <div class="message-header" @click="toggleDetail('AIS5')">
          <p>型番情報</p>
          <span class="icon" v-if="!target.AIS5.isShow"><i class="fas fa-caret-right"></i></span>
          <span class="icon" v-if="target.AIS5.isShow"><i class="fas fa-caret-down"></i></span>
        </div>
        <transition name="fade">
          <div class="message-body columns" v-show="target.AIS5.isShow">
            <div class="column is-half">
              <table class="unique-table table is-bordered is-narrow">
                <caption>依頼者</caption>
                <tbody>
                  <unique-tr v-for="(item,index) in target.AIS5.KJE079" :title="index+1" :value="item" :key="index"></unique-tr>
                </tbody>
              </table>
            </div>
            <div class="column is-half">
              <table class="unique-table table is-bordered is-narrow">
                <caption>発行者</caption>
                <tbody>
                  <unique-tr v-for="(item,index) in target.AIS5.KJE164" :title="index+1" :value="item" :key="index"></unique-tr>
                </tbody>
              </table>
            </div>
          </div>
        </transition>
      </div>

      <unique-wrap oName="AIS6" :target="target.AIS6"></unique-wrap>

      <div class="AIS7 message is-green">
        <div class="message-header" @click="toggleDetail('AIS7')">
          <p>集計情報</p>
          <span class="icon" v-if="!target.AIS7.isShow"><i class="fas fa-caret-right"></i></span>
          <span class="icon" v-if="target.AIS7.isShow"><i class="fas fa-caret-down"></i></span>
        </div>
        <transition name="fade">
          <div class="message-body columns" v-show="target.AIS7.isShow">
            <div class="column">
              <table class="table is-bordered is-narrow">
                <thead>
                  <th style="text-align:left; width:auto;">名称</th>
                  <th style="text-align:left; width:auto;">分類記号</th>
                  <th style="text-align:left; width:auto;">質量</th>
                </thead>
                <tbody>
                  <tr v-for="(item,index) in target.AIS7.data" :key="index">
                    <td style="text-align:left; width:auto;">{{item.name}}</td>
                    <td>{{item.div}}</td>
                    <td>{{item.weight}}</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </transition>
      </div>

    </div>
  `,
  methods: {
    toggleDetail: function(prop){
      this.target[prop].isShow = !this.target[prop].isShow;
    }
  }
});
Vue.component('Ais', {
  props: {
    detail:{type: String}, 
    unique:{type: Object},
    table:{type: Object},
    tree:{type: Object}
  },
  template: `
    <div>
      <ais-unique :target="unique"></ais-unique>
      <hr class="hr">
      <div style="background:#f8f8f8;padding: 10px;">
        <div class="tabs is-boxed">
          <ul>
            <li :class="{'is-active': undertab=='table'}" @click="changeView('table')">
              <a><span class="icon"><i class="fas fa-table"></i></span><span>テーブル</span></a>
            </li>
            <li :class="{'is-active': undertab=='tree'}" @click="changeView('tree')">
              <a><span class="icon"><i class="fas fa-stream"></i></span><span>ツリー</span></a>
            </li>
          </ul>
        </div>
        <div>
          <table-view :target="table" v-if="undertab=='table'"></table-view>
          <tree-view :target="tree" v-if="undertab=='tree'">
            <tree-child v-for="(child, index) in tree.children" :key="index" :item="child" treeID="tree" ref="root"></tree-child>
          </tree-view>
        </div>
      </div>
    </div>
  `,
  data: function () {
    return {
      undertab: this.detail
    }
  },
  methods: {
    changeView: function(arg){
      this.undertab = arg;
    },
    treeSelect: function(arg){
      let treespred = function(arg, treeID){
        arg.isSelected = treeID == arg.treeID;
        arg.$children.map(function(child){
          treespred(child, treeID);
        });
      }
      treespred(this.$refs.root[0], arg.treeID);
    }
  }
});
Vue.component('MspUnique', {
  props: { target:{ type: Object } },
  template: `
    <div class="unique">
      <unique-wrap oName="MS1" :target="target.MS1"></unique-wrap>
      <unique-wrap oName="MS2" :target="target.MS2"></unique-wrap>
      <unique-wrap oName="MS3" :target="target.MS3"></unique-wrap>
      <unique-wrap oName="MS4" :target="target.MS4"></unique-wrap>

      <div class="message is-green">
        <div class="message-header" @click="toggleDetail('MS5')">
          <p>型番情報</p>
          <span class="icon" v-if="!target.MS5.isShow"><i class="fas fa-caret-right"></i></span>
          <span class="icon" v-if="target.MS5.isShow"><i class="fas fa-caret-down"></i></span>
        </div>
        <transition name="fade">
          <div class="message-body columns" v-show="target.MS5.isShow">
            <div class="column is-half">
              <table class="unique-table table is-bordered is-narrow">
                <caption>依頼者</caption>
                <tbody>
                  <unique-tr v-for="(item,index) in target.MS5.KJE253" :title="index+1" :value="item" :key="index"></unique-tr>
                </tbody>
              </table>
            </div>
            <div class="column is-half">
              <table class="unique-table table is-bordered is-narrow">
                <caption>発行者</caption>
                <tbody>
                  <unique-tr v-for="(item,index) in target.MS5.KJE254" :title="index+1" :value="item" :key="index"></unique-tr>
                </tbody>
              </table>
            </div>
          </div>
        </transition>
      </div>

      <unique-wrap oName="MS6" :target="target.MS6"></unique-wrap>

      <div class="message is-green">
        <div class="message-header" @click="toggleDetail('MS7')">
          <p>報告法令等の制定/改訂 番号</p>
          <span class="icon" v-if="!target.MS7.isShow"><i class="fas fa-caret-right"></i></span>
          <span class="icon" v-if="target.MS7.isShow"><i class="fas fa-caret-down"></i></span>
        </div>
        <transition name="fade">
          <div class="message-body columns" v-show="target.MS7.isShow">
            <div class="column">
              <table class="table is-bordered is-narrow">
                <thead>
                  <th style="text-align:left; width:auto;">ID</th>
                  <th style="text-align:left; width:auto;">名称</th>
                  <th style="text-align:left; width:auto;">制定/改訂 番号</th>
                </thead>
                <tbody>
                  <tr v-for="(item, index) in target.MS7.data" :key="index">
                    <td>{{item.ID}}</td>
                    <td>{{item.name}}</td>
                    <td>{{item.rev}}</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </transition>
      </div>

    </div>
  `,
  methods: {
    toggleDetail: function(prop){
      this.target[prop].isShow = !this.target[prop].isShow;
    }
  }
});
Vue.component('MsdsPlus', {
  props: {
    unique:{type: Object},
    table:{type: Object}
  },
  template: `
    <div>
      <msp-unique :target="unique"></msp-unique>
      <hr class="hr">
      <div style="background:#f8f8f8;padding: 10px;">
        <div class="tabs is-boxed">
          <ul>
            <li class="is-active">
              <a><span class="icon"><i class="fas fa-table"></i></span><span>テーブル</span></a>
            </li>
          </ul>
        </div>
        <div>
          <table-view :target="table"></table-view>
        </div>
      </div>
    </div>
  `,
  data: function () {
    return {
      undertab: this.detail
    }
  },
  methods: {
    changeView: function(arg){
      this.undertab = arg;
    }
  }
});
Vue.component('Jama', {
  props: {
    detail:{type: String},
    unique:{type: Object},
    tree:{type: Object}
  },
  template: `
    <div>
      <div class="unique">
        <unique-wrap oName="JAMA" :target="unique.JAMA"></unique-wrap>
      </div>
      <hr class="hr">
      <div style="background:#f8f8f8;padding: 10px;">
        <div class="tabs is-boxed">
          <ul>
            <li class="is-active">
              <a><span class="icon"><i class="fas fa-stream"></i></span><span>ツリー</span></a>
            </li>
          </ul>
        </div>
        <div>
          <tree-view :target="tree" v-if="undertab=='tree'">
            <tree-child v-for="(child, index) in tree.children" :key="index" :item="child" treeID="tree" ref="root"></tree-child>
          </tree-view>
        </div>
      </div>
    </div>
  `,
  data: function () {
    return {
      undertab: this.detail
    }
  },
  methods: {
    changeView: function(arg){
      this.undertab = arg;
    },
    treeSelect: function(arg){
      let treespred = function(arg, treeID){
        arg.isSelected = treeID == arg.treeID;
        arg.$children.map(function(child){
          treespred(child, treeID);
        });
      }
      treespred(this.$refs.root[0], arg.treeID);
    }
  }
});
Vue.component('ChemUnique', {
  props: { target:{ type: Object } },
  template: `
    <div class="unique">
      <unique-wrap oName="IEC1" :target="target.IEC1"></unique-wrap>

      <div class="message is-green">
        <div class="message-header" @click="toggleDetail('IEC2')">
          <p>{{target.IEC2.title}}</p>
          <span class="icon" v-if="!target.IEC2.isShow"><i class="fas fa-caret-right"></i></span>
          <span class="icon" v-if="target.IEC2.isShow"><i class="fas fa-caret-down"></i></span>
        </div>
        <transition name="fade">
          <div class="message-body" v-show="target.IEC2.isShow">
            <button class="button" v-for="(item, index) in target.IEC2.data" :key="index" :type="item.type" :data-base64="item.data">{{item.name}}</button>
          </div>
        </transition>
      </div>

      <div class="message is-green">
        <div class="message-header" @click="toggleDetail('IEC3')">
          <p>{{target.IEC3.title}}</p>
          <span class="icon" v-if="!target.IEC3.isShow"><i class="fas fa-caret-right"></i></span>
          <span class="icon" v-if="target.IEC3.isShow"><i class="fas fa-caret-down"></i></span>
        </div>
        <transition name="fade">
          <div class="message-body" v-show="target.IEC3.isShow">
            <table class="unique-table table is-bordered is-narrow">
              <thead>
                <th>&nbsp;</th>
                <th style="text-align:center!important;">依頼者</th>
                <th style="text-align:center!important;">回答者</th>
                <th style="text-align:center!important;">回答承認者</th>
              </thead>
              <tbody>
                <tr v-for="(tr, index) in target.IEC3.data" :key="index">
                  <td>{{tr.title}}</td>
                  <td v-for="(td, index) in tr.value" :key="index">{{td}}</td>
                </tr>
              </tbody>
            </table>
          </div>
        </transition>
      </div>

      <div class="message is-green">
        <div class="message-header" @click="toggleDetail('IEC4')">
          <p>{{target.IEC4.title}}</p>
          <span class="icon" v-if="!target.IEC4.isShow"><i class="fas fa-caret-right"></i></span>
          <span class="icon" v-if="target.IEC4.isShow"><i class="fas fa-caret-down"></i></span>
        </div>
        <transition name="fade">
          <div class="message-body" v-show="target.IEC4.isShow">
            <table class="unique-table table is-bordered is-narrow">
              <thead>
                <th>&nbsp;</th>
                <th style="text-align:center!important;">依頼者</th>
                <th style="text-align:center!important;">回答者</th>
              </thead>
              <tbody>
                <tr v-for="(tr, index) in target.IEC4.data" :key="index">
                  <td>{{tr.title}}</td>
                  <td v-for="(td, index) in tr.value" :key="index">{{td}}</td>
                </tr>
              </tbody>
            </table>
          </div>
        </transition>
      </div>

      <div class="message is-green">
        <div class="message-header" @click="toggleDetail('IEC5')">
          <p>{{target.IEC5.title}}</p>
          <span class="icon" v-if="!target.IEC5.isShow"><i class="fas fa-caret-right"></i></span>
          <span class="icon" v-if="target.IEC5.isShow"><i class="fas fa-caret-down"></i></span>
        </div>
        <transition name="fade">
          <div class="message-body" v-show="target.IEC5.isShow">
            <table class="unique-table table is-bordered is-narrow">
              <thead>
                <th style="text-align:center!important;">ID</th>
                <th style="text-align:center!important;">返答要求</th>
                <th style="text-align:center!important;">回答</th>
              </thead>
              <tbody>
                <tr v-for="(tr, index) in target.IEC5.data" :key="index">
                  <td>{{tr.ID}}</td>
                  <td>{{tr.request}}</td>
                  <td>{{tr.answer}}</td>
                </tr>
              </tbody>
            </table>
          </div>
        </transition>
      </div>

      <unique-wrap oName="IEC6" :target="target.IEC6"></unique-wrap>

    </div>
  `,
  methods: {
    toggleDetail: function(prop){
      this.target[prop].isShow = !this.target[prop].isShow;
    }
  }
});
Vue.component('Chem', {
  props: {
    detail:{type: String}, 
    unique:{type: Object},
    table:{type: Object},
    tree:{type: Object}
  },
  template: `
    <div>
      <chem-unique :target="unique"></chem-unique>
      <hr class="hr">
      <div style="background:#f8f8f8;padding: 10px;">
        <div class="tabs is-boxed">
          <ul>
            <li :class="{'is-active': undertab=='table'}" @click="changeView('table')">
              <a><span class="icon"><i class="fas fa-table"></i></span><span>遵法情報</span></a>
            </li>
            <li :class="{'is-active': undertab=='tree'}" @click="changeView('tree')">
              <a><span class="icon"><i class="fas fa-stream"></i></span><span>成分情報</span></a>
            </li>
          </ul>
        </div>
        <div>
          <div class="tabbody" v-if="undertab=='table'" style="height: 500px; overflow-y: scroll;">
            <table class="table is-bordered is-narrow" style="margin: 10px;">
              <caption style="text-align:left;font-weight:bold;">含有有り</caption>
              <thead>
                <tr class="has-background-danger">
                  <th class="has-text-white">ID</th>
                  <th class="has-text-white">物質<br>[報告用途]</th>
                  <th class="has-text-white">報告閾値</th>
                  <th class="has-text-white">含有率(%)</th>
                  <th class="has-text-white">含有量</th>
                  <th class="has-text-white">使用用途</th>
                  <th class="has-text-white">使用部位</th>
                  <th class="has-text-white">適用除外ID<br>[適用除外内容]</th>
                  <th class="has-text-white">コメント</th>
                </tr>
              </thead>
              <tbody>
                <tr v-for="(tr,index) in table.over" :key="index">
                  <td>{{tr.ID}}</td>
                  <td :title="tr.AppJA">{{tr.nameJA}}</td>
                  <td>{{tr.ThresholdJA}}</td>
                  <td>{{tr.MassPercent}}</td>
                  <td>{{tr.weight}}{{tr.unit}}</td>
                  <td>{{tr.use}}</td>
                  <td>{{tr.usePart}}</td>
                  <td :title="tr.ExemptionDescription">{{tr.ExemptionID}}</td>
                  <td>{{tr.comment}}</td>
                </tr>
              </tbody>
            </table>
            <table class="table is-bordered is-narrow" style="margin: 10px;">
              <caption style="text-align:left;font-weight:bold;">含有無し</caption>
              <thead>
                <tr class="has-background-info">
                  <th class="has-text-white">ID</th>
                  <th class="has-text-white">物質(群)</th>
                  <th class="has-text-white">報告用途</th>
                  <th class="has-text-white">報告閾値</th>
                </tr>
              </thead>
              <tbody>
                <tr v-for="(tr,index) in table.lower" :key="index">
                  <td>{{tr.ID}}</td>
                  <td>{{tr.nameJA}}</td>
                  <td>{{tr.AppJA}}</td>
                  <td>{{tr.ThresholdJA}}</td>
                </tr>
              </tbody>
            </table>
          </div>

          <tree-view :target="tree" v-if="undertab=='tree'">
            <tree-child v-for="(child, index) in tree.children" :key="index" :item="child" treeID="tree" ref="root"></tree-child>
          </tree-view>
        </div>
      </div>
    </div>
  `,
  data: function () {
    return {
      undertab: this.detail
    }
  },
  methods: {
    changeView: function(arg){
      this.undertab = arg;
    },
    treeSelect: function(arg){
      let treespred = function(arg, treeID){
        arg.isSelected = treeID == arg.treeID;
        arg.$children.map(function(child){
          treespred(child, treeID);
        });
      }
      treespred(this.$refs.root[0], arg.treeID);
    }
  }
});