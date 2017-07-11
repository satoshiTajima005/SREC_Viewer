<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--
##########################################################################################
		ヘッダー
##########################################################################################-->
	<xsl:template name="getJampHeader">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='KS'">階層</xsl:if>
			<xsl:if test="$id='BH'">部品</xsl:if>
			<xsl:if test="$id='ZR'">材質</xsl:if>
			<xsl:if test="$id='BS'">報告物質</xsl:if>
			<xsl:if test="$id='HR'">対象法令等</xsl:if>
			<xsl:if test="$id='MsHR'">管理対象基準</xsl:if>
			<xsl:if test="$id='MsBS'">管理対象物質</xsl:if>
			<xsl:if test="$id='AIS1'">AISに関する情報</xsl:if>
			<xsl:if test="$id='AIS6'">成型品情報</xsl:if>
			<xsl:if test="$id='AIS7'">集計情報</xsl:if>
			<xsl:if test="$id='JAMP2'">発行会社情報</xsl:if>
			<xsl:if test="$id='JAMP3'">発行/作成 部門情報</xsl:if>
			<xsl:if test="$id='JAMP4'">依頼者情報</xsl:if>
			<xsl:if test="$id='JAMP5'">型番情報</xsl:if>
			<xsl:if test="$id='MS1'">MSDSplusに関する情報</xsl:if>
			<xsl:if test="$id='MS6'">製品情報</xsl:if>
			<xsl:if test="$id='MS7'">報告法令等の制定/改訂 番号</xsl:if>
			<xsl:if test="$id='addittion'">追加情報</xsl:if>
			<xsl:if test="$id='adr'">住所</xsl:if>
			<xsl:if test="$id='cls'">該当区分</xsl:if>
			<xsl:if test="$id='co'">会社名</xsl:if>
			<xsl:if test="$id='coE'">会社名(英)</xsl:if>
			<xsl:if test="$id='coID'">会社ID</xsl:if>
			<xsl:if test="$id='coL'">会社名(母)</xsl:if>
			<xsl:if test="$id='contact'">担当者氏名</xsl:if>
			<xsl:if test="$id='contain'">含有確認</xsl:if>
			<xsl:if test="$id='div'">部門名</xsl:if>
			<xsl:if test="$id='docNo'">文書番号</xsl:if>
			<xsl:if test="$id='docType'">文書種類</xsl:if>
			<xsl:if test="$id='format'">フォーマットVer.</xsl:if>
			<xsl:if test="$id='GPID'">文書GPID</xsl:if>
			<xsl:if test="$id='include'">引用等</xsl:if>
			<xsl:if test="$id='itemName'">製品名</xsl:if>
			<xsl:if test="$id='item'">製品番号</xsl:if>
			<xsl:if test="$id='itemE'">製品番号(英)</xsl:if>
			<xsl:if test="$id='itemL'">製品番号(母)</xsl:if>
			<xsl:if test="$id='commonName'">一般商品名</xsl:if>
			<xsl:if test="$id='lang'">言語</xsl:if>
			<xsl:if test="$id='lv'">レベル</xsl:if>
			<xsl:if test="$id='makeCo'">製造会社</xsl:if>
			<xsl:if test="$id='makeDate'">作成日</xsl:if>
			<xsl:if test="$id='makeDiv'">作成:部門名</xsl:if>
			<xsl:if test="$id='makeTel'">作成:電話</xsl:if>
			<xsl:if test="$id='mass'">質量</xsl:if>
			<xsl:if test="$id='matList'">材質リストVer.</xsl:if>
			<xsl:if test="$id='maxrate'">最大含有率</xsl:if>
			<xsl:if test="$id='name'">名称</xsl:if>
			<xsl:if test="$id='orgID'">登録機関ID</xsl:if>
			<xsl:if test="$id='qua'">員数</xsl:if>
			<xsl:if test="$id='rate'">含有率</xsl:if>
			<xsl:if test="$id='remarks'">備考</xsl:if>
			<xsl:if test="$id='remarks1'">備考 1</xsl:if>
			<xsl:if test="$id='remarks2'">備考 2</xsl:if>
			<xsl:if test="$id='remarks3'">備考 3</xsl:if>
			<xsl:if test="$id='requester'">依頼者</xsl:if>
			<xsl:if test="$id='resAdr'">発行:住所</xsl:if>
			<xsl:if test="$id='resDate'">提出日</xsl:if>
			<xsl:if test="$id='resDiv'">発行:部門名</xsl:if>
			<xsl:if test="$id='resFax'">発行:FAX</xsl:if>
			<xsl:if test="$id='resItemNo'">発行者型番</xsl:if>
			<xsl:if test="$id='resItemNoE'">発行者型番(英)</xsl:if>
			<xsl:if test="$id='resItemNoL'">発行者型番(母)</xsl:if>
			<xsl:if test="$id='resMail'">発行:E-Mail</xsl:if>
			<xsl:if test="$id='resposer'">発行者</xsl:if>
			<xsl:if test="$id='resRemarks'">発行者備考</xsl:if>
			<xsl:if test="$id='resTel'">発行:電話</xsl:if>
			<xsl:if test="$id='rev'">改訂履歴</xsl:if>
			<xsl:if test="$id='revDate'">改訂日</xsl:if>
			<xsl:if test="$id='revNo'">制定/改訂 番号</xsl:if>
			<xsl:if test="$id='series'">シリーズ名</xsl:if>
			<xsl:if test="$id='standerd'">公的規格</xsl:if>
			<xsl:if test="$id='subsList'">物質リストVer.</xsl:if>
			<xsl:if test="$id='symbol'">分類記号</xsl:if>
			<xsl:if test="$id='tel'">電話</xsl:if>
			<xsl:if test="$id='unit'">単位</xsl:if>
			<xsl:if test="$id='use'">用途</xsl:if>
			<xsl:if test="$id='collect'">集合化</xsl:if>
			<xsl:if test="$id='explanation'">適用除外内容</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='KS'">Level</xsl:if>
			<xsl:if test="$id='BH'">Component</xsl:if>
			<xsl:if test="$id='ZR'">Material</xsl:if>
			<xsl:if test="$id='BS'">Substance</xsl:if>
			<xsl:if test="$id='HR'">Concerned Regulation</xsl:if>
			<xsl:if test="$id='MsHR'">Substance(s) To Be Notified</xsl:if>
			<xsl:if test="$id='MsBS'">Relevant Standard</xsl:if>
			<xsl:if test="$id='AIS1'">AIS Information</xsl:if>
			<xsl:if test="$id='AIS6'">Article Information</xsl:if>
			<xsl:if test="$id='AIS7'">Total Amounts of Material within Article</xsl:if>
			<xsl:if test="$id='JAMP2'">Issuing company Information</xsl:if>
			<xsl:if test="$id='JAMP3'">Issuing and Making Department Information</xsl:if>
			<xsl:if test="$id='JAMP4'">Requester Information</xsl:if>
			<xsl:if test="$id='JAMP5'">Item Number Information</xsl:if>
			<xsl:if test="$id='MS1'">MSDSplus Information</xsl:if>
			<xsl:if test="$id='MS6'">Product Information</xsl:if>
			<xsl:if test="$id='MS7'">Relevant Standard Information</xsl:if>
			<xsl:if test="$id='addittion'">Remarks</xsl:if>
			<xsl:if test="$id='adr'">Address</xsl:if>
			<xsl:if test="$id='cls'">Applicable</xsl:if>
			<xsl:if test="$id='co'">Company Name</xsl:if>
			<xsl:if test="$id='coE'">Company Name (English)</xsl:if>
			<xsl:if test="$id='coID'">Entity ID</xsl:if>
			<xsl:if test="$id='coL'">Company Name (Mother tongue)</xsl:if>
			<xsl:if test="$id='contact'">Contact Person</xsl:if>
			<xsl:if test="$id='contain'">Containing Status</xsl:if>
			<xsl:if test="$id='div'">Department</xsl:if>
			<xsl:if test="$id='docNo'">Sheet Ref. No.</xsl:if>
			<xsl:if test="$id='docType'">Document Type</xsl:if>
			<xsl:if test="$id='format'">Format Version</xsl:if>
			<xsl:if test="$id='GPID'">GP Sheet ID</xsl:if>
			<xsl:if test="$id='include'">Reference Notes</xsl:if>
			<xsl:if test="$id='itemName'">Product Name</xsl:if>
			<xsl:if test="$id='item'">Item No.</xsl:if>
			<xsl:if test="$id='itemE'">Item No. (English)</xsl:if>
			<xsl:if test="$id='itemL'">Item No. (Mother tongue)</xsl:if>
			<xsl:if test="$id='commonName'">Common Product Name</xsl:if>
			<xsl:if test="$id='lang'">Language</xsl:if>
			<xsl:if test="$id='lv'">Class</xsl:if>
			<xsl:if test="$id='makeCo'">Manufacturer Name</xsl:if>
			<xsl:if test="$id='makeDate'">Date Originally Issued</xsl:if>
			<xsl:if test="$id='makeDiv'">Making Dept.</xsl:if>
			<xsl:if test="$id='makeTel'">Making TEL</xsl:if>
			<xsl:if test="$id='mass'">Mass</xsl:if>
			<xsl:if test="$id='matList'">Material List Ver.</xsl:if>
			<xsl:if test="$id='maxrate'">Max. Concentration</xsl:if>
			<xsl:if test="$id='name'">Name</xsl:if>
			<xsl:if test="$id='orgID'">ID Organizer</xsl:if>
			<xsl:if test="$id='qua'">Quantity</xsl:if>
			<xsl:if test="$id='rate'">Concentration</xsl:if>
			<xsl:if test="$id='remarks'">Remarks</xsl:if>
			<xsl:if test="$id='remarks1'">Remarks 1</xsl:if>
			<xsl:if test="$id='remarks2'">Remarks 2</xsl:if>
			<xsl:if test="$id='remarks3'">Remarks 3</xsl:if>
			<xsl:if test="$id='requester'">Requester</xsl:if>
			<xsl:if test="$id='resAdr'">Issuing Address</xsl:if>
			<xsl:if test="$id='resDate'">Submission Date</xsl:if>
			<xsl:if test="$id='resDiv'">Issuing Dept.</xsl:if>
			<xsl:if test="$id='resFax'">Issuing FAX</xsl:if>
			<xsl:if test="$id='resItemNo'">Issuing Company Item No.</xsl:if>
			<xsl:if test="$id='resItemNoE'">Issuing Company Item No. (English)</xsl:if>
			<xsl:if test="$id='resItemNoL'">Issuing Company Item No. (Mother tongue)</xsl:if>
			<xsl:if test="$id='resMail'">Issuing E-Mail</xsl:if>
			<xsl:if test="$id='resposer'">Issuing</xsl:if>
			<xsl:if test="$id='resRemarks'">Issuing Remarks</xsl:if>
			<xsl:if test="$id='resTel'">Issuing TEL</xsl:if>
			<xsl:if test="$id='rev'">Rev. History</xsl:if>
			<xsl:if test="$id='revDate'">Date Of Latest Rev.</xsl:if>
			<xsl:if test="$id='revNo'">Issued or revised</xsl:if>
			<xsl:if test="$id='series'">Product Series Name</xsl:if>
			<xsl:if test="$id='standerd'">Public Standard</xsl:if>
			<xsl:if test="$id='subsList'">Substance List Ver.</xsl:if>
			<xsl:if test="$id='symbol'">Classification No.</xsl:if>
			<xsl:if test="$id='tel'">TEL</xsl:if>
			<xsl:if test="$id='unit'">Unit</xsl:if>
			<xsl:if test="$id='use'">Use</xsl:if>
			<xsl:if test="$id='collect'">Collectivising</xsl:if>
			<xsl:if test="$id='explanation'">Explanation</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='KS'">层</xsl:if>
			<xsl:if test="$id='BH'">零部件</xsl:if>
			<xsl:if test="$id='ZR'">材质</xsl:if>
			<xsl:if test="$id='BS'">报告物质</xsl:if>
			<xsl:if test="$id='HR'">适用法令等</xsl:if>
			<xsl:if test="$id='MsHR'">管理对象物质</xsl:if>
			<xsl:if test="$id='MsBS'">管理对象标准</xsl:if>
			<xsl:if test="$id='AIS1'">与AIS相关的信息</xsl:if>
			<xsl:if test="$id='AIS6'">物品信息</xsl:if>
			<xsl:if test="$id='AIS7'">共有信息</xsl:if>
			<xsl:if test="$id='JAMP2'">发行商公司信息</xsl:if>
			<xsl:if test="$id='JAMP3'">发行/制作 部门信息</xsl:if>
			<xsl:if test="$id='JAMP4'">委托方信息</xsl:if>
			<xsl:if test="$id='JAMP5'">型号信息</xsl:if>
			<xsl:if test="$id='MS1'">与MSDSplus相关的信息</xsl:if>
			<xsl:if test="$id='MS6'">产品信息</xsl:if>
			<xsl:if test="$id='MS7'">法律等等 颁布/修订 号码</xsl:if>
			<xsl:if test="$id='addittion'">追加信息</xsl:if>
			<xsl:if test="$id='adr'">地址</xsl:if>
			<xsl:if test="$id='cls'">适用</xsl:if>
			<xsl:if test="$id='co'">公司名称</xsl:if>
			<xsl:if test="$id='coE'">公司名称(英)</xsl:if>
			<xsl:if test="$id='coID'">公司 ID</xsl:if>
			<xsl:if test="$id='coL'">公司名称(母)</xsl:if>
			<xsl:if test="$id='contact'">负责人姓名</xsl:if>
			<xsl:if test="$id='contain'">关于构成成分信息</xsl:if>
			<xsl:if test="$id='div'">部门名</xsl:if>
			<xsl:if test="$id='docNo'">表整理编号</xsl:if>
			<xsl:if test="$id='docType'">文件类型</xsl:if>
			<xsl:if test="$id='format'">使用格式</xsl:if>
			<xsl:if test="$id='GPID'">GP表ID</xsl:if>
			<xsl:if test="$id='include'">引用文献等</xsl:if>
			<xsl:if test="$id='itemName'">产品名称</xsl:if>
			<xsl:if test="$id='item'">产品编号</xsl:if>
			<xsl:if test="$id='itemE'">产品编号(英)</xsl:if>
			<xsl:if test="$id='itemL'">产品编号(母)</xsl:if>
			<xsl:if test="$id='commonName'">一般商品名称</xsl:if>
			<xsl:if test="$id='lang'">语言</xsl:if>
			<xsl:if test="$id='lv'">级</xsl:if>
			<xsl:if test="$id='makeCo'">制造商公司名称</xsl:if>
			<xsl:if test="$id='makeDate'">首次发行日期</xsl:if>
			<xsl:if test="$id='makeDiv'">制作:部门名称</xsl:if>
			<xsl:if test="$id='makeTel'">制作:TEL</xsl:if>
			<xsl:if test="$id='mass'">质量</xsl:if>
			<xsl:if test="$id='matList'">材质目录版本</xsl:if>
			<xsl:if test="$id='maxrate'">最大含有率</xsl:if>
			<xsl:if test="$id='name'">名称</xsl:if>
			<xsl:if test="$id='orgID'">登录机构ID</xsl:if>
			<xsl:if test="$id='qua'">个数</xsl:if>
			<xsl:if test="$id='rate'">含有率</xsl:if>
			<xsl:if test="$id='remarks'">备注</xsl:if>
			<xsl:if test="$id='remarks1'">备注 1</xsl:if>
			<xsl:if test="$id='remarks2'">备注 2</xsl:if>
			<xsl:if test="$id='remarks3'">备注 3</xsl:if>
			<xsl:if test="$id='requester'">委托方</xsl:if>
			<xsl:if test="$id='resAdr'">发行商:地址</xsl:if>
			<xsl:if test="$id='resDate'">提交日期</xsl:if>
			<xsl:if test="$id='resDiv'">发行商:部门名</xsl:if>
			<xsl:if test="$id='resFax'">发行商:FAX</xsl:if>
			<xsl:if test="$id='resItemNo'">发行商型号</xsl:if>
			<xsl:if test="$id='resItemNoE'">发行商型号(英)</xsl:if>
			<xsl:if test="$id='resItemNoL'">发行商型号(母)</xsl:if>
			<xsl:if test="$id='resMail'">发行商:E-Mail</xsl:if>
			<xsl:if test="$id='resposer'">发行商</xsl:if>
			<xsl:if test="$id='resRemarks'">追加信息</xsl:if>
			<xsl:if test="$id='resTel'">发行商:TEL</xsl:if>
			<xsl:if test="$id='rev'">修订号码</xsl:if>
			<xsl:if test="$id='revDate'">最后一版发行日期</xsl:if>
			<xsl:if test="$id='revNo'">制定·修订</xsl:if>
			<xsl:if test="$id='series'">系列品名</xsl:if>
			<xsl:if test="$id='standerd'">官方标准</xsl:if>
			<xsl:if test="$id='subsList'">物质目录版本</xsl:if>
			<xsl:if test="$id='symbol'">分类记号</xsl:if>
			<xsl:if test="$id='tel'">TEL</xsl:if>
			<xsl:if test="$id='unit'">单位</xsl:if>
			<xsl:if test="$id='use'">用途</xsl:if>
			<xsl:if test="$id='collect'">集合化</xsl:if>
			<xsl:if test="$id='explanation'">豁免</xsl:if>
		</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		集合化
##########################################################################################-->
	<xsl:template name="getKJE176">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='0'">無し</xsl:if>
			<xsl:if test="$id='1'">複合化</xsl:if>
			<xsl:if test="$id='2'">単純化</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='0'">None</xsl:if>
			<xsl:if test="$id='1'">Decryption</xsl:if>
			<xsl:if test="$id='2'">Simplification</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='0'">没有</xsl:if>
			<xsl:if test="$id='1'">复合化</xsl:if>
			<xsl:if test="$id='2'">単纯化</xsl:if>
		</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		報告単位
##########################################################################################-->
	<xsl:template name="getKJE177">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='PC'">個</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='PC'">piece</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='PC'">件</xsl:if>
		</xsl:if>
		<xsl:if test="$id='MTR'">m</xsl:if>
		<xsl:if test="$id='MTK'">m2</xsl:if>
		<xsl:if test="$id='MTQ'">m3</xsl:if>
		<xsl:if test="$id='CMT'">cm</xsl:if>
		<xsl:if test="$id='CMK'">cm2</xsl:if>
		<xsl:if test="$id='CMQ'">cm3</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		対象法令	KJE178 KJE179 KJE267 KJE268 KJE269
##########################################################################################-->
	<xsl:template name="getCoveredRow">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='0'">対象としない</xsl:if>
			<xsl:if test="$id='1'">対象とする</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='0'">NOT Covers Scope</xsl:if>
			<xsl:if test="$id='1'">Covers Scope</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='0'">不以为对象</xsl:if>
			<xsl:if test="$id='1'">以为对象</xsl:if>
		</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		含有判定	KJE180 KJE270
##########################################################################################-->
	<xsl:template name="getContained">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='0'">含有無し</xsl:if>
			<xsl:if test="$id='1'">含有あり</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='0'">NOT Contained</xsl:if>
			<xsl:if test="$id='1'">Contained</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='0'">不包含</xsl:if>
			<xsl:if test="$id='1'">包含</xsl:if>
		</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		材質用途取得関数
