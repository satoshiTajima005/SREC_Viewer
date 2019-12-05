<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="no" omit-xml-declaration="no"/>
  <!-- ********************************** AIS *********************************************************************** -->
  <xsl:template match="/">
    <xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
    {
      "thead": [
        [
          {"colspan":"2", "class":"layer", "value": "階層"},
          {"colspan":"2", "class":"parts", "value": "部品"},
          {"colspan":"<xsl:value-of select="$ver+2"/>", "class":"material", "value": "材料"},
          {"colspan":"<xsl:value-of select="$ver+1"/>", "class":"substance", "value": "物質"},
          {"colspan":"<xsl:value-of select="$ver"/>", "class":"law", "value": "法令"}
        ],[
          {"value":"名称"},<!--名称-->
          {"value":"員数"},<!--員数-->
          {"value":"名称"},<!--名称-->
          {"value":"員数"},<!--員数-->
          {"value":"用途"},<!--用途-->
          {"value":"名称"},<!--名称-->
          {"value":"分類記号"},<!--分類記号-->
          {"value":"公的規格"},<!--公的規格-->
          {"value":"質量"},<!--質量-->
          <xsl:if test="$ver='4'">
            {"value":"備考"},<!--備考-->
          </xsl:if>
          {"value":"CAS No."},
          {"value":"名称"},<!--名称-->
          {"value":"含有率"},<!--含有率-->
          {"value":"質量"},<!--質量-->
          <xsl:if test="$ver='4'">
            {"value":"備考"},<!--備考-->
          </xsl:if>
          {"value":"ID"},
          {"value":"名称"},<!--名称-->
          {"value":"該当区分"}<!--該当区分-->
          <xsl:if test="$ver='4'">
            ,{"value":"備考"}<!--備考-->
          </xsl:if>
        ]
      ],
      "tbody":[
        <xsl:for-each select="//KJA027">
          <xsl:apply-templates select="." />
        </xsl:for-each>
      ]]
    }
  </xsl:template>

  <!-- ************************************************階層部***************************************************** -->
  <xsl:template match="KJA027">
    <!-- 変数取得 -->
    <xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
    <xsl:variable name="qBH" select="count(.//KJA028[count(.//KJA029)=0])"/>
    <xsl:variable name="qZR" select="count(.//KJA029[count(.//KJA030)=0])"/>
    <xsl:variable name="qBS" select="count(.//KJA030[count(.//KJA031)=0])"/>
    <xsl:variable name="qHR">
      <xsl:call-template name="getqHR">
        <xsl:with-param name="node" select="." />
        <xsl:with-param name="ver" select="$ver"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="rows">
      <xsl:call-template name="zeroToOne">
        <xsl:with-param name="num" select="$qBH + $qZR + $qBS + $qHR"/>
      </xsl:call-template>
    </xsl:variable>

    <!-- 行入力 -->
    @[
    <xsl:choose>
      <xsl:when test="//KJE176/PROPERTY_VALUE='0' or count(.//EDK027-001)=0">
        {"rowspan":"<xsl:value-of select="$rows"/>", "value":""}
        {"rowspan":"<xsl:value-of select="$rows"/>", "value":""}
      </xsl:when>
      <xsl:when test="count(.//KJE055)!=0">
        {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE055/PROPERTY_VALUE"/>"}
        {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select="format-number(.//KJE057/PROPERTY_VALUE, '0.#')"/>"}
      </xsl:when>
    </xsl:choose>
    <xsl:apply-templates select=".//KJA028[1]"/>

    <xsl:if test="count(.//KJA028)!=0">
      <xsl:for-each select=".//KJA028[position()!=1]">
        #[<xsl:apply-templates select="."/>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>

  <!-- ************************************************部品部***************************************************** -->
  <xsl:template match="KJA028">
    <!-- 変数取得 -->
    <xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
    <xsl:variable name="qZR" select="count(.//KJA029[count(.//KJA030)=0])"/>
    <xsl:variable name="qBS" select="count(.//KJA030[count(.//KJA031)=0])"/>
    <xsl:variable name="qHR">
      <xsl:call-template name="getqHR">
        <xsl:with-param name="node" select="." />
        <xsl:with-param name="ver" select="$ver"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="rows">
      <xsl:call-template name="zeroToOne">
        <xsl:with-param name="num" select="$qZR + $qBS + $qHR"/>
      </xsl:call-template>
    </xsl:variable>

    <!-- 行入力 -->
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE059/PROPERTY_VALUE"/>"}
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select="format-number(.//KJE185/PROPERTY_VALUE, '0.#')"/>"}
    <xsl:apply-templates select=".//KJA029[1]"/>

    <xsl:if test="count(.//KJA029)=0">
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      <xsl:if test="$ver='4'">
        {"value":""}
        {"value":""}
        {"value":""}
      </xsl:if>
    </xsl:if>
    <xsl:if test="count(.//KJA029)!=0">
      <xsl:for-each select=".//KJA029[position()!=1]">
        #[<xsl:apply-templates select="."/>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>

  <!-- ************************************************材料部***************************************************** -->
  <xsl:template match="KJA029">
    <!-- 変数取得 -->
    <xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
    <xsl:variable name="qBS" select="count(.//KJA030[count(.//KJA031)=0])"/>
    <xsl:variable name="qHR">
      <xsl:call-template name="getqHR">
        <xsl:with-param name="node" select="." />
        <xsl:with-param name="ver" select="$ver"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="rows">
      <xsl:call-template name="zeroToOne">
        <xsl:with-param name="num" select="$qBS + $qHR"/>
      </xsl:call-template>
    </xsl:variable>

    <!-- 行入力 -->
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:call-template name="getMatUse"><xsl:with-param name="id" select="number(substring(.//KJE187/PROPERTY_VALUE, 1, 2))"/></xsl:call-template>"}
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:call-template name="getMatCLass"><xsl:with-param name="id" select="string(.//KJE189/PROPERTY_VALUE)"/></xsl:call-template>"}
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE189/PROPERTY_VALUE"/>"}
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE190/PROPERTY_VALUE"/>"}
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:if test=".//KJE128/PROPERTY_VALUE!=''"><xsl:value-of select="concat(.//KJE128/PROPERTY_VALUE, .//KJE128/PROPERTY_VALUE/@prefix, 'g')"/></xsl:if>"}
    <xsl:if test="$ver='4'">
      {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE296/PROPERTY_VALUE"/>"}
    </xsl:if>
    <xsl:apply-templates select=".//KJA030[1]"/>
    <xsl:if test="count(.//KJA030)=0">
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      {"value":""}
      <xsl:if test="$ver='4'">
        {"value":""}
        {"value":""}
      </xsl:if>
    </xsl:if>
    <xsl:if test="count(.//KJA030)!=0">
      <xsl:for-each select=".//KJA030[position()!=1]">
        #[<xsl:apply-templates select="."/>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>

  <!-- ************************************************物質部***************************************************** -->
  <xsl:template match="KJA030">
    <!-- 変数取得 -->
    <xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
    <xsl:variable name="qHR">
      <xsl:call-template name="getqHR">
        <xsl:with-param name="node" select="." />
        <xsl:with-param name="ver" select="$ver"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="rows">
      <xsl:call-template name="zeroToOne">
        <xsl:with-param name="num" select="$qHR"/>
      </xsl:call-template>
    </xsl:variable>

    <!-- 行入力 -->
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE071/PROPERTY_VALUE"/>"}
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE070/PROPERTY_VALUE"/>"}
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:if test=".//KJE131/PROPERTY_VALUE!=''"><xsl:value-of select=".//KJE131/PROPERTY_VALUE"/><xsl:value-of select=".//KJE131/PROPERTY_VALUE/@unit"/></xsl:if>"}
    {"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:if test=".//KJE133/PROPERTY_VALUE!=''"><xsl:value-of select="concat(.//KJE133/PROPERTY_VALUE, .//KJE133/PROPERTY_VALUE/@prefix, 'g')"/></xsl:if>"}
    <xsl:if test="$ver='4'">{"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE191/PROPERTY_VALUE"/>"}</xsl:if>

    <xsl:if test="$ver='3'">
      <xsl:apply-templates select=".//KJA031[1]" /><!--<xsl:if test="count(.//KJA031)=1">],</xsl:if>-->
      <xsl:if test="count(.//KJA031)=0">
        {"value":""}
        {"value":""}
        {"value":""}
      </xsl:if>
      <xsl:if test="count(.//KJA031)!=0">
        <xsl:for-each select=".//KJA031[position()!=1]">
          #[<xsl:apply-templates select="." />
        </xsl:for-each>
      </xsl:if>
    </xsl:if>
    <xsl:if test="$ver='4'">
      <xsl:apply-templates select=".//KJA031[count(.//KJE278)!=0][1]"/><!--<xsl:if test="count(.//KJE278)=1">],</xsl:if>-->
      <xsl:if test="count(.//KJE278)=0">
        {"value":""}
        {"value":""}
        {"value":""}
        {"value":""}
      </xsl:if>
      <xsl:if test="count(.//KJE278)!=0">
        <xsl:for-each select=".//KJA031[count(.//KJE278)!=0][position()!=1]">
          #[<xsl:apply-templates select="."/>
        </xsl:for-each>
      </xsl:if>
    </xsl:if>
  </xsl:template>

  <!-- ************************************************法令部***************************************************** -->
  <xsl:template match="KJA031">
    <!-- 変数取得 -->
    <xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>

    <!-- 行入力 -->
    {"value":"<xsl:value-of select=".//KJE192/PROPERTY_VALUE"/>"}
    {"value":"<xsl:call-template name="getLawName"><xsl:with-param name="id" select=".//KJE192/PROPERTY_VALUE"/></xsl:call-template>"}
    <xsl:if test="$ver='3'">
      {"value":"<xsl:value-of select=".//KJE194/PROPERTY_VALUE"/>"}
    </xsl:if>
    <xsl:if test="$ver='4'">
      {"value":"<xsl:value-of select=".//KJE278/PROPERTY_VALUE"/>"}
      {"value":"<xsl:value-of select=".//KJE195/PROPERTY_VALUE"/>"}
    </xsl:if>
  </xsl:template>

  <!-- ************************************************関数郡***************************************************** -->
  <xsl:template name="getqHR">
    <xsl:param name="node" />
    <xsl:param name="ver" />
    <xsl:if test="$ver='3'">
      <xsl:value-of select="count($node//KJA031)" />
    </xsl:if>
    <xsl:if test="$ver='4'">
      <xsl:value-of select="count($node//KJE278)" />
    </xsl:if>
  </xsl:template>

<!--
##########################################################################################
		rowspan変換関数
##########################################################################################-->
  <xsl:template name="zeroToOne">
    <xsl:param name="num" />
		<xsl:if test="$num=0">
			<xsl:value-of select="1"/>
		</xsl:if>
		<xsl:if test="$num!=0">
			<xsl:value-of select="$num"/>
		</xsl:if>
	</xsl:template>

<!--
##########################################################################################
		材質用途取得関数
##########################################################################################-->
	<xsl:template name="getMatUse">
		<xsl:param name="id" />
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
	</xsl:template>

<!--
##########################################################################################
		材質区分取得関数
##########################################################################################-->
	<xsl:template name="getMatCLass">
		<xsl:param name="id" />
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
  </xsl:template>

<!--
##########################################################################################
		法令名取得関数
##########################################################################################-->
	<xsl:template name="getLawName">
		<xsl:param name="id" />
		
		<xsl:if test="$id=''"></xsl:if>
		<xsl:if test="$id='EU01'">RoHS</xsl:if>
		<xsl:if test="$id='EU02'">ELV</xsl:if>
		<xsl:if test="$id='EU03'">CLP Annex VI CMR 1,2</xsl:if>
		<xsl:if test="$id='EU04'">REACH Annex XVII</xsl:if>
		<xsl:if test="$id='EU05'">SVHC</xsl:if>
		<xsl:if test="$id='EU06'">POPs Annex I</xsl:if>
		<xsl:if test="$id='IA00'">任意報告物質</xsl:if>
		<xsl:if test="$id='IA01'">GADSL</xsl:if>
		<xsl:if test="$id='IA02'">IEC62474/JIG</xsl:if>
		<xsl:if test="$id='JP01'">化審法(第一種特定化学物質)</xsl:if>
		<xsl:if test="$id='JP02'">安衛法(製造等禁止物質)</xsl:if>
		<xsl:if test="$id='JP03'">毒劇法(特定毒物)</xsl:if>
		<xsl:if test="$id='OT01'">ESIS PBT</xsl:if>
	</xsl:template>

</xsl:stylesheet>