##########################################################################################-->
	<xsl:template name="getMatUse">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja' or lang=''">
			<xsl:if test="$id='1'">1.母材</xsl:if>
			<xsl:if test="$id='2'">2.被覆</xsl:if>
			<xsl:if test="$id='3'">3.付着剤</xsl:if>
			<xsl:if test="$id='4'">4.内包剤(運転用調剤などに適用)</xsl:if>
			<xsl:if test="$id='5'">5.はんだ接合</xsl:if>
			<xsl:if test="$id='6'">6.(表面処理系)めっき</xsl:if>
			<xsl:if test="$id='7'">7.(表面処理系)化成処理</xsl:if>
			<xsl:if test="$id='8'">8.(表面処理系)溶射</xsl:if>
			<xsl:if test="$id='9'">9.(表面処理系)PVD処理</xsl:if>
			<xsl:if test="$id='10'">10.(表面処理系)CVD処理</xsl:if>
			<xsl:if test="$id='11'">11.(表面処理系)塗装</xsl:if>
			<xsl:if test="$id='12'">12.(表面処理系)マーキング</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='1'">1.base material</xsl:if>
			<xsl:if test="$id='2'">2.clad</xsl:if>
			<xsl:if test="$id='3'">3.attached agent</xsl:if>
			<xsl:if test="$id='4'">4.inner preparations</xsl:if>
			<xsl:if test="$id='5'">5.solder joint</xsl:if>
			<xsl:if test="$id='6'">6.plating</xsl:if>
			<xsl:if test="$id='7'">7.chemical conversion treatment</xsl:if>
			<xsl:if test="$id='8'">8.flame spray coating</xsl:if>
			<xsl:if test="$id='9'">9.PVD(Physical Vapor Deposition)</xsl:if>
			<xsl:if test="$id='10'">10.CVD(Chemical Vapor Deposition)</xsl:if>
			<xsl:if test="$id='11'">11.painting</xsl:if>
			<xsl:if test="$id='12'">12.marking</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='1'">1.母材</xsl:if>
			<xsl:if test="$id='2'">2.包覆</xsl:if>
			<xsl:if test="$id='3'">3.附着剤</xsl:if>
			<xsl:if test="$id='4'">4.包含剂(适用于运转用配制品)</xsl:if>
			<xsl:if test="$id='5'">5.焊点</xsl:if>
			<xsl:if test="$id='6'">6.(表面处理)电镀</xsl:if>
			<xsl:if test="$id='7'">7.(表面处理)化学合成处理</xsl:if>
			<xsl:if test="$id='8'">8.(表面处理)喷镀</xsl:if>
			<xsl:if test="$id='9'">9.(表面处理)PVD处理(物的蒸镀)</xsl:if>
			<xsl:if test="$id='10'">10.(表面处理)CVD处理(化学的蒸镀)</xsl:if>
			<xsl:if test="$id='11'">11.(表面处理)涂装</xsl:if>
			<xsl:if test="$id='12'">12.(表面处理)标印</xsl:if>
		</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		材質区分取得関数
##########################################################################################-->
	<xsl:template name="getMatCLass">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja' or $lang=''">
			<xsl:if test="$id='R111'">高合金鋼</xsl:if>
			<xsl:if test="$id='R112'">高合金鋳鉄</xsl:if>
			<xsl:if test="$id='R101'">鉄鋼/鋳鋼/焼結合金</xsl:if>
			<xsl:if test="$id='R102'">非合金、低合金鋼</xsl:if>
			<xsl:if test="$id='R103'">鋳鉄</xsl:if>
			<xsl:if test="$id='R104'">片状黒鉛鋳鉄/可鍛鋳鉄</xsl:if>
			<xsl:if test="$id='R105'">球状黒鉛鋳鉄/バーミキュラー鋳鉄</xsl:if>
			<xsl:if test="$id='R211'">鋳造アルミニウム合金</xsl:if>
			<xsl:if test="$id='R212'">鍛造アルミニウム合金</xsl:if>
			<xsl:if test="$id='R221'">鋳造マグネシウム合金</xsl:if>
			<xsl:if test="$id='R222'">鍛造マグネシウム合金</xsl:if>
			<xsl:if test="$id='R311'">銅(例,ケーブルハーネスの銅)</xsl:if>
			<xsl:if test="$id='R312'">銅合金</xsl:if>
			<xsl:if test="$id='R330'">亜鉛合金</xsl:if>
			<xsl:if test="$id='R340'">ニッケル合金</xsl:if>
			<xsl:if test="$id='R350'">鉛、鉛合金</xsl:if>
			<xsl:if test="$id='R351'">含鉛はんだ</xsl:if>
			<xsl:if test="$id='R361'">非鉛はんだ</xsl:if>
			<xsl:if test="$id='V421'">特殊金属(金)</xsl:if>
			<xsl:if test="$id='V411'">特殊金属(白金、ロジウム)</xsl:if>
			<xsl:if test="$id='V412'">その他の特殊金属(銀、パラジウム等)</xsl:if>
			<xsl:if test="$id='P398'">チタン、チタン合金</xsl:if>
			<xsl:if test="$id='P399'">その他の非鉄金属</xsl:if>
			<xsl:if test="$id='N720'">セラミック</xsl:if>
			<xsl:if test="$id='N721'">ガラス</xsl:if>
			<xsl:if test="$id='N498'">その他無機化合物</xsl:if>
			<xsl:if test="$id='N499'">フィラー(充填材)を含有する熱可塑性樹脂</xsl:if>
			<xsl:if test="$id='P511'">PE</xsl:if>
			<xsl:if test="$id='P512'">PP</xsl:if>
			<xsl:if test="$id='P513'">PS</xsl:if>
			<xsl:if test="$id='P514'">PVC</xsl:if>
			<xsl:if test="$id='P515'">PC</xsl:if>
			<xsl:if test="$id='P516'">POM</xsl:if>
			<xsl:if test="$id='P517'">A(B)S</xsl:if>
			<xsl:if test="$id='P518'">PA</xsl:if>
			<xsl:if test="$id='P519'">PET</xsl:if>
			<xsl:if test="$id='P520'">PPE</xsl:if>
			<xsl:if test="$id='P528'">熱可塑性エラストマ</xsl:if>
			<xsl:if test="$id='P529'">その他の熱可塑性樹脂</xsl:if>
			<xsl:if test="$id='N541'">ポリウレタン</xsl:if>
			<xsl:if test="$id='N542'">不飽和ポリエステル</xsl:if>
			<xsl:if test="$id='N551'">エポキシ樹脂</xsl:if>
			<xsl:if test="$id='N543'">その他の硬化性樹脂</xsl:if>
			<xsl:if test="$id='N544'">(熱可塑でない)エラストマー/エラストマー複合</xsl:if>
			<xsl:if test="$id='N545'">高分子複合材</xsl:if>
			<xsl:if test="$id='N546'">高分子複合材に含まれる樹脂</xsl:if>
			<xsl:if test="$id='N547'">高分子複合材に含まれる繊維</xsl:if>
			<xsl:if test="$id='N711'">木材</xsl:if>
			<xsl:if test="$id='N712'">紙</xsl:if>
			<xsl:if test="$id='N713'">繊維</xsl:if>
			<xsl:if test="$id='N714'">皮革</xsl:if>
			<xsl:if test="$id='N950'">冷媒</xsl:if>
			<xsl:if test="$id='N900'">潤滑剤、ブレーキフルード、他</xsl:if>
			<xsl:if test="$id='N999'">その他材料(粉体ほか)</xsl:if>
			<xsl:if test="$id='S001'">亜鉛めっき</xsl:if>
			<xsl:if test="$id='S002'">ニッケルめっき</xsl:if>
			<xsl:if test="$id='S003'">アルミニウムめっき</xsl:if>
			<xsl:if test="$id='S004'">銅めっき</xsl:if>
			<xsl:if test="$id='S005'">スズめっき</xsl:if>
			<xsl:if test="$id='S006'">クロムめっき</xsl:if>
			<xsl:if test="$id='S007'">コバルトめっき</xsl:if>
			<xsl:if test="$id='S008'">金めっき</xsl:if>
			<xsl:if test="$id='S009'">白金めっき</xsl:if>
			<xsl:if test="$id='S010'">パラジウムめっき</xsl:if>
			<xsl:if test="$id='S011'">ロジウムめっき</xsl:if>
			<xsl:if test="$id='S012'">銀めっき</xsl:if>
			<xsl:if test="$id='S013'">カドミウムめっき</xsl:if>
			<xsl:if test="$id='S101'">亜鉛溶射</xsl:if>
			<xsl:if test="$id='S102'">アルミニウム溶射</xsl:if>
			<xsl:if test="$id='S103'">肉盛溶射</xsl:if>
			<xsl:if test="$id='S104'">コバルト自溶合金溶射</xsl:if>
			<xsl:if test="$id='S105'">タングステンカーバイト自溶合金溶射</xsl:if>
			<xsl:if test="$id='S106'">酸化アルミニウム溶射</xsl:if>
			<xsl:if test="$id='S107'">酸化クロム溶射</xsl:if>
			<xsl:if test="$id='S108'">スピネル溶射</xsl:if>
			<xsl:if test="$id='S109'">酸化ジルコニウム溶射</xsl:if>
			<xsl:if test="$id='S110'">炭化タングステン・コバルト溶射</xsl:if>
			<xsl:if test="$id='S111'">炭化クロム・ニッケル溶射</xsl:if>
			<xsl:if test="$id='S201'">クロメート被膜・6価クロム処理</xsl:if>
			<xsl:if test="$id='S202'">3価クロメート処理</xsl:if>
			<xsl:if test="$id='S203'">クロムフリー処理</xsl:if>
			<xsl:if test="$id='S204'">ジオメット処理(ノンクロム)処理</xsl:if>
			<xsl:if test="$id='S205'">シュウ酸ボンデ処理</xsl:if>
			<xsl:if test="$id='S206'">ZAY コート処理</xsl:if>
			<xsl:if test="$id='S207'">アルマイト処理</xsl:if>
			<xsl:if test="$id='S208'">アルマイト塗装処理</xsl:if>
			<xsl:if test="$id='S209'">マグネシウム防食処理</xsl:if>
			<xsl:if test="$id='S210'">アルミニウム防食処理 </xsl:if>
			<xsl:if test="$id='S211'">黒染め(四三酸化鉄)処理</xsl:if>
			<xsl:if test="$id='S212'">リン酸処理</xsl:if>
			<xsl:if test="$id='S301'">CrN コーティング</xsl:if>
			<xsl:if test="$id='S302'">DLC コーティング</xsl:if>
			<xsl:if test="$id='S303'">TiN コーティング</xsl:if>
			<xsl:if test="$id='S304'">金蒸着(スパッタを含む)</xsl:if>
			<xsl:if test="$id='S305'">金以外の貴金属・希少金属蒸着(スパッタを含む)</xsl:if>
			<xsl:if test="$id='S306'">その他無機化合物のコーティング</xsl:if>
			<xsl:if test="$id='S401'">塗膜樹脂</xsl:if>
			<xsl:if test="$id='S402'">ダクロ処理</xsl:if>
			<xsl:if test="$id='S403'">コーティング(セラミックス)</xsl:if>
			<xsl:if test="$id='S404'">コーティング(ガラス)</xsl:if>
			<xsl:if test="$id='S405'">コーティング(他の複合材)</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='R111'">highly alloyed steel</xsl:if>
			<xsl:if test="$id='R112'">Highly alloyed cast iron</xsl:if>
			<xsl:if test="$id='R101'">Steels/cast steel/sintered steel</xsl:if>
			<xsl:if test="$id='R102'">unalloyed, low alloyed steel</xsl:if>
			<xsl:if test="$id='R103'">Cast iron</xsl:if>
			<xsl:if test="$id='R104'">Cast iron with lamellar graphite / tempered cast iron</xsl:if>
			<xsl:if test="$id='R105'">Cast iron with nodular graphite / vermicular cast iron</xsl:if>
			<xsl:if test="$id='R211'">Cast aluminium alloys</xsl:if>
			<xsl:if test="$id='R212'">Wrought aluminium alloys</xsl:if>
			<xsl:if test="$id='R221'">Cast magnesium alloys</xsl:if>
			<xsl:if test="$id='R222'">Wrought magnesium alloys</xsl:if>
			<xsl:if test="$id='R311'">Copper (e.g. copper amounts in cable harnesses)</xsl:if>
			<xsl:if test="$id='R312'">Copper alloys</xsl:if>
			<xsl:if test="$id='R330'">Zinc and Zinc alloys</xsl:if>
			<xsl:if test="$id='R340'">Nickel and Nickel alloys</xsl:if>
			<xsl:if test="$id='R350'">Lead and Lead alloys</xsl:if>
			<xsl:if test="$id='R351'">Sn-Pb solder</xsl:if>
			<xsl:if test="$id='R361'">Lead-free solder</xsl:if>
			<xsl:if test="$id='V421'">Gold</xsl:if>
			<xsl:if test="$id='V411'">Platinum / rhodium</xsl:if>
			<xsl:if test="$id='V412'">Other special metals</xsl:if>
			<xsl:if test="$id='P398'">Titanium and titanium alloys</xsl:if>
			<xsl:if test="$id='P399'">Other nonferrous metals</xsl:if>
			<xsl:if test="$id='N720'">Ceramics</xsl:if>
			<xsl:if test="$id='N721'">Glass</xsl:if>
			<xsl:if test="$id='N498'">Other inorganic metals</xsl:if>
			<xsl:if test="$id='N499'">filled Thermoplastics</xsl:if>
			<xsl:if test="$id='P511'">PE (Polyethylene)</xsl:if>
			<xsl:if test="$id='P512'">PP (Polypropylene)</xsl:if>
			<xsl:if test="$id='P513'">PS (Polystyrene)</xsl:if>
			<xsl:if test="$id='P514'">PVC (Poly(vinyl chloride))</xsl:if>
			<xsl:if test="$id='P515'">PC (Polycarbonate)</xsl:if>
			<xsl:if test="$id='P516'">POM (Polyacetal)</xsl:if>
			<xsl:if test="$id='P517'">A(B)S Poly(acrylonitrile (-butadiene)-styrene)</xsl:if>
			<xsl:if test="$id='P518'">PA (Polyamide)</xsl:if>
			<xsl:if test="$id='P519'">PET (Poly(ethylene terephthalate) )</xsl:if>
			<xsl:if test="$id='P520'">PPE ((Modified) polyphenylene ether)</xsl:if>
			<xsl:if test="$id='P528'">Thermoplastic elastomer</xsl:if>
			<xsl:if test="$id='P529'">Other thermoplastics</xsl:if>
			<xsl:if test="$id='N541'">PUR (Polyurethane)</xsl:if>
			<xsl:if test="$id='N542'">UP (Unsaturated polyester)</xsl:if>
			<xsl:if test="$id='N551'">EP (Epoxy resin)</xsl:if>
			<xsl:if test="$id='N543'">Others (Cured resin or duromers)</xsl:if>
			<xsl:if test="$id='N544'">Others (Rubber/non-thermoplastic Elastomer)</xsl:if>
			<xsl:if test="$id='N545'">Polymeric compounds</xsl:if>
			<xsl:if test="$id='N546'">Plastics (in polymeric compounds)</xsl:if>
			<xsl:if test="$id='N547'">Textiles (in polymeric compounds)</xsl:if>
			<xsl:if test="$id='N711'">Wood</xsl:if>
			<xsl:if test="$id='N712'">Paper</xsl:if>
			<xsl:if test="$id='N713'">Fiber</xsl:if>
			<xsl:if test="$id='N714'">Leather</xsl:if>
			<xsl:if test="$id='N950'">Refrigerant</xsl:if>
			<xsl:if test="$id='N900'">Lubricants,Brake fluid, etc</xsl:if>
			<xsl:if test="$id='N999'">Others (Powder,etc)</xsl:if>
			<xsl:if test="$id='S001'">Zinc plating</xsl:if>
			<xsl:if test="$id='S002'">Nickel plating</xsl:if>
			<xsl:if test="$id='S003'">Aluminum plating</xsl:if>
			<xsl:if test="$id='S004'">Copper plating</xsl:if>
			<xsl:if test="$id='S005'">Tin plating</xsl:if>
			<xsl:if test="$id='S006'">Chromium plating</xsl:if>
			<xsl:if test="$id='S007'">Cobalt plating</xsl:if>
			<xsl:if test="$id='S008'">Gold plating</xsl:if>
			<xsl:if test="$id='S009'">Platinum plating</xsl:if>
			<xsl:if test="$id='S010'">Paradium plating</xsl:if>
			<xsl:if test="$id='S011'">Rhodium plating</xsl:if>
			<xsl:if test="$id='S012'">Silver plating</xsl:if>
			<xsl:if test="$id='S013'">Cadmium plating</xsl:if>
			<xsl:if test="$id='S101'">Zinc spray coating</xsl:if>
			<xsl:if test="$id='S102'">Aluminum spray coating</xsl:if>
			<xsl:if test="$id='S103'">Build-up thermal spraying</xsl:if>
			<xsl:if test="$id='S104'">Thermal spraying of self-fluxing alloy SFCo</xsl:if>
			<xsl:if test="$id='S105'">Thermal spraying of self-fluxing alloy SFWC</xsl:if>
			<xsl:if test="$id='S106'">Ceramic sprayed Coatings P-AO</xsl:if>
			<xsl:if test="$id='S107'">Ceramic sprayed Coatings P-CrO</xsl:if>
			<xsl:if test="$id='S108'">Ceramic sprayed Coatings P-AO-MgO</xsl:if>
			<xsl:if test="$id='S109'">Ceramic sprayed Coatings P-ZrO</xsl:if>
			<xsl:if test="$id='S110'">Cermet thermal spraying C-WC-Co</xsl:if>
			<xsl:if test="$id='S111'">Cermet thermal spraying C-CrC-Ni-Cr</xsl:if>
			<xsl:if test="$id='S201'">Hexavalent chromate film</xsl:if>
			<xsl:if test="$id='S202'">Trivalent Chromium Passivation</xsl:if>
			<xsl:if test="$id='S203'">Chromium-free Passivation</xsl:if>
			<xsl:if test="$id='S204'">GEOMET Coating</xsl:if>
			<xsl:if test="$id='S205'">BONDE Coating (Oxalic)</xsl:if>
			<xsl:if test="$id='S206'">ZAY Coating</xsl:if>
			<xsl:if test="$id='S207'">Anodic Oxidation Coatings</xsl:if>
			<xsl:if test="$id='S208'">Combined coatings of anodic oxide and organic coatings</xsl:if>
			<xsl:if test="$id='S209'">Corrosion protection of magnesium alloys</xsl:if>
			<xsl:if test="$id='S210'">Corrosion protection of aluminium alloys</xsl:if>
			<xsl:if test="$id='S211'">Black Oxide Coatings</xsl:if>
			<xsl:if test="$id='S212'">Phosphate Coatings</xsl:if>
			<xsl:if test="$id='S301'">CrN Coatings</xsl:if>
			<xsl:if test="$id='S302'">DLC Coatings</xsl:if>
			<xsl:if test="$id='S303'">TiN Coatings</xsl:if>
			<xsl:if test="$id='S304'">Gold vapor deposition film(Icd.Sputtering)</xsl:if>
			<xsl:if test="$id='S305'">Vapor deposition film(Icd.Sputtering) of other noble or rare metals</xsl:if>
			<xsl:if test="$id='S306'">Other film coating of inorganic compounds</xsl:if>
			<xsl:if test="$id='S401'">Painted resin</xsl:if>
			<xsl:if test="$id='S402'">Non electrolytically applied zinc flake coatings (Dacrotizing)</xsl:if>
			<xsl:if test="$id='S403'">Coating (ceramics)</xsl:if>
			<xsl:if test="$id='S404'">Coating (glass)</xsl:if>
			<xsl:if test="$id='S405'">Coating (Other compounds)</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='R111'">高合金钢</xsl:if>
			<xsl:if test="$id='R112'">高合金铸铁</xsl:if>
			<xsl:if test="$id='R101'">钢铁/铸钢/烧结合金</xsl:if>
			<xsl:if test="$id='R102'">非合金，低合金钢</xsl:if>
			<xsl:if test="$id='R103'">铸铁</xsl:if>
			<xsl:if test="$id='R104'">片状石墨铸铁/可锻铸铁</xsl:if>
			<xsl:if test="$id='R105'">球状石墨铸铁/蠕墨铸铁</xsl:if>
			<xsl:if test="$id='R211'">铸造铝合金</xsl:if>
			<xsl:if test="$id='R212'">锻造铝合金</xsl:if>
			<xsl:if test="$id='R221'">铸造镁合金</xsl:if>
			<xsl:if test="$id='R222'">锻造镁合金</xsl:if>
			<xsl:if test="$id='R311'">纯铜 (例：线缆的铜)</xsl:if>
			<xsl:if test="$id='R312'">铜合金</xsl:if>
			<xsl:if test="$id='R330'">锌合金</xsl:if>
			<xsl:if test="$id='R340'">镍合金</xsl:if>
			<xsl:if test="$id='R350'">铅、铅合金</xsl:if>
			<xsl:if test="$id='R351'">有铅焊锡</xsl:if>
			<xsl:if test="$id='R361'">无铅焊锡</xsl:if>
			<xsl:if test="$id='V421'">特殊金属 (金)</xsl:if>
			<xsl:if test="$id='V411'">特殊金属 (铂、铑) </xsl:if>
			<xsl:if test="$id='V412'">其他特殊金属(银、钯)</xsl:if>
			<xsl:if test="$id='P398'">钛、钛合金</xsl:if>
			<xsl:if test="$id='P399'">其他有色金属</xsl:if>
			<xsl:if test="$id='N720'">陶瓷</xsl:if>
			<xsl:if test="$id='N721'">玻璃</xsl:if>
			<xsl:if test="$id='N498'">其它无机化合物</xsl:if>
			<xsl:if test="$id='N499'">含有填料带(填料)的热可塑树脂</xsl:if>
			<xsl:if test="$id='P511'">聚乙烯(PE)</xsl:if>
			<xsl:if test="$id='P512'">聚丙烯 (PP)</xsl:if>
			<xsl:if test="$id='P513'">聚苯乙烯 (PS)</xsl:if>
			<xsl:if test="$id='P514'">聚氯乙烯 (PVC)</xsl:if>
			<xsl:if test="$id='P515'">聚碳酸酯 (PC)</xsl:if>
			<xsl:if test="$id='P516'">聚缩醛 (POM)</xsl:if>
			<xsl:if test="$id='P517'">丙烯腈丁二烯苯乙烯树脂 (ABS)</xsl:if>
			<xsl:if test="$id='P518'">聚酰胺 (PA)</xsl:if>
			<xsl:if test="$id='P519'">聚对苯二甲酸乙二醇酯 (PET)</xsl:if>
			<xsl:if test="$id='P520'">聚苯醚 (PPE)</xsl:if>
			<xsl:if test="$id='P528'">热塑性弹性体</xsl:if>
			<xsl:if test="$id='P529'">其他热塑性树脂</xsl:if>
			<xsl:if test="$id='N541'">聚氨酯 (PUR)</xsl:if>
			<xsl:if test="$id='N542'">不饱和聚酯 (UP)</xsl:if>
			<xsl:if test="$id='N551'">环氧树脂 (EP)</xsl:if>
			<xsl:if test="$id='N543'">其他固性树脂</xsl:if>
			<xsl:if test="$id='N544'">(非热塑性)其他橡胶、弹性体</xsl:if>
			<xsl:if test="$id='N545'">高分子复合材料</xsl:if>
			<xsl:if test="$id='N546'">高分子复合材中所含树脂</xsl:if>
			<xsl:if test="$id='N547'">高分子复合材中所含纤维</xsl:if>
			<xsl:if test="$id='N711'">木材</xsl:if>
			<xsl:if test="$id='N712'">纸</xsl:if>
			<xsl:if test="$id='N713'">纤维</xsl:if>
			<xsl:if test="$id='N714'">皮革</xsl:if>
			<xsl:if test="$id='N950'">气体(制冷剂等)</xsl:if>
			<xsl:if test="$id='N900'">液体(润滑剂、制动液等)</xsl:if>
			<xsl:if test="$id='N999'">其他材料(粉末等)</xsl:if>
			<xsl:if test="$id='S001'">镀锌</xsl:if>
			<xsl:if test="$id='S002'">镀镍</xsl:if>
			<xsl:if test="$id='S003'">镀铝</xsl:if>
			<xsl:if test="$id='S004'">镀铜</xsl:if>
			<xsl:if test="$id='S005'">镀锡</xsl:if>
			<xsl:if test="$id='S006'">镀铬</xsl:if>
			<xsl:if test="$id='S007'">镀钴</xsl:if>
			<xsl:if test="$id='S008'">镀金</xsl:if>
			<xsl:if test="$id='S009'">镀铂</xsl:if>
			<xsl:if test="$id='S010'">镀钯</xsl:if>
			<xsl:if test="$id='S011'">镀铑</xsl:if>
			<xsl:if test="$id='S012'">镀银</xsl:if>
			<xsl:if test="$id='S013'">镀镉</xsl:if>
			<xsl:if test="$id='S101'">喷镀锌</xsl:if>
			<xsl:if test="$id='S102'">喷镀铝</xsl:if>
			<xsl:if test="$id='S103'">堆焊喷镀</xsl:if>
			<xsl:if test="$id='S104'">钴自熔性合金喷镀</xsl:if>
			<xsl:if test="$id='S105'">碳化钨自熔性合金喷镀</xsl:if>
			<xsl:if test="$id='S106'">氧化铝喷镀</xsl:if>
			<xsl:if test="$id='S107'">氧化铬喷镀</xsl:if>
			<xsl:if test="$id='S108'">尖晶石喷镀</xsl:if>
			<xsl:if test="$id='S109'">氧化锆喷镀</xsl:if>
			<xsl:if test="$id='S110'">碳化钨-钴喷镀</xsl:if>
			<xsl:if test="$id='S111'">碳化铬-镍喷镀</xsl:if>
			<xsl:if test="$id='S201'">铬酸盐膜、六价铬处理</xsl:if>
			<xsl:if test="$id='S202'">三价铬酸盐处理</xsl:if>
			<xsl:if test="$id='S203'">无铬处理</xsl:if>
			<xsl:if test="$id='S204'">GOMET(无铬)处理</xsl:if>
			<xsl:if test="$id='S205'">磷酸盐处理</xsl:if>
			<xsl:if test="$id='S206'">ZAY 涂层处理</xsl:if>
			<xsl:if test="$id='S207'">氧化铝膜处理</xsl:if>
			<xsl:if test="$id='S208'">氧化铝膜涂层处理</xsl:if>
			<xsl:if test="$id='S209'">防腐蚀处理</xsl:if>
			<xsl:if test="$id='S210'">铝防腐蚀处理</xsl:if>
			<xsl:if test="$id='S211'">发黑(四氧化三铁)处理</xsl:if>
			<xsl:if test="$id='S212'">磷酸处理</xsl:if>
			<xsl:if test="$id='S301'">CrN 涂层</xsl:if>
			<xsl:if test="$id='S302'">DLC 涂层</xsl:if>
			<xsl:if test="$id='S303'">TiN 涂层</xsl:if>
			<xsl:if test="$id='S304'">汽化镀金膜(包含喷溅)</xsl:if>
			<xsl:if test="$id='S305'">金以外的贵金属、稀金属蒸镀膜(包含喷溅)</xsl:if>
			<xsl:if test="$id='S306'">其他无机化合物的涂层</xsl:if>
			<xsl:if test="$id='S401'">涂膜树脂</xsl:if>
			<xsl:if test="$id='S402'">达克锈金属表面处理</xsl:if>
			<xsl:if test="$id='S403'">涂层(陶瓷)</xsl:if>
			<xsl:if test="$id='S404'">涂层(玻璃)</xsl:if>
			<xsl:if test="$id='S405'">涂层(其他复合材料)</xsl:if>
		</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		法令名取得関数
##########################################################################################-->
	<xsl:template name="getLawName">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		
		<xsl:if test="$id=''"></xsl:if>
		<xsl:if test="$id='EU01'">RoHS</xsl:if>
		<xsl:if test="$id='EU02'">ELV</xsl:if>
		<xsl:if test="$id='EU03'">CLP Annex VI CMR 1,2</xsl:if>
		<xsl:if test="$id='EU04'">REACH Annex XVII</xsl:if>
		<xsl:if test="$id='EU05'">SVHC</xsl:if>
		<xsl:if test="$id='EU06'">POPs Annex I</xsl:if>
		<xsl:if test="$id='IA00'">
			<xsl:if test="$lang='ja' or lang=''">任意報告物質</xsl:if>
			<xsl:if test="$lang='en'">Voluntary Declarable</xsl:if>
			<xsl:if test="$lang='zh'">自愿报告物质</xsl:if>
		</xsl:if>
		<xsl:if test="$id='IA01'">GADSL</xsl:if>
		<xsl:if test="$id='IA02'">IEC62474/JIG</xsl:if>
		<xsl:if test="$id='JP01'">
			<xsl:if test="$lang='ja'">化審法(第一種特定化学物質)</xsl:if>
			<xsl:if test="$lang='en'">Japanese Chemical Substances Control Law (Class I Specified Chemical Substances)</xsl:if>
			<xsl:if test="$lang='zh'">日本[化审法](第一种特定化学物质)</xsl:if>
		</xsl:if>
		<xsl:if test="$id='JP02'">
			<xsl:if test="$lang='ja'">安衛法(製造等禁止物質)</xsl:if>
			<xsl:if test="$lang='en'">Industrial Safety and Health Act (Substances Prohibited of Manufacturing etc.)</xsl:if>
			<xsl:if test="$lang='zh'">日本[安卫法](制造等禁止物质)</xsl:if>
		</xsl:if>
		<xsl:if test="$id='JP03'">
			<xsl:if test="$lang='ja'">毒劇法(特定毒物)</xsl:if>
			<xsl:if test="$lang='en'">Poisonous and Deleterious Substances Control Law (Specified Poisonous Substances)</xsl:if>
			<xsl:if test="$lang='zh'">日本[毒剧法](特定毒物)</xsl:if>
		</xsl:if>
		<xsl:if test="$id='OT01'">ESIS PBT</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		tree 原部品
##########################################################################################-->
	<xsl:template name="getOrigin">
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">[原部品]</xsl:if>
		<xsl:if test="$lang='en'">[Original Parts]</xsl:if>
		<xsl:if test="$lang='zh'">[原厂零件]</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		適用除外
##########################################################################################-->
	<xsl:template name="getExplanation">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja' or $lang=''">
			<!-- EU01 RoHS -->
			<xsl:if test="$id='EU010001'">適用除外なし</xsl:if>
			<xsl:if test="$id='EU010002'">閾値以下</xsl:if>
			<xsl:if test="$id='EU010101'">水銀が一本当たり5mgを超えないコンパクト蛍光ランプ</xsl:if>
			<xsl:if test="$id='EU010102'">一般用直管形蛍光ランプ(ハロリン酸塩ランプ)内の10mgを超えない水銀</xsl:if>
			<xsl:if test="$id='EU010103'">一般用直管形蛍光ランプ(通常寿命の三リン酸塩ランプ)内の5mgを超えない水銀</xsl:if>
			<xsl:if test="$id='EU010104'">一般用直管形蛍光ランプ(長寿命の三リン酸塩ランプ)内の8mgを超えない水銀</xsl:if>
			<xsl:if test="$id='EU010105'">特殊用途直管形蛍光ランプ中の水銀</xsl:if>
			<xsl:if test="$id='EU010106'">その他のランプに含まれる水銀</xsl:if>
			<xsl:if test="$id='EU010107'">CRT、電子部品、蛍光管のガラスに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010108'">鋼鉄合金に含まれる鉛で、重量比で0.35%を超えないもの</xsl:if>
			<xsl:if test="$id='EU010109'">アルミニウム合金に含まれる鉛で、重量比で0.4%を超えないもの</xsl:if>
			<xsl:if test="$id='EU010110'">銅合金に含まれる鉛であって、重量比で4%を越えないもの</xsl:if>
			<xsl:if test="$id='EU010111'">高融点はんだ内の鉛(重量比で鉛85%以上を含む鉛合金)</xsl:if>
			<xsl:if test="$id='EU010112'">サーバー、データストレージ、およびデータストレージアレイシステム、通信システムのネットワーク管理はもちろん、スイッチング、信号処理、伝送などの機器内のはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010113'">電子セラミック部品(例えば圧電素子)に含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010114'">電気的接点やめっきに含まれるカドミウム及びその化合物(EU指令&lt;76/769/EEC&gt;の修正指令&lt;91/338/EEC&gt;で禁止されている用途を除く)</xsl:if>
			<xsl:if test="$id='EU010115'">吸収型冷蔵庫の炭素鋼冷却システムの耐蝕材として用いられる六価クロム</xsl:if>
			<xsl:if test="$id='EU010116'">重合用途のデカ臭化ジフェニルエーテル(DecaBDE)</xsl:if>
			<xsl:if test="$id='EU010117'">鉛青銅製ベアリングシェル／軸受けに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010118'">コンプライアント-ピン-コネクタシステムに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010119'">熱伝導モジュールCリングのコーティング材に含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010120'">光学、フィルターガラスに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010121'">光学、フィルターガラスに含まれるカドミウム</xsl:if>
			<xsl:if test="$id='EU010122'">マイクロプロセッサーのパッケージとピンを接続するための合金はんだに含まれる鉛で重量比80%以上、85%未満の含有率となるもの</xsl:if>
			<xsl:if test="$id='EU010123'">ICフリップチップ内部のダイとキャリアとの間を電気的に接続するためのはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010124'">ケイ酸塩がコーティングされたバルブを用いる直線状白熱電球の鉛</xsl:if>
			<xsl:if test="$id='EU010125'">業務用複写用途に供する高輝度放電(HID)ランプ内の放射媒体としてのハロゲン化鉛</xsl:if>
			<xsl:if test="$id='EU010126'">BSP(BaSi2O5:Pb)等の蛍光体を含む日焼け用ランプとして、およびSMS((Sr,Ba)2MgSi2O7:Pb)等の蛍光体を含む、ジアゾ印刷複写、リソグラフィ、捕虫器、光化学、硬化処理用の専用ランプとして使用される放電ランプの蛍光体の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
			<xsl:if test="$id='EU010127'">非常にコンパクトな省エネルギーランプ(ESL)における、主アマルガムとしての特定の組成物PbBiSn-HgおよびPbInSn-Hg、ならびに補助アマルガムとしてのPbSn-Hgの鉛</xsl:if>
			<xsl:if test="$id='EU010128'">液晶ディスプレイ(LCD)に使用される平面蛍光ランプの前部および後部基板を接合するために使用されるガラスの中の酸化鉛</xsl:if>
			<xsl:if test="$id='EU010129'">ホウケイ酸ガラスへのエナメル塗布用印刷インクに含有される鉛およびカドミウム</xsl:if>
			<xsl:if test="$id='EU010130'">光ファイバー通信システムに使用されるRIGファラデー回転子に不純物として含まれるPb</xsl:if>
			<xsl:if test="$id='EU010131'">0.65nmピッチ以下のNiFeリードフレームコネクタ以外の微細ピッチコンポーネント用仕上剤の鉛。0.65nmピッチ以下で銅フレームコネクタ以外の微細ピッチコンポーネント用仕上剤の鉛</xsl:if>
			<xsl:if test="$id='EU010132'">機械加工通し穴付円盤状及び平面アレーセラミック多層コンデンサのはんだ付けに使用するはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010133'">構造体として使用するPDPおよびSEDに含まれる酸化鉛。特に前面および背面ガラス誘電体層、バス電極、ブラックストライプ、アドレス電極、バリアリブ、シールフリット、フリットリングおよびプリントペーストに含まれる酸化鉛</xsl:if>
			<xsl:if test="$id='EU010134'">ブラックライトブルー(BLB)ランプのガラス筐体に含まれる酸化鉛</xsl:if>
			<xsl:if test="$id='EU010135'">125dB SPL 以上の音響パワーレベルで数時間動作する高出力スピーカー用変換器のはんだに使用する鉛合金</xsl:if>
			<xsl:if test="$id='EU010136'">無塗装金属板およびファスナーの防食用途と2002/96/ECのカテゴリ3に属する設備(ITおよび通信設備)の電磁気インターフェースシールドに含有する6価クロム。この除外は2007年7月1日まで。</xsl:if>
			<xsl:if test="$id='EU010137'">理事会指令69/493/EECの付属書Ⅰ(カテゴリ1～4)で定義されるクリスタルガラスに含有する鉛</xsl:if>
			<xsl:if test="$id='EU010138'">100dB以上の音声出力のハイパワーラウドスピーカーに使用されるトランスデューサー中のボイスコイルに直接電気的に設置されるコンデューサーをジョイントするための電気的および機械的はんだとしてのカドミウム合金</xsl:if>
			<xsl:if test="$id='EU010139'">水銀フリーの直蛍光灯中の溶接材に含まれる鉛(液晶ディスプレイや設計または産業用照明に使用されている。)</xsl:if>
			<xsl:if test="$id='EU010140'">アルゴンおよびとクリブトン管のウィンドウアッセンブリを形成するシールフリット中の酸化鉛</xsl:if>
			<xsl:if test="$id='EU010141'">パワー変圧器の100μm以下の細い銅線のはんだ付用はんだ中の鉛</xsl:if>
			<xsl:if test="$id='EU010142'">サーメットベースのトリマーポテンシオメーター中の鉛</xsl:if>
			<xsl:if test="$id='EU010143'">専門家向けオーディオ装置に適用されるオプトカプラー用フォトレジスター中のカドミウム</xsl:if>
			<xsl:if test="$id='EU010144'">ディススプレー当たり30mgまでのDCプラズマディスプレー中にカソードスパッタリングインヒビターとして使用される水銀</xsl:if>
			<xsl:if test="$id='EU010145'">ホウ酸亜鉛ガラス体ベースの高電圧ダイオードのめっき層中の鉛</xsl:if>
			<xsl:if test="$id='EU010146'">アルミニウム結合ベリリウム酸化物に使用される厚膜ペースト中のカドミウム及びカドミウム酸化物</xsl:if>
			<xsl:if test="$id='EU010147'">ソリッドステートイルミネーションおよびディスプレイシステムに使用されるカラー変換用II-VILED(照明放射面の10μ/mm2以下のCd)中のカドミウムの2014年7月1日までの除</xsl:if>
			<xsl:if test="$id='EU010201'">一般照明用途30W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010202'">一般照明用途30W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり3.5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010203'">一般照明用途30W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり2.5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010204'">一般照明用途30W以上50W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010205'">一般照明用途30W以上50W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり3.5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010206'">一般照明用途50W以上150W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010207'">一般照明用途150W以上/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり15mgを超えない</xsl:if>
			<xsl:if test="$id='EU010208'">一般照明用途で環形または角型かつチューブの直径17mm以下/電球形およびコンパクト形(小型)蛍光ランプ中の水銀</xsl:if>
			<xsl:if test="$id='EU010209'">一般照明用途で環形または角型かつチューブの直径17mm以下/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり7mgを超えない</xsl:if>
			<xsl:if test="$id='EU010210'">特殊用途用/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010211'">3波長形蛍光体を使用した標準寿命かつランプ径9mm未満(例T2)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010212'">3波長形蛍光体を使用した標準寿命かつランプ径9mm未満(例T2)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が4mgを超えない</xsl:if>
			<xsl:if test="$id='EU010213'">3波長形蛍光体を使用した標準寿命かつランプ径9mm以上17mm以下(例T5)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010214'">3波長形蛍光体を使用した標準寿命かつランプ径9mm以上17mm以下(例T5)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が3mgを超えない</xsl:if>
			<xsl:if test="$id='EU010215'">3波長形蛍光体を使用した標準寿命かつランプ径17mm超28mm以下(例T8)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010216'">3波長形蛍光体を使用した標準寿命かつランプ径17mm超28mm以下(例T8)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が3.5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010217'">3波長形蛍光体を使用した標準寿命のランプ径28mm超(例T12)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010218'">3波長形蛍光体を使用した標準寿命のランプ径28mm超(例T12)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が3.5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010219'">3波長形蛍光体を使用した長寿命(25000時間以上)のランプ/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が8mgを超えない</xsl:if>
			<xsl:if test="$id='EU010220'">3波長形蛍光体を使用した長寿命(25000時間以上)のランプ/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010221'">ランプ径28mm超の直管蛍光ハロ燐酸ランプ(例T10およびT12)/その他の蛍光灯ランプであってランプ当たりの水銀含有量が10mgを超えない</xsl:if>
			<xsl:if test="$id='EU010222'">直管蛍光ランプ以外のハロ燐酸蛍光体を使用したランプ(径の規定なし)/その他の蛍光灯ランプであってランプ当たりの水銀含有量が15mgを超えない</xsl:if>
			<xsl:if test="$id='EU010223'">直管蛍光ランプ以外の3波長形蛍光体を使用したランプ径17mm超(例T9)/その他の蛍光灯ランプの水銀</xsl:if>
			<xsl:if test="$id='EU010224'">直管蛍光ランプ以外の3波長形蛍光体を使用したランプ径17mm超(例T9)/その他の蛍光灯ランプであってランプ当たりの水銀含有量が15mgを超えない</xsl:if>
			<xsl:if test="$id='EU010225'">その他の一般照明用途及び特殊用途(例電磁誘導灯)/その他の蛍光灯ランプの水銀</xsl:if>
			<xsl:if test="$id='EU010226'">その他の一般照明用途及び特殊用途(例電磁誘導灯)/その他の蛍光灯ランプであってランプ当たりの水銀含有量が15mgを超えない</xsl:if>
			<xsl:if test="$id='EU010227'">短尺ランプ(500mm以下)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)の水銀</xsl:if>
			<xsl:if test="$id='EU010228'">短尺ランプ(500mm以下)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)であってランプ当たりの水銀含有量が3.5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010229'">中尺ランプ(500mm超1500mm以下)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)の水銀</xsl:if>
			<xsl:if test="$id='EU010230'">中尺ランプ(500mm超1500mm以下)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)であってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='EU010231'">長尺ランプ(1500mm超)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)の水銀</xsl:if>
			<xsl:if test="$id='EU010232'">長尺ランプ(1500mm超)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)であってランプ当たりの水銀含有量が13mgを超えない</xsl:if>
			<xsl:if test="$id='EU010233'">その他の低圧放電管ランプの水銀</xsl:if>
			<xsl:if test="$id='EU010234'">その他の低圧放電管ランプであってランプ当たりの水銀含有量が15mgを超えない</xsl:if>
			<xsl:if test="$id='EU010235'">P(ランプ電力)≤155W/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='EU010236'">P(ランプ電力)≤155W/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり30mgを超えない</xsl:if>
			<xsl:if test="$id='EU010237'">155W&lt;P(ランプ電力)≤405W/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='EU010238'">155W&lt;P(ランプ電力)≤405W/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり40mgを超えない</xsl:if>
			<xsl:if test="$id='EU010239'">405W&lt;P(ランプ電力)/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='EU010240'">405W&lt;P(ランプ電力)/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり40mgを超えない</xsl:if>
			<xsl:if test="$id='EU010241'">P(ランプ電力)≤155W/その他の一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='EU010242'">P(ランプ電力)≤155W/その他の一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり25mgを超えない</xsl:if>
			<xsl:if test="$id='EU010243'">155W&lt;P(ランプ電力)≤405W/その他の一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='EU010244'">155W&lt;P(ランプ電力)≤405W/その他の一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり30mgを超えない</xsl:if>
			<xsl:if test="$id='EU010245'">P(ランプ電力)&gt;405W/その他の一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='EU010246'">P(ランプ電力)&gt;405W/その他の一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり40mgを超えない</xsl:if>
			<xsl:if test="$id='EU010247'">高圧水銀(蒸気)ランプ(HPMV)に含まれる水銀</xsl:if>
			<xsl:if test="$id='EU010248'">金属ハロゲン化物ランプ(MH)に含まれる水銀</xsl:if>
			<xsl:if test="$id='EU010249'">本付属書に特に定められていないその他の放電ランプに含まれる水銀</xsl:if>
			<xsl:if test="$id='EU010250'">CRT(ブラウン管，冷極線管)のガラスに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010251'">ガラス蛍光管であって鉛含有量が0.2wt%を超えないもの</xsl:if>
			<xsl:if test="$id='EU010252'">機械加工のために合金成分として鋼材中及び亜鉛メッキ鋼板中に含まれる0.35wt%までの鉛</xsl:if>
			<xsl:if test="$id='EU010253'">合金成分としてアルミニウムに含まれる0.4wt%までの鉛</xsl:if>
			<xsl:if test="$id='EU010254'">鉛含有量が4wt%以下の銅合金</xsl:if>
			<xsl:if test="$id='EU010255'">高融点ハンダに含まれる鉛(すなわち鉛含有率が重量で85%以上の鉛ベースの合金)</xsl:if>
			<xsl:if test="$id='EU010256'">サーバ，記憶装置，記憶アレイシステム，信号切り替え・送受信・伝送及び電気通信ネットワーク管理用のネットワーク基盤設備向けのはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010257'">コンデンサ内の誘電体セラミック以外のガラス中またはセラミック中に鉛を含む電気電子部品(例圧電素子)，もしくはガラスまたはセラミックを母材とする化合物中に鉛を含む電気電子部品</xsl:if>
			<xsl:if test="$id='EU010258'">定格電圧がAC125VまたはDC250Vまたはそれ以上のコンデンサ内の誘電体セラミック中の鉛</xsl:if>
			<xsl:if test="$id='EU010259'">定格電圧がAC125VまたはDC250V未満のコンデンサ内の誘電体セラミック中の鉛</xsl:if>
			<xsl:if test="$id='EU010260'">電気電子機器のスペアパーツとしての定格電圧がAC125VまたはDC250V未満のコンデンサ内の誘電体セラミック中の鉛</xsl:if>
			<xsl:if test="$id='EU010261'">一括投入混練コンパウンドペレット成形したサーマルカットオフに含まれるカドミウムとその化合物</xsl:if>
			<xsl:if test="$id='EU010262'">電気電子機器のスペアパーツとしての一括投入混練コンパウンドペレット成形したサーマルカットオフに含まれるカドミウムとその化合物</xsl:if>
			<xsl:if test="$id='EU010263'">電気接点中のカドミウムとその化合物</xsl:if>
			<xsl:if test="$id='EU010264'">吸収型冷蔵庫中のカーボン・スチール冷却システムの防食用として冷却ソリューション中に含まれる0.75wt%以下の六価クロム</xsl:if>
			<xsl:if test="$id='EU010265'">冷媒管用のベアリング・シェル及びブッシュに含まれる鉛・・・・暖房用，換気用，空調用及び冷凍冷蔵(HVACR)機器のコンプレッサーを含む</xsl:if>
			<xsl:if test="$id='EU010266'">2010年9月24日以前に上市された電気電子機器のスペアパーツとしてのC-プレス・コンプライアント・ピン・コネクタシステムに用いられる鉛</xsl:if>
			<xsl:if test="$id='EU010267'">C-プレス・コンプライアント・ピン以外のコネクタシステムに用いられる鉛</xsl:if>
			<xsl:if test="$id='EU010268'">2013年1月1日以前に上市された電気電子機器のスペアパーツとしてのC-プレス・コンプライアント・ピン以外のコネクタシステムに用いられる鉛</xsl:if>
			<xsl:if test="$id='EU010269'">2010年9月24日以前に上市された電気電子機器のスペアパーツとして使用される熱伝導モジュール形Cリング向けコーティング材料としての鉛</xsl:if>
			<xsl:if test="$id='EU010270'">光学機器に使われる白色ガラスに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010271'">フィルタガラスおよび反射標準物質用のガラス中に含まれるカドミウムおよび鉛</xsl:if>
			<xsl:if test="$id='EU010272'">マイクロプロセッサのピンおよびパッケージ間の接合用に用いる、2種類超の元素で構成されるはんだに含まれる鉛で、その含有量が80wt%超かつ85wt%未満のもの</xsl:if>
			<xsl:if test="$id='EU010273'">2011年1月1日以前に上市された電気電子機器のスペアパーツとしてのマイクロプロセッサのピンおよびパッケージ間の接合用に用いる、2種類超の元素で構成されるはんだに含まれる鉛で、その含有量が80wt%超かつ85wt%未満のもの</xsl:if>
			<xsl:if test="$id='EU010274'">集積回路パッケージ(フリップチップ)の内部半導体ダイおよびキャリア間における確実な電気接続に必要なはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010275'">ケイ酸塩(silicate)がコーティングされたバルブを有する直管白熱電球の鉛</xsl:if>
			<xsl:if test="$id='EU010276'">プロフェッショナル向け複写用途に使用される高輝度放電(HID)ランプ中の、放射媒体としてのハロゲン化鉛</xsl:if>
			<xsl:if test="$id='EU010277'">SMS((Sr,Ba)2MgSi2O7:Pb)等の蛍光体を含む、ジアゾ印刷複写、リソグラフィ、捕虫器、光化学、硬化処理用の専用ランプとして使用される放電ランプの蛍光体の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
			<xsl:if test="$id='EU010278'">BSP(BaSi2O5:Pb)等の蛍光体を含む日焼け用ランプとして使用される放電ランプの蛍光粉体の活性剤としての鉛(重量比1%以下)</xsl:if>
			<xsl:if test="$id='EU010279'">非常にコンパクトな省エネルギーランプ(ESL)における、主アマルガムとしての特定の組成物PbBiSn-HgおよびPbInSn-Hg、ならびに補助アマルガムとしてのPbSn-Hgの鉛</xsl:if>
			<xsl:if test="$id='EU010280'">液晶ディスプレイ(LCD)に使用される平面蛍光ランプの前部および後部基板を接合するために使用されるガラスの中の酸化鉛</xsl:if>
			<xsl:if test="$id='EU010281'">ホウケイ酸ガラスへのエナメル塗布用印刷インキに含まれる鉛およびカドミウム</xsl:if>
			<xsl:if test="$id='EU010282'">2010年9月24日以前に上市された電気電子機器のスペアパーツとして使用されるピッチが0.65mm以下での微細ピッチコンポーネントの仕上げ処理が施された部位に含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010283'">機械加工通し穴付き円盤状および平面アレーセラミック多層コンデンサへのはんだ付け用はんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010284'">構造要素に用いられる表面伝導電子エミッタ表示盤(SED)に含まれる酸化鉛。特に，シールフリット、フリットリングに含まれる酸化鉛</xsl:if>
			<xsl:if test="$id='EU010285'">ブラックライトブルー(BLB)ランプのガラス筐体に含まれる酸化鉛</xsl:if>
			<xsl:if test="$id='EU010286'">理事会指令69/493/EECの付属書I(カテゴリ1、2、3および4)で定義されているクリスタルガラスに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010287'">音圧レベル100dB(A)以上の高耐入力スピーカの変換器のボイスコイルに直付けされる導電体の電気的/機械的なはんだ接合部分のカドミウム合金</xsl:if>
			<xsl:if test="$id='EU010288'">水銀を含有しない薄型蛍光ランプ(たとえば、液晶ディスプレイや、デザイン用または工業用照明に用いられるもの)に使用されるはんだ材の中の鉛</xsl:if>
			<xsl:if test="$id='EU010289'">アルゴン・クリプトンレーザ管のウインドウ組立部品を形成するために用いられるシールフリット中の酸化鉛</xsl:if>
			<xsl:if test="$id='EU010290'">電力変圧器用の直径100ミクロン以下の細径銅線のはんだ付け用のはんだ中の鉛</xsl:if>
			<xsl:if test="$id='EU010291'">サーメット(陶性合金)を主構成要素とするトリマー電位差計構成部品中の鉛</xsl:if>
			<xsl:if test="$id='EU010292'">ホウ酸亜鉛ガラス基板上に形成する高電圧ダイオードのメッキ層中の鉛</xsl:if>
			<xsl:if test="$id='EU010293'">酸化ベリリウムと接合するアルミニウムに使われる、厚膜ペースト中のカドミウムおよび酸化カドミウム</xsl:if>
			<xsl:if test="$id='EU010294'">イルミネーションまたはディスプレイ・システム用途の色変換II-VI族化合物半導体LED(発光領域mm2あたりのカドミウム&lt;10μg)に含まれるカドミウム</xsl:if>
			<xsl:if test="$id='EU010295'">電離放射線検出器に含まれる鉛、カドミウムおよび水銀</xsl:if>
			<xsl:if test="$id='EU010296'">X線管の鉛ベアリング</xsl:if>
			<xsl:if test="$id='EU010297'">電磁放射増幅デバイス(マイクロチャンネルプレート、キャピラリプレート)に含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010298'">X線管およびイメージ増幅管のガラスフリットに含まれる鉛およびガスレーザの組み立て用および電磁放射を電子に変換する真空管用のガラスフリットバインダーに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010299'">電離放射線の防護に用いられる鉛</xsl:if>
			<xsl:if test="$id='EU010300'">X線試験物体に含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010301'">ステアリン酸鉛X線カ回折結晶</xsl:if>
			<xsl:if test="$id='EU010302'">ポータブル蛍光X線分光器に用いられるカドミウム放射性同位体センサ、検出器および電極</xsl:if>
			<xsl:if test="$id='EU010303'">イオン選択電極(pH電極のガラスを含む)に含まれる鉛とカドミウム</xsl:if>
			<xsl:if test="$id='EU010304'">電気化学酸素センサの鉛陽極</xsl:if>
			<xsl:if test="$id='EU010305'">赤外線検出器に含まれる鉛、カドミウムおよび水銀</xsl:if>
			<xsl:if test="$id='EU010306'">基準電極に含まれる水銀(塩化水銀(I)、硫化水銀、酸化水銀)</xsl:if>
			<xsl:if test="$id='EU010307'">ヘリウム-カドミウムレーザに含まれるカドミウム</xsl:if>
			<xsl:if test="$id='EU010308'">原子吸光分器のランプに含まれる鉛とカドミウム</xsl:if>
			<xsl:if test="$id='EU010309'">MRIの超伝導体および熱伝導体として用いられる合金に含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010310'">MRIおよびSQUIDの超伝導材料の金属接合に用いられる鉛とカドミウム</xsl:if>
			<xsl:if test="$id='EU010311'">カウンターウェイトに用いる鉛</xsl:if>
			<xsl:if test="$id='EU010312'">超音波トランスデューサの圧力単結晶材料に含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010313'">超音波トランスデューサの接合に用いるはんだに含まれる</xsl:if>
			<xsl:if test="$id='EU010314'">モニタリング装置および制御装置に用いる超高精密キャパシタンス／損失測定ブリッジ、高周波RFスイッチおよびリレーに含まれる水銀で、スイッチまたはリレー1個あたり20mgを超えないもの。</xsl:if>
			<xsl:if test="$id='EU010315'">ポータブル除細動器のはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010316'">波長8～14μmの赤外線を検出する高性能赤外線映像装置のはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010317'">LCoSディスプレイに含まれる鉛</xsl:if>
			<xsl:if test="$id='EU010318'">X線測定フィルタに含まれるカドミウム</xsl:if>
			<xsl:if test="$id='EU010319'">集積回路、ディスクリート半導体の部品に使われるコンデンサ向けの、ジルコン酸チタン酸鉛(PZT)をベースにした誘電セラミック材料中の鉛</xsl:if>
			<xsl:if test="$id='EU010320'">業務用オーディオ機器に使用されるアナログオプトカプラ用フォトレジスタ中のカドミウム</xsl:if>
			<!-- EU02 ELV -->
			<xsl:if test="$id='EU020001'">適用除外なし</xsl:if>
			<xsl:if test="$id='EU020002'">閾値以下</xsl:if>
			<xsl:if test="$id='EU020010'">重量で0.35wt%までの鉛を含む機械加工用のスチール及び亜鉛メッキ鋼</xsl:if>
			<xsl:if test="$id='EU020011'">重量で2wt%までの鉛を含む機械加工用のアルミ材。2005年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020012'">重量で1.5wt%までの鉛を含む機械加工用のアルミ材。2008年7月1日以前に市場投入された車両の補修部品として</xsl:if>
			<xsl:if test="$id='EU020013'">重量で0.4wt%までの鉛を含む機械加工用のアルミ材</xsl:if>
			<xsl:if test="$id='EU020014'">重量で4wt%までの鉛を含む銅合金</xsl:if>
			<xsl:if test="$id='EU020015'">ベアリングシェル及びブッシュ。2008年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020016'">エンジン、トランスミッション、エアコンコンプレッサー用途のベアリングシェル及びブッシュ。2011年7月1日以前に市場投入された車両および車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020017'">バッテリー</xsl:if>
			<xsl:if test="$id='EU020018'">バイブレーションダンパー</xsl:if>
			<xsl:if test="$id='EU020019'">ブレーキホース、燃料ホース、エアベンチチューブ、車体のエラストマー/金属部品、エンジンマウントのエラストマーの加硫剤および安定剤中の鉛。2005年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020020'">ブレーキホース、燃料ホース、エアベンチチューブ、車体のエラストマー/金属部品、エンジンマウントのエラストマーの加硫剤および安定剤中に0.5%以下含まれる鉛。2006年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020021'">0.5%以下の鉛を含有する動力伝達用途のエラストマーの接着剤。2009年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020022'">電気および電子部品と電子回路基板を接続するため及びアルミ電解コンデンサ以外の部品の端子仕上げ中のはんだに含まれる鉛。2016年1月1日以前に型式認定された車両および車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020023'">電子回路基板上、またはガラス上のはんだを除く、その他の電気アプリケーション中のはんだに含まれる鉛。2011年1月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020024'">アルミ電解コンデンサの端子仕上げ中の鉛。2013年1月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020025'">マスエアーフローセンサ内のガラス上のはんだに使用する鉛。2015年1月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020026'">高融点はんだに含まれる鉛(重量で85%以上の鉛を含有する合金)。</xsl:if>
			<xsl:if test="$id='EU020027'">コンプライアント・ピン・コネクターシステムに含まれる鉛。</xsl:if>
			<xsl:if test="$id='EU020028'">集積回路パッケージ(フリップチップ)の内部半導体ダイおよびキャリア間における確実な電気的接続に必要なはんだに含まれる鉛。</xsl:if>
			<xsl:if test="$id='EU020029'">チップサイズの投影面積が少なくとも1cm2で、シリコンチップ部の公称電流密度が最小で1A/mm2のパワー半導体アッセンブリ中のヒートシンクにヒートスプレッダーを接続するためのはんだに含まれる鉛。</xsl:if>
			<xsl:if test="$id='EU020030'">合わせガラスのはんだ付けを除く、ガラス上の電気的ガラス用アプリケーションのはんだに含まれる鉛。2013年1月1日以前に型式認定された車両およびそれらの車両の補修部品。</xsl:if>
			<xsl:if test="$id='EU020031'">合わせガラスのはんだ付け用はんだに含まれる鉛。</xsl:if>
			<xsl:if test="$id='EU020032'">バルブシート。2003年7月1日以前に開発されたエンジンの補修部品</xsl:if>
			<xsl:if test="$id='EU020033'">ガラスまたはセラミック中に鉛を含んだ電子部品(バルブのガラスおよび点火プラグを除く)</xsl:if>
			<xsl:if test="$id='EU020034'">起爆剤。2006年7月1日以前に型式認定された車両とそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020035'">防食コーティング。2007年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020036'">シャーシに利用する組立ボルト及びナットの防食コーティング。2008年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020037'">キャラバンカーの吸収式冷凍機</xsl:if>
			<xsl:if test="$id='EU020038'">ヘッドランプ用のディスチャージランプ。2012年7月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020039'">計器パネルディスプレイに使用される蛍光管。2012年7月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020040'">電気車両用バッテリー。2008年12月31日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020041'">重量で0.35wt%までの鉛を含む機械加工用のスチール及び溶融亜鉛メッキ鋼部品</xsl:if>
			<xsl:if test="$id='EU020042'">重量で0.35wt%までの鉛を含む連続亜鉛メッキ鋼板。2016年1月1日以前に型式認定された車両とその補修部品として。</xsl:if>
			<xsl:if test="$id='EU020043'">重量で2wt%までの鉛を含む機械加工用のアルミ材。2005年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020044'">重量で1.5wt%までの鉛を含む機械加工用のアルミ材。2008年7月1日以前に市場投入された車両の補修部品とし</xsl:if>
			<xsl:if test="$id='EU020045'">重量で0.4wt%までの鉛を含む機械加工用のアルミ材</xsl:if>
			<xsl:if test="$id='EU020046'">重量で4wt%までの鉛を含む銅合金</xsl:if>
			<xsl:if test="$id='EU020047'">ベアリングシェル及びブッシュ。2008年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020048'">エンジン、トランスミッション、エアコンコンプレッサー用途のベアリングシェル及びブッシュ。2011年7月1日以前に市場投入された車両および車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020049'">バッテリー</xsl:if>
			<xsl:if test="$id='EU020050'">バイブレーションダンパー。2016年1月1日までに型式認定された車両とその補修部品として。</xsl:if>
			<xsl:if test="$id='EU020051'">ブレーキホース、燃料ホース、エアベンチチューブ、車体のエラストマー/金属部品、エンジンマウントのエラストマーの加硫剤および安定剤中の鉛。2005年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020052'">ブレーキホース、燃料ホース、エアベンチチューブ、車体のエラストマー/金属部品、エンジンマウントのエラストマーの加硫剤および安定剤中に0.5%以下含まれる鉛。2006年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020053'">0.5%以下の鉛を含有する動力伝達用途のエラストマーの接着剤。2009年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020054'">電気および電子部品と電子回路基板を接続するための及びアルミ電解コンデンサ以外の部品の端子仕上げ中のはんだに含まれる鉛。2016年1月1日以前に型式認定された車両および車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020055'">電子回路基板上、またはガラス上のはんだを除く、その他の電気アプリケーション中のはんだに含まれる鉛。2011年1月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020056'">アルミ電解コンデンサの端子仕上げ中の鉛。2013年1月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020057'">マスエアーフローセンサ内のガラス上のはんだに使用する鉛。2015年1月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020058'">高融点はんだに含まれる鉛(重量で85%以上の鉛を含有する合金)。</xsl:if>
			<xsl:if test="$id='EU020059'">コンプライアント・ピン・コネクターシステムに含まれる鉛。</xsl:if>
			<xsl:if test="$id='EU020060'">集積回路パッケージ(フリップチップ)の内部半導体ダイおよびキャリア間における確実な電気的接続に必要なはんだに含まれる鉛。</xsl:if>
			<xsl:if test="$id='EU020061'">チップサイズの投影面積が少なくとも1cm2で、シリコンチップ部の公称電流密度が最小で1A/mm2パワー半導体アッセンブリ中のヒートシンクにヒートスプレッダーを接続するためのはんだに含まれる鉛。</xsl:if>
			<xsl:if test="$id='EU020062'">合わせガラスのはんだ付けを除く、ガラス上の電気的ガラス用アプリケーションのはんだに含まれる鉛。2013年1月1日以前に型式認定された車両およびそれらの車両の補修部品。</xsl:if>
			<xsl:if test="$id='EU020063'">合わせガラスのはんだ付け用はんだに含まれる鉛。</xsl:if>
			<xsl:if test="$id='EU020064'">バルブシート。2003年7月1日以前に開発されたエンジンの補修部品</xsl:if>
			<xsl:if test="$id='EU020065'">ガラスまたはセラミック中、ガラスまたはセラミックマトリクスコンパウンド中、ガラス-セラミック材料中、ガラス-セラミックマトリクスコンパウンド中、に鉛を含んだ電気および電子部品。本適用除外に以下は含まない。バルブ中のガラス、点火プラグの釉薬、10(b),10(c)10(d)に示す誘電セラミック部品の材料</xsl:if>
			<xsl:if test="$id='EU020066'">ディスクリート半導体やIC中のキャパシタ用PZt誘電セラミック材料中の鉛</xsl:if>
			<xsl:if test="$id='EU020067'">定格電圧が125VAC未満あるいは250VDC未満のキャパシタ用誘電セラミック材料中の鉛。2016年1月1日以前に型式認定された車両とその補修部品。</xsl:if>
			<xsl:if test="$id='EU020068'">超音波ソナーセンサーの温度補正用のキャパシタ用誘電セラミック材料中の鉛</xsl:if>
			<xsl:if test="$id='EU020069'">起爆剤。2006年7月1日以前に型式認定された車両とそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020070'">排気熱回収によるCO2削減用途の電装品中の鉛入り熱電材料。2019年１月１日以前に型式認定された車両とそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020071'">防食コーティング。2007年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020072'">シャーシに利用する組立ボルト及びナットの防食コーティング。2008年7月1日以前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020073'">モーターキャラバンの吸収型冷蔵庫で炭素鋼冷却システムの耐蝕材として用いられる重量で0.75%wtまででかつ、環境、人、消費者の安全への負の影響を招かない六価クロム。ただし他の冷却技術の利用が実際的である場合を除く。</xsl:if>
			<xsl:if test="$id='EU020074'">ヘッドランプ用のディスチャージランプ。2012年7月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020075'">計器パネルディスプレイに使用される蛍光管。2012年7月1日以前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='EU020076'">電気車両用バッテリー。2008年12月31日以前に市場投入された車両の補修部品として。</xsl:if>
			<!-- EU04 REACH -->
			<xsl:if test="$id='EU040110'">判断できない</xsl:if>
			<xsl:if test="$id='EU040111'">一般向けで、1液および2液室温硬化型シーラント(RTV-1およびRTV-2シーラント)および接着剤(調剤および成形部位)</xsl:if>
			<xsl:if test="$id='EU040112'">一般向けで、製品塗布時に触媒としてDBT化合物を含有する塗料および塗装</xsl:if>
			<xsl:if test="$id='EU040113'">一般向けで、軟質ポリ塩化ビニル(PVC)異形品(単独または硬質PVCとの共押出のいずれも)</xsl:if>
			<xsl:if test="$id='EU040114'">一般向けで、屋外用途を意図される際に安定剤としてDBT化合物を含むPVC塗装織物</xsl:if>
			<xsl:if test="$id='EU040115'">一般向けで、屋外の雨どいや器具、屋根および壁面の被覆材</xsl:if>
			<xsl:if test="$id='EU040116'">スズ換算0.1wt%以下の含有</xsl:if>
			<xsl:if test="$id='EU040117'">該当なし</xsl:if>
			<xsl:if test="$id='EU040118'">判断できない</xsl:if>
			<xsl:if test="$id='EU040119'">肌との接触が意図される織物成形品、手袋、・肌との接触が意図される履物または履物の一部、壁および床の被覆材、育児用品、女性衛生用品、おむつ、2液室温硬化型型押しキット(RTV-2型押しキット)以外の用途</xsl:if>
			<xsl:if test="$id='EU040120'">スズ換算0.1wt%以下の含有</xsl:if>
			<xsl:if test="$id='EU040121'">該当なし</xsl:if>
			<!-- EU06 POPs -->
			<xsl:if test="$id='EU060101'">判断できない</xsl:if>
			<xsl:if test="$id='EU060102'">フォトリソグラフィー工程のためのフォトレジストまたは反射防止膜</xsl:if>
			<xsl:if test="$id='EU060103'">フィルム、紙、プリント版に塗布される写真コーティング</xsl:if>
			<xsl:if test="$id='EU060104'">非装飾的硬質クロム(VI)用ミスト防止剤</xsl:if>
			<xsl:if test="$id='EU060105'">制御された電子メッキシステムで使用される湿潤剤</xsl:if>
			<xsl:if test="$id='EU060106'">航空用油圧油</xsl:if>
			<xsl:if test="$id='EU060107'">10mg/kg(0.001重量%)未満で含有する調剤、またはPFOS濃度が0.1重量%未満である半加工品や成形品、または被覆物中に1μg/m2未満含有する繊維製品やその他の被覆物</xsl:if>
			<xsl:if test="$id='EU060108'">該当なし</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<!-- EU01 RoHS -->
			<xsl:if test="$id='EU010001'">No exemption</xsl:if>
			<xsl:if test="$id='EU010002'">Below threshold</xsl:if>
			<xsl:if test="$id='EU010101'">Mercury in compact fluorescent lamps not exceeding 5 mg per lamp</xsl:if>
			<xsl:if test="$id='EU010102'">Mercury in straight fluorescent lamps for general purposes not exceeding 10 mg in halophosphate lamps.</xsl:if>
			<xsl:if test="$id='EU010103'">Mercury in straight fluorescent lamps for general purposes not exceeding 5 mg in triphosphate lamps with a normal</xsl:if>
			<xsl:if test="$id='EU010104'">Mercury in straight fluorescent lamps for general purposes not exceeding 8 mg in triphosphate lamps with long lifetime.</xsl:if>
			<xsl:if test="$id='EU010105'">Mercury in straight fluorescent lamps for special purposes</xsl:if>
			<xsl:if test="$id='EU010106'">Mercury in other lamps not specifically mentioned in this Annex</xsl:if>
			<xsl:if test="$id='EU010107'">Lead in glass of cathode ray tubes, electronic components and fluorescent tubes</xsl:if>
			<xsl:if test="$id='EU010108'">Lead as an alloying element in steel containing up to 0.35% lead by weight</xsl:if>
			<xsl:if test="$id='EU010109'">Lead as an alloying element in aluminum containing up to 0.4% lead by weight</xsl:if>
			<xsl:if test="$id='EU010110'">Lead as an alloying element in copper containing up to 4% lead by weight</xsl:if>
			<xsl:if test="$id='EU010111'">Lead in high melting temperature type solders (i.e. lead based solder alloys containing 85% by weight or more lead)</xsl:if>
			<xsl:if test="$id='EU010112'">Lead in solders for servers, storage and storage array systems, network infrastructure equipment for switching, signaling, transmission as well as network management for telecommunications</xsl:if>
			<xsl:if test="$id='EU010113'">Lead in electronic ceramic parts (e.g. piezoelectronic</xsl:if>
			<xsl:if test="$id='EU010114'">Cadmium and its compounds in electrical contacts and cadmium plating except for applications banned under Directive 91/338/EEC amending Directive 76/769/EEC relating to restrictions on the marketing and use of certain dangerous substances and preparations</xsl:if>
			<xsl:if test="$id='EU010115'">Hexavalent chromium as an anti-corrosion of the carbon steel cooling system in absorption refrigerators.</xsl:if>
			<xsl:if test="$id='EU010116'">DecaBDE in polymeric applications</xsl:if>
			<xsl:if test="$id='EU010117'">Lead in lead-bronze bearing shells and bushes</xsl:if>
			<xsl:if test="$id='EU010118'">Lead used in compliant pin connector systems</xsl:if>
			<xsl:if test="$id='EU010119'">Lead as a coating material for a thermal conduction module c-ring.</xsl:if>
			<xsl:if test="$id='EU010120'">Lead in optical and filter glass</xsl:if>
			<xsl:if test="$id='EU010121'">Cadmium in optical and filter glass</xsl:if>
			<xsl:if test="$id='EU010122'">Lead in solders consisting of more than two elements for the connection between the pins and the package of microprocessors with a lead content of more than 80% and less than 85% by weight</xsl:if>
			<xsl:if test="$id='EU010123'">Lead in solders to complete a viable electrical connection between semiconductor die and carrier within integrated circuit Flip Chip packages</xsl:if>
			<xsl:if test="$id='EU010124'">Lead in linear incandescent lamps with silicate coated tubes.</xsl:if>
			<xsl:if test="$id='EU010125'">Lead halide as radiant agent in High Intensity Discharge (HID) lamps used for professional reprography applications.</xsl:if>
			<xsl:if test="$id='EU010126'">Lead as activator in the fluorescent powder (1% lead by weight or less) of discharge lamps when used as sun tanning lamps containing phosphors such as BSP (BaSi2O5:Pb) as well as when used as specialty lamps for diazo-printing reprography, lithography, insect traps, photochemical and curing processes containing phosphors such as SMS ((Sr,Ba)2MgSi2O7:Pb).</xsl:if>
			<xsl:if test="$id='EU010127'">Lead with PbBiSn-Hg and PbInSn-Hg in specific compositions as main amalgam and with PbSn-Hg as auxiliary amalgam in very compact Energy Saving Lamps</xsl:if>
			<xsl:if test="$id='EU010128'">Lead oxide in glass used for bonding front and rear substrates of flat fluorescent lamps used for Liquid Crystal Displays (LCD).</xsl:if>
			<xsl:if test="$id='EU010129'">Lead and cadmium in printing inks for the application of enamels on borosilicate glass.</xsl:if>
			<xsl:if test="$id='EU010130'">Lead as impurity in RIG (rare earth iron garnet) Faraday rotators used for fiber optic communications systems.</xsl:if>
			<xsl:if test="$id='EU010131'">Lead in finishes of fine pitch components other than connectors with a pitch of 0.65 mm or less with NiFe lead frames and lead in finishes of fine pitch components other than connectors with a pitch of 0.65 mm or less with copper lead frames.</xsl:if>
			<xsl:if test="$id='EU010132'">Lead in solders for the soldering to machined through hole discoidal and planar array ceramic multilayer capacitors.</xsl:if>
			<xsl:if test="$id='EU010133'">Lead oxide in plasma display panels (PDP) and surface conduction electron emitter displays (SED) used in structural elements; notably in the front and rear glass dielectric layer, the bus electrode, the black stripe, the address electrode, the barrier ribs, the seal frit and frit ring</xsl:if>
			<xsl:if test="$id='EU010134'">Lead oxide in the glass envelope of Black Light Blue (BLB) lamps.</xsl:if>
			<xsl:if test="$id='EU010135'">Lead alloys as solder for transducers used in high-powered (designated to operate for several hours at acoustic power levels of 125 dB SPL and above) loudspeakers.’</xsl:if>
			<xsl:if test="$id='EU010136'">Hexavalent chromium in corrosion preventive coatings of unpainted metal sheetings and fasteners used for corrosion protection and Electromagnetic Interference Shielding in equipment falling under category three of Directive 2002/96/EC (IT and telecommunications equipment). Exemption granted until 1 July 2007.’</xsl:if>
			<xsl:if test="$id='EU010137'">Lead bound in crystal glass as defined in Annex I (Categories 1, 2, 3 and 4) of Council Directive 69/493/EEC</xsl:if>
			<xsl:if test="$id='EU010138'">Cadmium alloys as electrical/mechanical solder joints to electrical conducers located directly on the voice coil in transducers used in high-powered loudspeaker with sound pressure levels of 100 dB (A) and more</xsl:if>
			<xsl:if test="$id='EU010139'">Lead in soldering materials in mercury free flat fluorescent lamps (which e.g. are used for liquid crystal displays , design or industrial lighting )</xsl:if>
			<xsl:if test="$id='EU010140'">Lead oxide in seal frit making windows assemblies for Argon and Krypton laser tubes )</xsl:if>
			<xsl:if test="$id='EU010141'">Lead in solders for the soldering of thin copper wires of 100 μm diameter and less in power transformers</xsl:if>
			<xsl:if test="$id='EU010142'">Lead in cermet-based trimmer potentiometer elements</xsl:if>
			<xsl:if test="$id='EU010143'">Cadmium in photoresistors for optocouplers applied in professional audio equipment until 31 December 2009</xsl:if>
			<xsl:if test="$id='EU010144'">Mercury used as a cathode sputtering inhibitor in DC plasma displays with a content up to 30 mg per display until 1 July 2010</xsl:if>
			<xsl:if test="$id='EU010145'">Lead in the plating layer of high voltage diodes on the basis of a zinc borate glass body</xsl:if>
			<xsl:if test="$id='EU010146'">Cadmium and cadmium oxide in thick film pastes used on aluminium bonded beryllium oxide</xsl:if>
			<xsl:if test="$id='EU010147'">Cadmium in colour-converting II-VI LEDs (&lt;10 μg Cd per mm 2 of light-emitting area) for use in solid state illumination or display systems until 1 July 2014</xsl:if>
			<xsl:if test="$id='EU010201'">Mercury in single capped (compact) fluorescent lamps for general lighting purposes&lt;30 W:not exceeding (per burner) 5 mg</xsl:if>
			<xsl:if test="$id='EU010202'">Mercury in single capped (compact) fluorescent lamps for general lighting purposes&lt;30 W:not exceeding (per burner) 3.5 mg</xsl:if>
			<xsl:if test="$id='EU010203'">Mercury in single capped (compact) fluorescent lamps for general lighting purposes&lt;30 W:not exceeding (per burner) 2.5 mg</xsl:if>
			<xsl:if test="$id='EU010204'">Mercury in single capped (compact) fluorescent lamps for general lighting purposes≥30 W and&lt;50 W:not exceeding (per burner) 5 mg</xsl:if>
			<xsl:if test="$id='EU010205'">Mercury in single capped (compact) fluorescent lamps for general lighting purposes≥30 W and&lt;50 W:not exceeding (per burner) 3.5 mg</xsl:if>
			<xsl:if test="$id='EU010206'">Mercury in single capped (compact) fluorescent lamps for general lighting purposes≥50 W and&lt;150 W:not exceeding (per burner) 5 mg</xsl:if>
			<xsl:if test="$id='EU010207'">Mercury in single capped (compact) fluorescent lamps for general lighting purposes≥150 W:not exceeding (per burner) 15 mg</xsl:if>
			<xsl:if test="$id='EU010208'">Mercury in single capped (compact) fluorescent lamps for general lighting purposes with circular or square structural shape and tube diameter≤17 mm</xsl:if>
			<xsl:if test="$id='EU010209'">Mercury in single capped (compact) fluorescent lamps for general lighting purposes with circular or square structural shape and tube diameter≤17 mm:not exceeding (per burner) 7 mg</xsl:if>
			<xsl:if test="$id='EU010210'">Mercury in single capped (compact) fluorescent lamps for special purposes: not exceeding (per burner) 5 mg</xsl:if>
			<xsl:if test="$id='EU010211'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter&lt;9 mm (e.g. T2) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='EU010212'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter&lt;9 mm (e.g. T2) for general lighting purposes not exceeding (per lamp): 4 mg</xsl:if>
			<xsl:if test="$id='EU010213'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter≥9 mm and≤17 mm (e.g. T5) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='EU010214'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter≥9 mm and≤17 mm (e.g. T5) for general lighting purposes not exceeding (per lamp): 3 mg</xsl:if>
			<xsl:if test="$id='EU010215'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter&gt;17 mm and≤28 mm (e.g. T8) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='EU010216'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter&gt;17 mm and≤28 mm (e.g. T8) for general lighting purposes not exceeding (per lamp): 3.5 mg</xsl:if>
			<xsl:if test="$id='EU010217'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter&gt;28 mm (e.g. T12) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='EU010218'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter&gt;28 mm (e.g. T12) for general lighting purposes not exceeding (per lamp): 3.5 mg</xsl:if>
			<xsl:if test="$id='EU010219'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with long lifetime (≥25 000 h) for general lighting purposes not exceeding (per lamp): 8 mg</xsl:if>
			<xsl:if test="$id='EU010220'">Mercury in double-capped linear fluorescent lamps Tri-band phosphor with long lifetime (≥25 000 h) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='EU010221'">Mercury in other fluorescent lamps Linear halophosphate lamps with tube&gt;28 mm (e.g. T10 and T12) not exceeding (per lamp):10 mg</xsl:if>
			<xsl:if test="$id='EU010222'">Mercury in other fluorescent lamps Non-linear halophosphate lamps (all diameters) not exceeding (per lamp):15 mg</xsl:if>
			<xsl:if test="$id='EU010223'">Mercury in other fluorescent lamps Non-linear tri-band phosphor lamps with tube diameter&gt;17 mm (e.g. T9)</xsl:if>
			<xsl:if test="$id='EU010224'">Mercury in other fluorescent lamps Non-linear tri-band phosphor lamps with tube diameter&gt;17 mm (e.g. T9) not exceeding (per lamp): 15 mg</xsl:if>
			<xsl:if test="$id='EU010225'">Mercury in other fluorescent lamps for other general lighting and special purposes (e.g. induction lamps)</xsl:if>
			<xsl:if test="$id='EU010226'">Mercury in other fluorescent lamps for other general lighting and special purposes (e.g. induction lamps)not exceeding (per lamp): 15 mg</xsl:if>
			<xsl:if test="$id='EU010227'">Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Short length (≤500 mm)</xsl:if>
			<xsl:if test="$id='EU010228'">Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Short length (≤500 mm) not exceeding (per lamp): 3.5 mg</xsl:if>
			<xsl:if test="$id='EU010229'">Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Medium length (&gt;500 mm and≤1 500 mm)</xsl:if>
			<xsl:if test="$id='EU010230'">Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Medium length (&gt;500 mm and≤1 500 mm) not exceeding (per lamp):5 mg</xsl:if>
			<xsl:if test="$id='EU010231'">Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Long length (&gt;1 500 mm)</xsl:if>
			<xsl:if test="$id='EU010232'">Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Long length (&gt;1 500 mm) not exceeding (per lamp):13 mg</xsl:if>
			<xsl:if test="$id='EU010233'">Mercury in other low pressure discharge lamps (per lamp)</xsl:if>
			<xsl:if test="$id='EU010234'">Mercury in other low pressure discharge lamp not sexceeding (per lamp):15 mg</xsl:if>
			<xsl:if test="$id='EU010235'">Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra&gt;60, P≤155 W</xsl:if>
			<xsl:if test="$id='EU010236'">Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes not exceeding (per burner) in lamps with improved colour rendering index Ra&gt;60, P≤</xsl:if>
			<xsl:if test="$id='EU010237'">Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra&gt;60, 155 W&lt;P≤405 W</xsl:if>
			<xsl:if test="$id='EU010238'">Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra&gt;60, 155 W&lt;P≤405 W: 40 mg</xsl:if>
			<xsl:if test="$id='EU010239'">Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra&gt;60, P&gt;405 W</xsl:if>
			<xsl:if test="$id='EU010240'">Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra&gt;60, P&gt;405 W: 40 mg</xsl:if>
			<xsl:if test="$id='EU010241'">Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes P≤155 W</xsl:if>
			<xsl:if test="$id='EU010242'">Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes P≤155 W not exceeding (per burner):25 mg</xsl:if>
			<xsl:if test="$id='EU010243'">Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes 155 W&lt;P≤405 W</xsl:if>
			<xsl:if test="$id='EU010244'">Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes 155 W&lt;P≤405 W not exceeding (per burner):30 mg</xsl:if>
			<xsl:if test="$id='EU010245'">Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes P&gt;405 W</xsl:if>
			<xsl:if test="$id='EU010246'">Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes P&gt;405 W not exceeding (per burner):40 mg</xsl:if>
			<xsl:if test="$id='EU010247'">Mercury in High Pressure Mercury (vapour) lamps (HPMV). Expires on 13 April 2015</xsl:if>
			<xsl:if test="$id='EU010248'">Mercury in metal halide lamps (MH)</xsl:if>
			<xsl:if test="$id='EU010249'">Mercury in other discharge lamps for special purposes not specifically mentioned in this Annex</xsl:if>
			<xsl:if test="$id='EU010250'">Lead in glass of cathode ray tubes</xsl:if>
			<xsl:if test="$id='EU010251'">Lead in glass of fluorescent tubes not exceeding 0.2% by weight</xsl:if>
			<xsl:if test="$id='EU010252'">Lead as an alloying element in steel for machining purposes and in galvanized steel containing up to 0.35% lead by</xsl:if>
			<xsl:if test="$id='EU010253'">Lead as an alloying element in aluminium containing up to 0.4% lead by weight</xsl:if>
			<xsl:if test="$id='EU010254'">Copper alloy containing up to 4% lead by weight</xsl:if>
			<xsl:if test="$id='EU010255'">Lead in high melting temperature type solders (i.e. lead-based alloys containing 85% by weight or more lead)</xsl:if>
			<xsl:if test="$id='EU010256'">Lead in solders for servers, storage and storage array systems, network infrastructure equipment for switching, signalling, transmission, and network management for telecommunications</xsl:if>
			<xsl:if test="$id='EU010257'">Electrical and electronic components containing lead in a glass or ceramic other than dielectric ceramic in capacitors, e.g. piezoelectronic devices, or in a glass or ceramic matrix compound</xsl:if>
			<xsl:if test="$id='EU010258'">Lead in dielectric ceramic in capacitors for a rated voltage of 125 V AC or 250 V DC or higher</xsl:if>
			<xsl:if test="$id='EU010259'">Lead in dielectric ceramic in capacitors for a rated voltage of less than 125 V AC or 250 V DC.</xsl:if>
			<xsl:if test="$id='EU010260'">Lead in dielectric ceramic in capacitors for a rated voltage of less than 125 V AC or 250 V DC may be used in spare parts for EEE placed on the market before 1 January 2013</xsl:if>
			<xsl:if test="$id='EU010261'">Cadmium and its compounds in one shot pellet type thermal cut-offs.</xsl:if>
			<xsl:if test="$id='EU010262'">Cadmium and its compounds in one shot pellet type thermal cut-offs may be used in spare parts for EEE placed on the market before 1 January 2012</xsl:if>
			<xsl:if test="$id='EU010263'">Cadmium and its compounds in electrical contacts</xsl:if>
			<xsl:if test="$id='EU010264'">Hexavalent chromium as an anticorrosion agent of the carbon steel cooling system in absorption refrigerators up to 0.75% by weight in the cooling solution</xsl:if>
			<xsl:if test="$id='EU010265'">Lead in bearing shells and bushes for refrigerant-containing compressors for heating, ventilation, air conditioning and refrigeration (HVACR) applications</xsl:if>
			<xsl:if test="$id='EU010266'">Lead used in C-press compliant pin connector systems. May be used in spare parts for EEE placed on the market before 24 September 2010</xsl:if>
			<xsl:if test="$id='EU010267'">Lead used in other than C-press compliant pin connector systems.</xsl:if>
			<xsl:if test="$id='EU010268'">Lead used in other than C-press compliant pin connector systems may be used in spare parts for EEE placed on the market before 1 January 2013</xsl:if>
			<xsl:if test="$id='EU010269'">Lead as a coating material for the thermal conduction module C-ring. May be used in spare parts for EEE placed on the market before 24 September 2010</xsl:if>
			<xsl:if test="$id='EU010270'">Lead in white glasses used for optical applications</xsl:if>
			<xsl:if test="$id='EU010271'">Cadmium and lead in filter glasses and glasses used for reflectance standards</xsl:if>
			<xsl:if test="$id='EU010272'">Lead in solders consisting of more than two elements for the connection between the pins and the package of microprocessors with a lead content of more than 80% and less than 85% by weight.</xsl:if>
			<xsl:if test="$id='EU010273'">Lead in solders consisting of more than two elements for the connection between the pins and the package of microprocessors with a lead content of more than 80% and less than 85% by weight may be used in spare parts for EEE placed on the market before 1 January 2011</xsl:if>
			<xsl:if test="$id='EU010274'">Lead in solders to complete a viable electrical connection between semiconductor die and carrier within integrated circuit flip chip packages</xsl:if>
			<xsl:if test="$id='EU010275'">Lead in linear incandescent lamps with silicate coated tubes. Expires on 1 September 2013</xsl:if>
			<xsl:if test="$id='EU010276'">Lead halide as radiant agent in high intensity discharge (HID) lamps used for professional reprography applications</xsl:if>
			<xsl:if test="$id='EU010277'">Lead as activator in the fluorescent powder (1% lead by weight or less) of discharge lamps when used as speciality lamps for diazoprinting reprography, lithography, insect traps, photochemical and curing processes containing phosphors such as SMS ((Sr,Ba)2MgSi2O7:Pb)</xsl:if>
			<xsl:if test="$id='EU010278'">Lead as activator in the fluorescent powder (1% lead by weight or less) of discharge lamps when used as sun tanning lamps containing phosphors such as BSP (BaSi2O5:Pb)</xsl:if>
			<xsl:if test="$id='EU010279'">Lead with PbBiSn-Hg and PbInSn-Hg in specific compositions as main amalgam and with PbSn-Hg as auxiliary amalgam in very compact energy saving lamps (ESL). Expires on 1 June 2011</xsl:if>
			<xsl:if test="$id='EU010280'">Lead oxide in glass used for bonding front and rear substrates of flat fluorescent lamps used for Liquid Crystal Displays (LCDs). Expires on 1 June 2011</xsl:if>
			<xsl:if test="$id='EU010281'">Lead and cadmium in printing inks for the application of enamels on glasses, such as borosilicate and soda lime glasses</xsl:if>
			<xsl:if test="$id='EU010282'">Lead in finishes of fine pitch components other than connectors with a pitch of 0.65 mm and less. May be used in spare parts for EEE placed on the market before 24 September 2010</xsl:if>
			<xsl:if test="$id='EU010283'">Lead in solders for the soldering to machined through hole discoidal and planar array ceramic multilayer capacitors</xsl:if>
			<xsl:if test="$id='EU010284'">Lead oxide in surface conduction electron emitter displays (SED) used in structural elements, notably in the seal frit and frit ring</xsl:if>
			<xsl:if test="$id='EU010285'">Lead oxide in the glass envelope of black light blue lamps. Expires on 1 June 2011</xsl:if>
			<xsl:if test="$id='EU010286'">Lead bound in crystal glass as defined in Annex I (Categories 1, 2, 3 and 4) of Council Directive 69/493/EEC</xsl:if>
			<xsl:if test="$id='EU010287'">Cadmium alloys as electrical/mechanical solder joints to electrical conductors located directly on the voice coil in transducers used in high-powered loudspeakers with sound pressure levels of 100 dB (A) and more</xsl:if>
			<xsl:if test="$id='EU010288'">Lead in soldering materials in mercury free flat fluorescent lamps (which e.g. are used for liquid crystal displays, design or industrial lighting)</xsl:if>
			<xsl:if test="$id='EU010289'">Lead oxide in seal frit used for making window assemblies for Argon and Krypton laser tubes</xsl:if>
			<xsl:if test="$id='EU010290'">Lead in solders for the soldering of thin copper wires of 100 μm diameter and less in power transformers</xsl:if>
			<xsl:if test="$id='EU010291'">Lead in cermet-based trimmer potentiometer elements</xsl:if>
			<xsl:if test="$id='EU010292'">Lead in the plating layer of high voltage diodes on the basis of a zinc borate glass body</xsl:if>
			<xsl:if test="$id='EU010293'">Cadmium and cadmium oxide in thick film pastes used on aluminium bonded beryllium oxide</xsl:if>
			<xsl:if test="$id='EU010294'">Cadmium in colour converting II-VI LEDs (&lt;10 μg Cd per mm 2 of light-emitting area) for use in solid state illumination or display systems. Expires on 1 July 2014</xsl:if>
			<xsl:if test="$id='EU010295'">Lead, cadmium and mercury in detectors for ionising</xsl:if>
			<xsl:if test="$id='EU010296'">Lead bearings in X-ray tubes</xsl:if>
			<xsl:if test="$id='EU010297'">Lead in electromagnetic radiation amplification devices: micro-channel plate and capillary plate</xsl:if>
			<xsl:if test="$id='EU010298'">Lead in glass frit of X-ray tubes and image intensifiers and lead in glass frit binder for assembly of gas lasers and for vacuum tubes that convert electromagnetic radiation into electrons</xsl:if>
			<xsl:if test="$id='EU010299'">Lead in shielding for ionising radiation</xsl:if>
			<xsl:if test="$id='EU010300'">Lead in X-ray test objects</xsl:if>
			<xsl:if test="$id='EU010301'">Lead stearate X-ray diffraction crystals</xsl:if>
			<xsl:if test="$id='EU010302'">Radioactive cadmium isotope source for portable X-ray fluorescence spectrometers</xsl:if>
			<xsl:if test="$id='EU010303'">Lead and cadmium in ion selective electrodes including glass of pH electrodes</xsl:if>
			<xsl:if test="$id='EU010304'">Lead anodes in electrochemical oxygen sensors</xsl:if>
			<xsl:if test="$id='EU010305'">Lead, cadmium and mercury in infra-red light detectors</xsl:if>
			<xsl:if test="$id='EU010306'">Mercury in reference electrodes: low chloride mercury chloride, mercury sulphate and mercury oxide</xsl:if>
			<xsl:if test="$id='EU010307'">Cadmium in helium-cadmium lasers</xsl:if>
			<xsl:if test="$id='EU010308'">Lead and cadmium in atomic adsorption spectroscopy</xsl:if>
			<xsl:if test="$id='EU010309'">Lead in alloys as a superconductor and thermal conductor in MRI</xsl:if>
			<xsl:if test="$id='EU010310'">Lead and cadmium in metallic bonds to superconducting materials in MRI and SQUID detectors</xsl:if>
			<xsl:if test="$id='EU010311'">Lead in counterweights</xsl:if>
			<xsl:if test="$id='EU010312'">Lead in single crystal piezoelectric materials for ultrasonic transducers</xsl:if>
			<xsl:if test="$id='EU010313'">Lead in solders for bonding to ultrasonic transducers</xsl:if>
			<xsl:if test="$id='EU010314'">Mercury in very high accuracy capacitance and loss measurement bridges and in high frequency RF switches and relays in monitoring and control instruments not exceeding 20 mg of mercury per switch or relay</xsl:if>
			<xsl:if test="$id='EU010315'">Lead in solders in portable emergency defibrillators</xsl:if>
			<xsl:if test="$id='EU010316'">Lead in solders of high performance infrared imaging modules to detect in the range 8–14 μm</xsl:if>
			<xsl:if test="$id='EU010317'">Lead in Liquid crystal on silicon (LCoS) displays</xsl:if>
			<xsl:if test="$id='EU010318'">Cadmium in X-ray measurement filters</xsl:if>
			<xsl:if test="$id='EU010319'">Lead in PZT based dielectric ceramic materials for capacitors being part of integrated circuits or discrete semiconductors</xsl:if>
			<xsl:if test="$id='EU010320'">Cadmium in photoresistors for analogue optocouplers applied in professional audio equipment</xsl:if>
			<!-- EU02 ELV -->
			<xsl:if test="$id='EU020001'">No exemption</xsl:if>
			<xsl:if test="$id='EU020002'">Below threshold</xsl:if>
			<xsl:if test="$id='EU020010'">Steel for machining purposes and galvanised steel containing up to 0.35 % lead by weight</xsl:if>
			<xsl:if test="$id='EU020011'">Aluminium for machining purposes with a lead content up to 2 % by weight.As spare parts for vehicles put on the market before 1 July 2005</xsl:if>
			<xsl:if test="$id='EU020012'">Aluminium with a lead content up to 1.5 % by weight.As spare parts for vehicles put on the market before 1 July</xsl:if>
			<xsl:if test="$id='EU020013'">Aluminium with a lead content up to 0.4 % by weight</xsl:if>
			<xsl:if test="$id='EU020014'">Copper alloy containing up to 4 % lead by weight</xsl:if>
			<xsl:if test="$id='EU020015'">Bearing shells and bushes.As spare parts for vehicles put on the market before 1 July 2008</xsl:if>
			<xsl:if test="$id='EU020016'">Bearing shells and bushes in engines, transmissions and air conditioning compressors.1 July 2011 and after that date as spare parts for vehicles put on the market before 1 July</xsl:if>
			<xsl:if test="$id='EU020017'">Batteries</xsl:if>
			<xsl:if test="$id='EU020018'">Vibration dampers</xsl:if>
			<xsl:if test="$id='EU020019'">Vulcanising agents and stabilisers for elastomers in brake hoses, fuel hoses, air ventilation hoses, elastomer/metal parts in the chassis applications, and engine mountings.As spare parts for vehicles put on the market before 1 July</xsl:if>
			<xsl:if test="$id='EU020020'">Vulcanising agents and stabilisers for elastomers in brake hoses, fuel hoses, air ventilation hoses, elastomer/metal parts in the chassis applications, and engine mountings containing up to 0.5 % lead by weight.As spare parts for vehicles put on the market before 1 July 2006</xsl:if>
			<xsl:if test="$id='EU020021'">Bonding agents for elastomers in powertrain applications containing up to 0.5 % lead by weight.As spare parts for vehicles put on the market before 1 July 2009</xsl:if>
			<xsl:if test="$id='EU020022'">Lead in solders to attach electrical and electronic components to electronic circuit boards and lead in finishes on terminations of components other than electrolyte aluminium capacitors, on component pins and on electronic circuit boards.Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020023'">Lead in solders in electrical applications other than soldering on electronic circuit boards or on glass.Vehicles type approved before 1 January 2011 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020024'">Lead in finishes on terminals of electrolyte aluminium capacitors.Vehicles type approved before 1 January 2013 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020025'">Lead used in soldering on glass in mass airflow sensors.Vehicles type approved before 1 January 2015 and spare parts of such vehicles</xsl:if>
			<xsl:if test="$id='EU020026'">Lead in high melting temperature type solders (i.e. lead-based alloys containing 85 % by weight or more lead).</xsl:if>
			<xsl:if test="$id='EU020027'">Lead in compliant pin connector systems.</xsl:if>
			<xsl:if test="$id='EU020028'">Lead in solders to complete a viable electrical connection between semiconductor die and carrier within integrated circuit flip chip packages.</xsl:if>
			<xsl:if test="$id='EU020029'">Lead in solder to attach heat spreaders to the heat sink in power semiconductor assemblies with a chip size of at least 1 cm2 of projection area and a nominal current density of at least 1 A/mm2 of silicon chip area.</xsl:if>
			<xsl:if test="$id='EU020030'">Lead in solders in electrical glazing applications on glass except for soldering in laminated glazing.Vehicles type approved before 1 January 2013 and spare parts for these vehicles.</xsl:if>
			<xsl:if test="$id='EU020031'">Lead in solders for soldering in laminated glazing.</xsl:if>
			<xsl:if test="$id='EU020032'">Valve seats.As spare parts for engine types developed before 1 July 2003</xsl:if>
			<xsl:if test="$id='EU020033'">Electrical components which contain lead in a glass or ceramic matrix compound except glass in bulbs and glaze of spark plugs</xsl:if>
			<xsl:if test="$id='EU020034'">Pyrotechnic initiators.Vehicles type-approved before 1 July 2006 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020035'">Corrosion preventive coatings.As spare parts for vehicles put on the market before 1 July 2007</xsl:if>
			<xsl:if test="$id='EU020036'">Corrosion preventive coatings related to bolt and nut assemblies for chassis applications.As spare parts for vehicles put on the market before 1 July 2008</xsl:if>
			<xsl:if test="$id='EU020037'">Absorption refrigerators in motor caravans</xsl:if>
			<xsl:if test="$id='EU020038'">Discharge lamps for headlight application.Vehicles type approved before 1 July 2012 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020039'">Fluorescent tubes used in instrument panel displays.Vehicles type approved before 1 July 2012 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020040'">Batteries for electrical vehicles.As spare parts for vehicles put on the market before 31 December 2008</xsl:if>
			<xsl:if test="$id='EU020041'">Steel for machining purposes and batch hot dip galvanised steel components containing up to 0.35 % lead by weight</xsl:if>
			<xsl:if test="$id='EU020042'">Continuously galvanised steel sheet containing up to 0.35 % lead by weight. Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020043'">Aluminium for machining purposes with a lead content up to 2 % by weight | As spare parts for vehicles put on the market before 1 July 2005</xsl:if>
			<xsl:if test="$id='EU020044'">Aluminium with a lead content up to 1,5 % by weight | As spare parts for vehicles put on the market before 1 July</xsl:if>
			<xsl:if test="$id='EU020045'">Aluminium with a lead content up to 0.4 % by weight</xsl:if>
			<xsl:if test="$id='EU020046'">Copper alloy containing up to 4 % lead by weight</xsl:if>
			<xsl:if test="$id='EU020047'">Bearing shells and bushes | As spare parts for vehicles put on the market before 1 July 2008</xsl:if>
			<xsl:if test="$id='EU020048'">Bearing shells and bushes in engines, transmissions and air conditioning compressors | 1 July 2011 and spare parts for vehicles put on the market before 1 July 2011</xsl:if>
			<xsl:if test="$id='EU020049'">Batteries</xsl:if>
			<xsl:if test="$id='EU020050'">Vibration dampers | Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020051'">Vulcanising agents and stabilisers for elastomers in brake hoses, fuel hoses, air ventilation hoses, elastomer/metal parts in the chassis applications, and engine mountings | As spare parts for vehicles put on the market before 1 July</xsl:if>
			<xsl:if test="$id='EU020052'">Vulcanising agents and stabilisers for elastomers in brake hoses, fuel hoses, air ventilation hoses, elastomer/metal parts in the chassis applications, and engine mountings containing up to 0.5 % lead by weight | As spare parts for vehicles put on the market before 1 July 2006</xsl:if>
			<xsl:if test="$id='EU020053'">Bonding agents for elastomers in powertrain applications containing up to 0.5 % lead by weight | As spare parts for vehicles put on the market before 1 July 2009</xsl:if>
			<xsl:if test="$id='EU020054'">Lead in solders to attach electrical and electronic components to electronic circuit boards and lead in finishes on terminations of components other than electrolyte aluminium capacitors, on component pins and on electronic circuit boards | Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020055'">Lead in solders in electrical applications other than soldering on electronic circuit boards or on glass | Vehicles type approved before 1 January 2011 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020056'">Lead in finishes on terminals of electrolyte aluminium capacitors | Vehicles type approved before 1 January 2013 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020057'">Lead used in soldering on glass in mass airflow sensors | Vehicles type approved before 1 January 2015 and spare parts of such vehicles</xsl:if>
			<xsl:if test="$id='EU020058'">Lead in high melting temperature type solders (i.e. lead-based alloys containing 85 % by weight or more lead)</xsl:if>
			<xsl:if test="$id='EU020059'">Lead in compliant pin connector systems</xsl:if>
			<xsl:if test="$id='EU020060'">Lead in solders to complete a viable electrical connection between semiconductor die and carrier within integrated circuit flip chip packages</xsl:if>
			<xsl:if test="$id='EU020061'">Lead in solder to attach heat spreaders to the heat sink in power semiconductor assemblies with a chip size of at least 1 cm2 of projection area and a nominal current density of at least 1 A/mm2 of silicon chip area</xsl:if>
			<xsl:if test="$id='EU020062'">Lead in solders in electrical glazing applications on glass except for soldering in laminated glazing | Vehicles type approved before 1 January 2013 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020063'">Lead in solders for soldering in laminated glazing</xsl:if>
			<xsl:if test="$id='EU020064'">Valve seats | As spare parts for engine types developed before 1 July 2003</xsl:if>
			<xsl:if test="$id='EU020065'">Electrical and electronic components which contain lead in a glass or ceramic, in a glass or ceramic matrix compound, in a glass-ceramic material, or in a glass-ceramic matrix compound.this exemption does not cover the use of lead in:glass in bulbs and glaze of spark plugs,dielectric ceramic materials of components listed under 10(b), 10(c) and 10(d). | | X [5] (for components other than piezo in engines)</xsl:if>
			<xsl:if test="$id='EU020066'">Lead in PZt based dielectric ceramic materials of capacitors being part of integrated circuits or discrete</xsl:if>
			<xsl:if test="$id='EU020067'">Lead in dielectric ceramic materials of capacitors with a rated voltage of less than 125 V AC or 250 V DC | Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020068'">Lead in the dielectric ceramic materials of capacitors compensating the temperature-related deviations of sensors in ultrasonic sonar systems</xsl:if>
			<xsl:if test="$id='EU020069'">Pyrotechnic initiators | Vehicles type approved before 1 July 2006 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020070'">Lead-containing thermoelectric materials in automotive electrical applications to reduce CO2 emissions by recuperation of exhaust heat | Vehicles type approved before 1 January 2019 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020071'">Corrosion preventive coatings | As spare parts for vehicles put on the market before 1 July 2007</xsl:if>
			<xsl:if test="$id='EU020072'">Corrosion preventive coatings related to bolt and nut assemblies for chassis applications | As spare parts for vehicles put on the market before 1 July 2008</xsl:if>
			<xsl:if test="$id='EU020073'">As an anti-corrosion agent of the carbon steel cooling system in absorption refrigerators in motorcaravans up to 0.75 weight -% in the cooling solution except where the use of other cooling technologies is practicable (i.e. available on the market for the application in motor caravans) and does not lead to negative environmental, health and/or consumer</xsl:if>
			<xsl:if test="$id='EU020074'">Discharge lamps for headlight application | Vehicles type approved before 1 July 2012 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020075'">Fluorescent tubes used in instrument panel displays | Vehicles type approved before 1 July 2012 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='EU020076'">Batteries for electrical vehicles | As spare parts for vehicles put on the market before 31 December 2008</xsl:if>
			<!-- EU04 REACH -->
			<xsl:if test="$id='EU040110'">No information to specify the intended use</xsl:if>
			<xsl:if test="$id='EU040111'">Any one-component and two-component room temperature vulcanization sealants (RTV-1 and RTV-2 sealant ) and adhesives which apply to the general public</xsl:if>
			<xsl:if test="$id='EU040112'">Any paints and coating containing DBT compounds as catalysts when applied on articles which apply to the general public</xsl:if>
			<xsl:if test="$id='EU040113'">Any soft polyvinyl chloride (PVC) profiles whether by themselves or co extruded with hard PVC which apply to the general public</xsl:if>
			<xsl:if test="$id='EU040114'">Any fabrics coated with PVC containing DBT compounds as stabilizers when intended for outdoor applications which apply to the general public</xsl:if>
			<xsl:if test="$id='EU040115'">Any outdoor rainwater pipes, gutters and fittings, as well as covering materials for roofing and facades which apply to the general public</xsl:if>
			<xsl:if test="$id='EU040116'">Any use which the content is not greater than the threshold, the equivalent of 0.1% by weight of tin</xsl:if>
			<xsl:if test="$id='EU040117'">Not applicable</xsl:if>
			<xsl:if test="$id='EU040118'">No information to specify the intended use</xsl:if>
			<xsl:if test="$id='EU040119'">Any articles other than the following articles- textile articles intended to come into contact with the skin,-gloves,- footwear or part of footwear intended to come into contact with the skin,- walls and floor coverings,-childcare articles,- female hygiene products,- nappies,- two-component room temperature vulcanization molding</xsl:if>
			<xsl:if test="$id='EU040120'">Any use which the content is not greater than the threshold, the equivalent of 0.1% by weight of tin</xsl:if>
			<xsl:if test="$id='EU040121'">Not applicable</xsl:if>
			<!-- EU06 POPs -->
			<xsl:if test="$id='EU060101'">No information to specify the intended use</xsl:if>
			<xsl:if test="$id='EU060102'">Any photoresists or anti-reflective coatings for photolithography processes</xsl:if>
			<xsl:if test="$id='EU060103'">Any photographic coatings applied to films, papers, or printing plates</xsl:if>
			<xsl:if test="$id='EU060104'">Any mist suppressants for non-decorative hard chromium (V I) plating</xsl:if>
			<xsl:if test="$id='EU060105'">Wetting agents for use in controlled electroplating systems</xsl:if>
			<xsl:if test="$id='EU060106'">Any hydraulic fluids for aviation</xsl:if>
			<xsl:if test="$id='EU060107'">Any mixtures in concentrations less than 10 mg/kg (0.001% by weight),or where the concentration of PFOS is less than 0.1% by weight calculated with reference to the mass of structurally or microstructurally distinct parts that contain PFOS, any textiles or other coated materials,or where the amount of PFOS is less than 1μ g/m2 of the coated material</xsl:if>
			<xsl:if test="$id='EU060108'">Not applicable</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<!-- EU01 RoHS -->
			<xsl:if test="$id='EU010001'">没有例外</xsl:if>
			<xsl:if test="$id='EU010002'">低于阈值</xsl:if>
			<xsl:if test="$id='EU010101'">紧凑型荧光灯中的汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010102'">普通用途的直型荧光灯(卤化磷酸盐灯)中的汞含量不得超过10毫克</xsl:if>
			<xsl:if test="$id='EU010103'">普通用途的直型荧光灯(正常使用寿命的三磷酸盐灯)中的汞含量不得超过5毫克</xsl:if>
			<xsl:if test="$id='EU010104'">普通用途的直型荧光灯(长效使用寿命的三磷酸盐)中的汞含量不得超过8毫克</xsl:if>
			<xsl:if test="$id='EU010105'">特殊用途的直型荧光灯中汞含量</xsl:if>
			<xsl:if test="$id='EU010106'">其他照明灯中汞含量</xsl:if>
			<xsl:if test="$id='EU010107'">阴极射线管、电子元件和荧光管的玻璃中所含的铅</xsl:if>
			<xsl:if test="$id='EU010108'">钢铁合金中的铅含量小于0.35%</xsl:if>
			<xsl:if test="$id='EU010109'">铝合金中的铅含量小于0.4%</xsl:if>
			<xsl:if test="$id='EU010110'">铜合金中的铅含量小于4%</xsl:if>
			<xsl:if test="$id='EU010111'">高融化温度型焊料中的铅(即：铅合金中含量超过85%)</xsl:if>
			<xsl:if test="$id='EU010112'">用于服务器、数据存储器和数据存储列阵系统的焊料中的铅；用于交换、信号处理和传输，以及通讯系统网络管理的设备的焊料中所含的铅</xsl:if>
			<xsl:if test="$id='EU010113'">电子陶瓷部件中所含的铅(例如：压电陶瓷)</xsl:if>
			<xsl:if test="$id='EU010114'">电触点和电镀中所含的镉及其化合物(EU指令&lt;76/769/EEC&gt;的修改指令&lt;91/338/EEC&gt;中禁止的用途除外)</xsl:if>
			<xsl:if test="$id='EU010115'">在吸收式电冰箱中作为碳钢冷却系统防腐剂使用的六价铬</xsl:if>
			<xsl:if test="$id='EU010116'">聚合物应用中的十溴联苯醚(DecaBDE)</xsl:if>
			<xsl:if test="$id='EU010117'">铅-青铜轴承外壳及其轴衬中所含的铅</xsl:if>
			<xsl:if test="$id='EU010118'">插脚式连接器系统中所含的铅</xsl:if>
			<xsl:if test="$id='EU010119'">热导模组C环涂层材料中所含的铅</xsl:if>
			<xsl:if test="$id='EU010120'">光学玻璃及滤光玻璃中所含的铅</xsl:if>
			<xsl:if test="$id='EU010121'">光学玻璃及滤光玻璃中所含的镉</xsl:if>
			<xsl:if test="$id='EU010122'">铅含量在80%与85%之间，连接微处理器针脚与封装所使用的合金焊料中所含的铅</xsl:if>
			<xsl:if test="$id='EU010123'">用于电连接集成电路倒装芯片封装和载体间的焊料中所含的铅</xsl:if>
			<xsl:if test="$id='EU010124'">线形白炽灯硅酸盐灯管中的铅</xsl:if>
			<xsl:if test="$id='EU010125'">用于专业复印设备的高强度放电灯(HID)中用作激发的卤素铅</xsl:if>
			<xsl:if test="$id='EU010126'">当放电灯被用作含磷的仿日晒灯，比如含有BSP(BaSi2O5:Pb)，以及用于重氮复印、平版复印、捕虫器、光化学和硬化处理的特种灯，含有磷时，比如SMS((Sr,Ba)2MgSi2O7:Pb)，放电灯中的荧光粉触媒剂的含量在其重量的1%或以下</xsl:if>
			<xsl:if test="$id='EU010127'">紧凑型节能灯(ESL)中作为主要汞齐合金的特定成分(PbBiSn-Hg和PbinSg-Hg)中的铅及作为辅助汞合金PbSn-Hg中的铅</xsl:if>
			<xsl:if test="$id='EU010128'">液晶显示器(LCD)用于连接平面荧光灯前后基片用的玻璃中的氧化铅</xsl:if>
			<xsl:if test="$id='EU010129'">用于硅硼玻璃陶瓷釉上印刷油墨中所有的铅和镉</xsl:if>
			<xsl:if test="$id='EU010130'">用于光纤通讯系统的稀土铁石榴石法拉第旋转器中作为杂质所含的铅</xsl:if>
			<xsl:if test="$id='EU010131'">铁镍合金或者铜引线框架的细间距元器件(即不大于0.65mm的引脚间距)用表面处理剂中的铅，不包括连接器类。</xsl:if>
			<xsl:if test="$id='EU010132'">带机械加工通孔的盘状和平面阵列的多层陶瓷电容的锡焊时使用的焊料中所含的铅</xsl:if>
			<xsl:if test="$id='EU010133'">作为构造体使用的等离子显示器和表面传导式电子发射显示器中所含的的氧化铅。特别是前面和后面玻璃绝缘层、总线电极、黑条、寻址电极、阻挡层肋柱、密封玻璃料、环状玻璃以及印墨中所含的氧化铅</xsl:if>
			<xsl:if test="$id='EU010134'">蓝黑灯(BLB)的玻璃壳中所含的氧化铅</xsl:if>
			<xsl:if test="$id='EU010135'">在高性能扬声器(特指连续几小时运作在声功率125分贝以上)中的传感器上作为焊料的铅合金</xsl:if>
			<xsl:if test="$id='EU010136'">未上漆的金属片和扣件的防腐蚀用途和2002/96/EC指令规定的第三类设备(IT和通讯设备)的电磁界面屏蔽中含有的六价铬。该例外截止到2007年7月1日。</xsl:if>
			<xsl:if test="$id='EU010137'">69/493/EEC指令附录I(1，2，3和4类)中限定的水晶玻璃中含有的铅</xsl:if>
			<xsl:if test="$id='EU010138'">用于连接直接设置在音量大于或等于100分贝的大功率扩音器音圈上的电导体的电气或机械焊点的镉合金</xsl:if>
			<xsl:if test="$id='EU010139'">用于无汞平面荧光灯(例如：用于液晶显示器、设计或工业照明)的焊料中所含的铅</xsl:if>
			<xsl:if test="$id='EU010140'">用于氩和氪激光管防护窗组合件的封装玻璃料里的氧化铅</xsl:if>
			<xsl:if test="$id='EU010141'">电源变压器中直径100微米及以下细铜线所用焊料中的铅</xsl:if>
			<xsl:if test="$id='EU010142'">金属陶瓷质的微调电位计中的铅</xsl:if>
			<xsl:if test="$id='EU010143'">专业音频设备上光耦合器中使用的光敏电阻中的镉</xsl:if>
			<xsl:if test="$id='EU010144'">直流等离子显示器中阴极溅射抑制剂中的汞，其含量每台显示器不超过30毫克</xsl:if>
			<xsl:if test="$id='EU010145'">硼酸锌玻璃体基材的高压二极管的电镀层中的铅</xsl:if>
			<xsl:if test="$id='EU010146'">铝结合氧化铍的厚膜浆料中的镉和氧化镉</xsl:if>
			<xsl:if test="$id='EU010147'">2014年7月1日前应用于固态照明或显示系统中的色彩转换II-VI族(镉含量&lt;10μg/mm2发光面积)中使用的镉</xsl:if>
			<xsl:if test="$id='EU010201'">功率小于30W的用于一般照明用途的单端荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010202'">功率小于30W的用于一般照明用途的单端荧光灯中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010203'">功率小于30W的用于一般照明用途的单端荧光灯中汞含量不得超过2.5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010204'">功率大于或等于30W且小于50W的用于一般照明用途的单端荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010205'">功率大于或等于30W且小于50W的用于一般照明用途的单端荧光灯中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010206'">功率在50W和150W之间(含50W)的一般照明用途单端荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010207'">功率大于或等于150W的用于一般照明用途的单端荧光灯中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='EU010208'">管直径小于17毫米的用于一般照明用途的圆形或方形的单端荧光灯中的汞</xsl:if>
			<xsl:if test="$id='EU010209'">管直径小于17毫米的用于一般照明用途的圆形或方形的单端荧光灯中汞含量不得超过17毫克/灯</xsl:if>
			<xsl:if test="$id='EU010210'">特殊用途的单端(紧凑型)荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010211'">正常使用寿命下的管直径小于9毫米的三基色直型荧光灯(例如T2)中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010212'">正常使用寿命下的管直径小于9毫米的三基色直型荧光灯(例如T2)中汞含量不得超过4毫克/灯</xsl:if>
			<xsl:if test="$id='EU010213'">正常使用寿命下，管直径在9毫米和17毫米之间(含9毫米和17毫米)的三基色直型荧光灯(例如T5)中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010214'">正常使用寿命下，管直径在9毫米和17毫米之间(含9毫米和17毫米)的三基色直型荧光灯(例如T5)中汞含量不得超过3毫克/灯</xsl:if>
			<xsl:if test="$id='EU010215'">正常使用寿命下，管直径在17毫米和28毫米之间(含28毫米)的三基色直型荧光灯(例如T8中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010216'">正常使用寿命下，管直径在17毫米和28毫米之间(含28毫米)的三基色直型荧光灯(例如T8中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010217'">正常使用寿命下的管直径大于28毫米的三基色直型荧光灯(例如T12)中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010218'">正常使用寿命下的管直径大于28毫米的三基色直型荧光灯(例如T12)中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010219'">长效使用寿命(大于或等于25000小时)的三基色直型荧光灯中汞含量不得超过8毫克/灯</xsl:if>
			<xsl:if test="$id='EU010220'">长效使用寿命(大于或等于25000小时)的三基色直型荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010221'">管直径大于28毫米的盐磷酸盐直型荧光灯(如T10和T12)中汞含量不得超过10毫克/灯</xsl:if>
			<xsl:if test="$id='EU010222'">非直型盐磷酸盐荧光灯中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='EU010223'">管直径大于17毫米的非直型三基色荧光灯(例如T9)中的汞</xsl:if>
			<xsl:if test="$id='EU010224'">管直径大于17毫米的非直型三基色荧光灯(例如T9)中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='EU010225'">用于其他一般照明用途或特殊照明用途的灯(例如感应灯)中的汞</xsl:if>
			<xsl:if test="$id='EU010226'">用于其他一般照明用途或特殊照明用途的灯(例如感应灯)中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='EU010227'">较短长度(小于或等于500毫米)的冷阴极荧光灯和外置电极荧光灯中的汞</xsl:if>
			<xsl:if test="$id='EU010228'">较短长度(小于或等于500毫米)的冷阴极荧光灯和外置电极荧光灯中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010229'">中等长度(在500毫米和1500毫米之间，含1500毫米)的冷阴极荧光灯和外置电极荧光灯中的汞</xsl:if>
			<xsl:if test="$id='EU010230'">中等长度(在500毫米和1500毫米之间，含1500毫米)的冷阴极荧光灯和外置电极荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='EU010231'">较长长度(大于1500毫米)的冷阴极荧光灯和外置电极荧光灯中的汞</xsl:if>
			<xsl:if test="$id='EU010232'">较长长度(大于1500毫米)的冷阴极荧光灯和外置电极荧光灯中汞含量不得超过13毫克/灯</xsl:if>
			<xsl:if test="$id='EU010233'">其他低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='EU010234'">其他低压放电灯中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='EU010235'">功率小于或等于155W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='EU010236'">功率小于或等于155W的低压放电灯中汞含量不得超过30毫克/灯</xsl:if>
			<xsl:if test="$id='EU010237'">功率在155W和405W之间(含405W)的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='EU010238'">功率在155W和405W之间(含405W)的低压放电灯中汞含量不得超过40毫克/灯</xsl:if>
			<xsl:if test="$id='EU010239'">功率大于405W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='EU010240'">功率大于405W的低压放电灯中汞含量不得超过40毫克/灯</xsl:if>
			<xsl:if test="$id='EU010241'">功率小于或等于155W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='EU010242'">功率小于或等于155W的低压放电灯中汞含量不得超过25毫克/灯</xsl:if>
			<xsl:if test="$id='EU010243'">功率在155W和405W之间或等于405W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='EU010244'">功率在155W和405W之间或等于405W的低压放电灯中汞含量不得超过30毫克/灯</xsl:if>
			<xsl:if test="$id='EU010245'">功率大于405W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='EU010246'">功率大于405W的低压放电灯中汞含量不得超过40毫克/灯</xsl:if>
			<xsl:if test="$id='EU010247'">高压汞蒸气灯(HPMV)中的汞</xsl:if>
			<xsl:if test="$id='EU010248'">金卤灯(MH)中的汞</xsl:if>
			<xsl:if test="$id='EU010249'">本附录中未特别提及的其它特殊用途的放电灯中的汞</xsl:if>
			<xsl:if test="$id='EU010250'">阴极射线管玻璃所含的铅</xsl:if>
			<xsl:if test="$id='EU010251'">荧光管玻璃内的铅含量不得超过其重量的0.2%</xsl:if>
			<xsl:if test="$id='EU010252'">机械加工用钢和镀锌钢中合金元素中的铅含量小于0.35%</xsl:if>
			<xsl:if test="$id='EU010253'">铝中合金元素中的铅含量小于0.4%</xsl:if>
			<xsl:if test="$id='EU010254'">铜中合金元素中的铅含量小于4%</xsl:if>
			<xsl:if test="$id='EU010255'">高熔化温度型焊料中的铅(即铅含量超过85%的铅基合金焊料)</xsl:if>
			<xsl:if test="$id='EU010256'">用于服务器、存储器和存储列阵系统的焊料中的铅；用于交换、信号和传输，以及电信网络管理的网络基础设施设备中焊料中的铅</xsl:if>
			<xsl:if test="$id='EU010257'">电子电气元件中玻璃或陶瓷材料(电容中陶瓷介质除外)所含的铅，如压电设备或玻璃/陶瓷复合元件</xsl:if>
			<xsl:if test="$id='EU010258'">额定电压为交流125V或直流250V及以上的电容中陶瓷介质所含的铅</xsl:if>
			<xsl:if test="$id='EU010259'">额定电压为交流125V或直流250V以下的电容中陶瓷介质所含的铅</xsl:if>
			<xsl:if test="$id='EU010260'">作为电气电子设备的备件的额定电压为交流125V或者直流250V以下的电容中陶瓷介质所含的铅</xsl:if>
			<xsl:if test="$id='EU010261'">热熔断体中的镉及其化合物</xsl:if>
			<xsl:if test="$id='EU010262'">作为电气电子设备的备件统一投入混合颗粒成型的热熔断体中所含的镉及其化合物</xsl:if>
			<xsl:if test="$id='EU010263'">电触点中的镉及其化合物</xsl:if>
			<xsl:if test="$id='EU010264'">吸收式电冰箱中作为碳钢冷却系统防腐剂的六价铬，其在冷却液中的含量不得超过0.75%</xsl:if>
			<xsl:if test="$id='EU010265'">暖通空调(HVACR)设备压缩机轴承外壳及轴衬中的铅</xsl:if>
			<xsl:if test="$id='EU010266'">C-press插脚式连接器系统中使用的铅</xsl:if>
			<xsl:if test="$id='EU010267'">除C-press以外的插脚式连接器系统中使用的铅</xsl:if>
			<xsl:if test="$id='EU010268'">作为电气电子设备的备件的除C-press以外的插脚式连接器系统中使用的铅</xsl:if>
			<xsl:if test="$id='EU010269'">热导模组C环涂层中所用的铅</xsl:if>
			<xsl:if test="$id='EU010270'">光学玻璃中的铅</xsl:if>
			<xsl:if test="$id='EU010271'">滤光玻璃及反射率标准玻璃片中的铅和镉</xsl:if>
			<xsl:if test="$id='EU010272'">微处理器针脚及封装联接所使用的含两种以上组分焊料中的铅(铅含量在80%与85%之间)</xsl:if>
			<xsl:if test="$id='EU010273'">作为电气电子设备的备件的微处理器针脚及封装联接所使用的含两种以上组分焊料中的铅(铅含量在80%与85%之间)</xsl:if>
			<xsl:if test="$id='EU010274'">集成电路倒装芯片封装中半导体芯片及载体之间形成可靠联接所用焊料中的铅</xsl:if>
			<xsl:if test="$id='EU010275'">线形白炽灯硅酸盐灯管中的铅</xsl:if>
			<xsl:if test="$id='EU010276'">用于专业复印设备的高强度放电灯(HID)中用作激发的卤素铅</xsl:if>
			<xsl:if test="$id='EU010277'">用于重氮复印、平版印刷、捕虫器、光化学和食物加工过程的特种放电灯中含磷荧光粉触媒(如SMS(Sr,Ba)2MgSi2O7:Pb)中的铅，其含量在1%以下</xsl:if>
			<xsl:if test="$id='EU010278'">仿日晒放电灯中含磷荧光粉触媒(如BSP(BaSi2O5:Pb))中的铅，其含量在1%以下</xsl:if>
			<xsl:if test="$id='EU010279'">紧凑型节能灯(ESL)中作为主要汞齐合金的特定成分(PbBiSn-Hg和PbinSg-Hg)中的铅及作为辅助汞合金PbSn-Hg中的铅</xsl:if>
			<xsl:if test="$id='EU010280'">液晶显示器(LCD)用于连接平面荧光灯前后基片用的玻璃中的氧化铅</xsl:if>
			<xsl:if test="$id='EU010281'">用于玻璃(如硼硅玻璃及钠钙玻璃)瓷釉上印刷油墨中的铅和镉</xsl:if>
			<xsl:if test="$id='EU010282'">细间距元器件(即不大于0.65mm的引脚间距)的表面处理中的铅，不包括连接器类</xsl:if>
			<xsl:if test="$id='EU010283'">通孔盘状和平面阵列的多层陶瓷电容中焊料里的铅</xsl:if>
			<xsl:if test="$id='EU010284'">表面传导式电子发射显示器(SED)构件所用的氧化铅，特别是密封玻璃和玻璃环</xsl:if>
			<xsl:if test="$id='EU010285'">紫光灯/黑光灯(或称蓝黑灯)玻璃壳中的氧化铅</xsl:if>
			<xsl:if test="$id='EU010286'">69/493/EEC指令附录I(1，2，3和4类)中限定的水晶玻璃中的铅</xsl:if>
			<xsl:if test="$id='EU010287'">用于位于音量大于或等于100分贝的大功率扩音器音圈上的电导体的电气或机械焊点的镉合金</xsl:if>
			<xsl:if test="$id='EU010288'">用于无汞平面荧光灯(例如：用于液晶显示器、设计或工业照明)的焊料中的铅</xsl:if>
			<xsl:if test="$id='EU010289'">用于氩和氪激光管防护窗组合件的封装玻璃料里的铅的氧化物</xsl:if>
			<xsl:if test="$id='EU010290'">电源变压器中直径100微米及以下细铜线所用焊料中的铅</xsl:if>
			<xsl:if test="$id='EU010291'">金属陶瓷质的微调电位计中的铅</xsl:if>
			<xsl:if test="$id='EU010292'">基于硼酸锌玻璃体的高压二极管的电镀层中的铅</xsl:if>
			<xsl:if test="$id='EU010293'">铝结合氧化铍的厚膜浆料中的镉和氧化镉</xsl:if>
			<xsl:if test="$id='EU010294'">应用于固态照明或显示系统中的色彩转换II-VI族LED(镉含量低于10μg/mm2发光区域)中使用的镉</xsl:if>
			<xsl:if test="$id='EU010295'">铅，镉，汞在电离辐射探测器</xsl:if>
			<xsl:if test="$id='EU010296'">X射线管中的铅轴承</xsl:if>
			<xsl:if test="$id='EU010297'">在电磁辐射放大装置的铅：微通道板和毛细管板</xsl:if>
			<xsl:if test="$id='EU010298'">在X射线管和图像增强器和气体激光器装配在玻璃熔块的粘结剂铅熔块和玻璃真空管，电磁辐射转换成电子的铅</xsl:if>
			<xsl:if test="$id='EU010299'">在电离辐射屏蔽的铅</xsl:if>
			<xsl:if test="$id='EU010300'">在X射线铅的测试对象</xsl:if>
			<xsl:if test="$id='EU010301'">硬脂酸铅X射线衍射晶体</xsl:if>
			<xsl:if test="$id='EU010302'">便携式X射线荧光光谱仪的同位素放射性镉源</xsl:if>
			<xsl:if test="$id='EU010303'">包括pH电极的玻璃离子选择性电极的铅和镉</xsl:if>
			<xsl:if test="$id='EU010304'">铅阳极电化学氧传感器</xsl:if>
			<xsl:if test="$id='EU010305'">铅，镉，汞红外线探测器</xsl:if>
			<xsl:if test="$id='EU010306'">汞参比电极：低氯氯化汞，硫酸汞和氧化汞</xsl:if>
			<xsl:if test="$id='EU010307'">氦镉激光器中的镉</xsl:if>
			<xsl:if test="$id='EU010308'">铅和镉的原子吸收光谱灯</xsl:if>
			<xsl:if test="$id='EU010309'">MRI热导体和超导体合金中的铅</xsl:if>
			<xsl:if test="$id='EU010310'">铅和镉金属键在核磁共振成像(MRI)和鱿鱼探测器的超导材料</xsl:if>
			<xsl:if test="$id='EU010311'">在配重的铅</xsl:if>
			<xsl:if test="$id='EU010312'">超声换能器在压电单晶材料的铅</xsl:if>
			<xsl:if test="$id='EU010313'">超声换能器粘接焊料中铅</xsl:if>
			<xsl:if test="$id='EU010314'">水星在非常高的精度电容和损耗测量桥梁和监测和控制仪器不超过20毫克每汞开关或继电器高频射频开关和继电器</xsl:if>
			<xsl:if test="$id='EU010315'">在便携式紧急除颤器焊料中的铅</xsl:if>
			<xsl:if test="$id='EU010316'">铅焊料的高性能红外热成像模块检测范围8-14微米</xsl:if>
			<xsl:if test="$id='EU010317'">铅在液晶硅(LCoS)显示</xsl:if>
			<xsl:if test="$id='EU010318'">镉在X射线测量滤波器</xsl:if>
			<xsl:if test="$id='EU010319'">基于压电陶瓷介电陶瓷材料的铅，部分集成电路或分立半导体电容</xsl:if>
			<xsl:if test="$id='EU010320'">适用于专业音频设备的模拟光耦合器的光敏电阻的镉</xsl:if>
			<!-- EU02 ELV -->
			<xsl:if test="$id='EU020001'">没有例外</xsl:if>
			<xsl:if test="$id='EU020002'">低于阈值</xsl:if>
			<xsl:if test="$id='EU020010'">机械加工用的钢及镀锌钢，其铅含量最高不超过0.35wt%</xsl:if>
			<xsl:if test="$id='EU020011'">机械加工用的铝材，其铅含量最高不超过2wt%．作为2005年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020012'">机械加工用的铝材，其铅含量最高不超过1.5wt%．作为2008年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020013'">机械加工用的铝材，其铅含量最高不超过0.4wt%</xsl:if>
			<xsl:if test="$id='EU020014'">铜合金，其铅含量最高不超过4wt%</xsl:if>
			<xsl:if test="$id='EU020015'">轴承壳套及轴衬．作为2008年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020016'">引擎、变速箱、空调压缩机用途的轴承壳套及轴衬．作为2011年7月1日及之前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020017'">电池</xsl:if>
			<xsl:if test="$id='EU020018'">振动阻尼器</xsl:if>
			<xsl:if test="$id='EU020019'">刹车油管、燃料管、通风管、车身的弹性体/金属零部件、引擎脚的弹性体之硫化剂及稳定剂中的铅．作为2005年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020020'">刹车油管、燃料管、通风管、车身的弹性体/金属零部件、引擎脚的弹性体之硫化剂及稳定剂中含有的最高不超过0.5%的铅．作为2006年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020021'">传动系统用弹性体的粘结剂，其铅含量最高不超过0.5%．作为2009年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020022'">用来连接电气以及电子零部件和电路基板的含铅焊锡．2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020023'">其他在电气应用中的含铅焊锡，电路基板上或者玻璃上的焊锡除外．2011年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020024'">铝电解电容器端子加工中所含的铅．2013年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020025'">空气流量传感器内玻璃上的锡焊中使用的铅．2015年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020026'">高熔点含铅焊锡(含有重量在85%以上的铅的合金)</xsl:if>
			<xsl:if test="$id='EU020027'">顺压针连接器系统中所含的铅</xsl:if>
			<xsl:if test="$id='EU020028'">集成电路封装(覆晶)的内部半导体晶片以及载体间切实地进行电连接所需要的含铅焊锡</xsl:if>
			<xsl:if test="$id='EU020029'">在芯片尺寸的投影面积至少为1mm2，硅片部分的公称电流密度最小为1A/mm2的功率半导体组件中用以黏着导热片及散热片的含铅焊锡</xsl:if>
			<xsl:if test="$id='EU020030'">电气元件焊接在玻璃上用的含铅焊锡，焊接在胶合玻璃中的含铅焊锡除外．2013年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020031'">焊接在胶合玻璃中的含铅焊锡</xsl:if>
			<xsl:if test="$id='EU020032'">气门座用于,2003年7月1日前开发的引擎型号的备用零部件</xsl:if>
			<xsl:if test="$id='EU020033'">玻璃或陶瓷中含铅的电子零部件(气门的玻璃以及点火塞除外)</xsl:if>
			<xsl:if test="$id='EU020034'">起爆剂．2006年7月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020035'">防腐蚀涂层．作为2007年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020036'">用于底盘的组装用螺栓及螺帽的防腐蚀涂层．作为2008年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020037'">露营拖车的吸收式冷冻机</xsl:if>
			<xsl:if test="$id='EU020038'">用于汽车前照灯的放电灯．2012年7月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020039'">仪表盘显示器上使用的荧光管．2012年7月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020040'">电动车用电池．作为2008年12月31日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020041'">加工用钢及通过批量处理熔融镀锌的钢，其铅含量最高不超过0.35wt%</xsl:if>
			<xsl:if test="$id='EU020042'">通过连续处理镀锌的钢版，其铅含量最高不超过0.35wt%．2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020043'">加工用的铝，其铅含量最高不超过2wt%．作为2005年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020044'">铝，其铅含量最高不超过1.5wt%．作为2008年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020045'">铝，其铅含量最高不超过0.4wt%</xsl:if>
			<xsl:if test="$id='EU020046'">铜合金，其铅含量最高不超过4wt%</xsl:if>
			<xsl:if test="$id='EU020047'">轴承壳套及轴衬．作为2008年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020048'">引擎、变速箱及空调压缩机中的轴承壳套及轴衬．作为2011年7月1日及之前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020049'">电池</xsl:if>
			<xsl:if test="$id='EU020050'">振动阻尼器．作为2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020051'">弹性体之硫化剂及稳定剂，且该弹性体用于刹车油管、燃料管、通风管、底盘用弹性体/金属零部件及引擎脚．作为2005年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020052'">弹性体之硫化剂及稳定剂，其铅含量最高不超过0.5%,且该弹性体用于刹车油管、燃料管、通风管、底盘用弹性体/金属零部件及引擎脚．作为2006年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020053'">传动系统用弹性体的粘结剂，其铅含量最高不超过0.5%．作为2009年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020054'">用于将电气电子零部件安装到电路板上的含铅焊锡以及铝电解电容器(electrolytealuminiumcapacitors)以外的零部件的端子上的零部件的接脚表面及电路板表面的加工剂中所含的铅．作为2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020055'">电路板上或玻璃上用的焊锡以外的电气用途的含铅焊锡．作为2011年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020056'">铝电解电容器的端子上的加工剂中所含的铅．作为2013年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020057'">空气流量传感器中玻璃上的锡焊中使用的铅．作为2015年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020058'">高熔点含铅焊锡(也即85%含铅量的铅合金)</xsl:if>
			<xsl:if test="$id='EU020059'">顺压针连接器系统中的铅</xsl:if>
			<xsl:if test="$id='EU020060'">ＩＣ覆晶封装中形成半导体晶片与载体间切实电连接的含铅焊锡</xsl:if>
			<xsl:if test="$id='EU020061'">在至少1cm2的保护面积且至少1A/mm2的公称电流密度大小的芯片的功率半导体组件中用以黏着导热片及散热片的含铅焊锡</xsl:if>
			<xsl:if test="$id='EU020062'">电气元件焊接在玻璃上用的含铅焊锡，焊接在胶合玻璃(laminatedglazing)中的含铅焊锡除外．2013年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件(该免除应于2012年1月1日前进行重审)</xsl:if>
			<xsl:if test="$id='EU020063'">焊接在胶合玻璃中的含铅焊锡</xsl:if>
			<xsl:if test="$id='EU020064'">气门座．用于2003年7月1日前开发的引擎型号的备用零部件</xsl:if>
			<xsl:if test="$id='EU020065'">玻璃或陶瓷中、玻璃或陶瓷基材配合物中、玻璃ー陶瓷材料中、或者玻璃ー陶瓷基材配合物中含铅的电气电子零部件。该免除不包含在如下使用的铅：－灯泡之玻璃及点火塞的釉料(glaze)ー10(ｂ)、10(ｃ)及10(ｄ)中列出的零部件的感应陶瓷材料中所含的铅</xsl:if>
			<xsl:if test="$id='EU020066'">构成集成电路或个别半导体的一部分的电容器的PZt基底的感应陶瓷材料中所含的铅</xsl:if>
			<xsl:if test="$id='EU020067'">具有较交流125Ｖ或直流250Ｖ更小的额定电压的电容器的感应陶瓷材料中所含的铅．2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020068'">超声波探测系统中修正传感器的温度相关偏差的电容器的感应陶瓷材料中所含的铅</xsl:if>
			<xsl:if test="$id='EU020069'">燃烧点火装置(pyrotechnicinitiators)．2006年7月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020070'">为压缩废热回收引起的ＣＯ2排放的汽车电气用途中含铅的热传导材料．2019年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件．</xsl:if>
			<xsl:if test="$id='EU020071'">防腐蚀涂料．作为2007年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020072'">用于底盘的螺栓及螺帽组件之防腐蚀涂料．作为2008年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020073'">冷却溶液中不超过0.75wt%的露营拖车的吸收式冷冻机(absorptionrefrigerators)的碳素铜冷却系统的防腐剂。但是，可以实施其他冷却技术的使用(也即，用于马达拖车而上市且可以利用)，且其对环境、健康及/或消费者不产生不良影响的除外。</xsl:if>
			<xsl:if test="$id='EU020074'">用于汽车前照灯的放电灯．2012年7月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020075'">仪表盘显示器上使用的荧光管．2012年7月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='EU020076'">电动车用电池．2008年12月31日前上市的用于车辆的备用零部件</xsl:if>
			<!-- EU04 REACH -->
			<xsl:if test="$id='EU040110'">不能判断</xsl:if>
			<xsl:if test="$id='EU040111'">1组分及2组分室温硬化型密封剂(RTV-1及RTV-2密封剂)及粘合剂。用于一般用途。</xsl:if>
			<xsl:if test="$id='EU040112'">含DBT化合物的涂料催化剂，用于一般用途</xsl:if>
			<xsl:if test="$id='EU040113'">软质聚氯乙烯(PVC)(和单体・硬质聚氯乙烯的共通提取无关)用于一般用途</xsl:if>
			<xsl:if test="$id='EU040114'">含DBT化合物的PVC涂装织物，作为室外用途的安定剂。用于一般用途</xsl:if>
			<xsl:if test="$id='EU040115'">室外的雨水管及工具、屋顶及墙面覆盖材。用于一般用途</xsl:if>
			<xsl:if test="$id='EU040116'">换算为锡元素的质量百分比含量小于等于0.1%时</xsl:if>
			<xsl:if test="$id='EU040117'">不适用</xsl:if>
			<xsl:if test="$id='EU040118'">不能判断</xsl:if>
			<xsl:if test="$id='EU040119'">除下列用途之外的成形品-与皮肤接触的织物、-手套，-与皮肤接触的鞋类、-墙壁及地板的覆盖材，-育儿用品、-女性卫生用品、-尿布、-2组分室温硬化模压工具(RTV-2密封剂模压工具)</xsl:if>
			<xsl:if test="$id='EU040120'">换算为锡元素的质量百分比含量小于等于0.1%时</xsl:if>
			<xsl:if test="$id='EU040121'">不适用</xsl:if>
			<!-- EU06 POPs -->
			<xsl:if test="$id='EU060101'">不能判断</xsl:if>
			<xsl:if test="$id='EU060102'">用于相片石印工程的相片抵抗或反射防止膜</xsl:if>
			<xsl:if test="$id='EU060103'">用于薄膜、纸、印刷版上摄影涂料</xsl:if>
			<xsl:if test="$id='EU060104'">用于非装饰性硬质铬(VI)用防雾剂</xsl:if>
			<xsl:if test="$id='EU060105'">可控电子电镀系统用湿润剂</xsl:if>
			<xsl:if test="$id='EU060106'">航空用油压油</xsl:if>
			<xsl:if test="$id='EU060107'">含量小于10mg/kg(质量百分比0.001%)的调剂、或者质量百分比浓度小于0.1%的半成品及成形品或其一部分、或者含量小于1μg/m2的纤维产品和其他的被覆盖物</xsl:if>
			<xsl:if test="$id='EU060108'">不适用</xsl:if>
		</xsl:if>
	</xsl:template>
	
</xsl:stylesheet>