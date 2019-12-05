<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="no" omit-xml-declaration="no"/>
<!-- *********************************************************************** MSDSplus *********************************************************************** -->
<xsl:template match="/">
<xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
  {
		"MS1":{
      "title":"MSDSplusに関する情報",
      "isShow":true,
      "data": [
        [ 
          {"title":"言語", "class":"LANG", "value":"<xsl:value-of select="//LANG"/>"},
          {"title":"文書GPID", "class":"KJE222", "value":"<xsl:value-of select="//KJE222/PROPERTY_VALUE"/>"},
          {"title":"文書種類", "class":"KJE223", "value":"<xsl:value-of select="//KJE223/PROPERTY_VALUE"/>"},
          {"title":"文書番号", "class":"KJE224", "value":"<xsl:value-of select="//KJE224/PROPERTY_VALUE"/>"},
          {"title":"フォーマット", "class":"KJE225", "value":"<xsl:value-of select="//KJE225/PROPERTY_VALUE"/>"}
        ],[
          {"title":"提出日", "class":"KJE226", "value":"<xsl:value-of select="//KJE226/PROPERTY_VALUE"/>"},
          {"title":"作成日", "class":"KJE227", "value":"<xsl:value-of select="//KJE227/PROPERTY_VALUE"/>"},
          {"title":"改訂日", "class":"KJE228", "value":"<xsl:value-of select="//KJE228/PROPERTY_VALUE"/>"},
          {"title":"改訂履歴", "class":"KJE229", "value":"<xsl:value-of select="//KJE229/PROPERTY_VALUE"/>"}
        ]
      ]
    },
		"MS2":{
      "title":"発行会社情報",
      "isShow":true,
      "data":[
        [
          {"title":"登録機関ID", "class":"KJE230", "value":"<xsl:value-of select="//KJE230/PROPERTY_VALUE"/>"},
          {"title":"会社ID", "class":"KJE231", "value":"<xsl:value-of select="//KJE231/PROPERTY_VALUE"/>"},
          {"title":"JUMP ID", "class":"KJE234", "value":"<xsl:value-of select="//KJE234/PROPERTY_VALUE"/>"}
        ],[
          {"title":"会社名", "class":"KJE235", "value":"<xsl:value-of select="//KJE235/PROPERTY_VALUE"/>"},
          {"title":"会社名(母)", "class":"KJE297", "value":"<xsl:value-of select="//KJE297/PROPERTY_VALUE"/>"},
          {"title":"追加情報", "class":"KJE236", "value":"<xsl:value-of select="//KJE236/PROPERTY_VALUE"/>"}
        ]
      ]
    },
		"MS3":{
      "title":"発行/作成 部門情報",
      "isShow":true,
      "data":[
        [
          {"title":"発行:部門名", "class":"KJE237", "value":"<xsl:value-of select="//KJE237/PROPERTY_VALUE"/>"},
          {"title":"発行:住所", "class":"KJE238", "value":"<xsl:value-of select="//KJE238/PROPERTY_VALUE"/>"},
          {"title":"発行:電話", "class":"KJE239", "value":"<xsl:value-of select="//KJE239/PROPERTY_VALUE"/>"},
          {"title":"発行:FAX", "class":"KJE240", "value":"<xsl:value-of select="//KJE240/PROPERTY_VALUE"/>"}
        ],[
          {"title":"発行:E-Mail", "class":"KJE241", "value":"<xsl:value-of select="//KJE241/PROPERTY_VALUE"/>"},
          {"title":"作成:部門名", "class":"KJE242", "value":"<xsl:value-of select="//KJE242/PROPERTY_VALUE"/>"},
          {"title":"作成:電話", "class":"KJE243", "value":"<xsl:value-of select="//KJE243/PROPERTY_VALUE"/>"}
        ]
      ]
    },
		"MS4":{
      "title":"依頼者情報",
      "isShow":true,
      "data": [
        [
          {"title":"登録機関ID", "class":"KJE244", "value":"<xsl:value-of select="//KJE244/PROPERTY_VALUE"/>"},
          {"title":"会社ID", "class":"KJE245", "value":"<xsl:value-of select="//KJE245/PROPERTY_VALUE"/>"},
          {"title":"JAMP ID", "class":"KJE248", "value":"<xsl:value-of select="//KJE248/PROPERTY_VALUE"/>"},
          {"title":"会社名", "class":"KJE249", "value":"<xsl:value-of select="//KJE249/PROPERTY_VALUE"/>"},
          {"title":"部門名", "class":"KJE256", "value":"<xsl:value-of select="//KJE256/PROPERTY_VALUE"/>"},
          {"title":"住所", "class":"KJE257", "value":"<xsl:value-of select="//KJE257/PROPERTY_VALUE"/>"},
          {"title":"担当者氏名", "class":"KJE258", "value":"<xsl:value-of select="//KJE258/PROPERTY_VALUE"/>"}
        ],[
          {"title":"電話", "class":"KJE259", "value":"<xsl:value-of select="//KJE259/PROPERTY_VALUE"/>"},
          {"title":"FAX", "class":"KJE260", "value":"<xsl:value-of select="//KJE260/PROPERTY_VALUE"/>"},
          {"title":"E-Mail", "class":"KJE261", "value":"<xsl:value-of select="//KJE261/PROPERTY_VALUE"/>"},
          {"title":"備考1", "class":"KJE250", "value":"<xsl:value-of select="//KJE250/PROPERTY_VALUE"/>"},
          {"title":"備考2", "class":"KJE251", "value":"<xsl:value-of select="//KJE251/PROPERTY_VALUE"/>"},
          {"title":"備考3", "class":"KJE252", "value":"<xsl:value-of select="//KJE252/PROPERTY_VALUE"/>"}
        ]
      ]
    },
		"MS5":{<!--型番情報-->
      "isShow":true,
      "KJE253":[<!--依頼者-->
			  "<xsl:value-of select="//KJA040[1]/EDK040-001/KJE253/PROPERTY_VALUE"/>",
			  "<xsl:value-of select="//KJA040[2]/EDK040-001/KJE253/PROPERTY_VALUE"/>",
			  "<xsl:value-of select="//KJA040[3]/EDK040-001/KJE253/PROPERTY_VALUE"/>",
			  "<xsl:value-of select="//KJA040[4]/EDK040-001/KJE253/PROPERTY_VALUE"/>",
			  "<xsl:value-of select="//KJA040[5]/EDK040-001/KJE253/PROPERTY_VALUE"/>",
			  "<xsl:value-of select="//KJA040[6]/EDK040-001/KJE253/PROPERTY_VALUE"/>"
      ],
			"KJE254":[<!--発行者-->
				"<xsl:value-of select="//KJA040[1]/EDK040-001/KJE254/PROPERTY_VALUE"/>",
				"<xsl:value-of select="//KJA040[2]/EDK040-001/KJE254/PROPERTY_VALUE"/>",
				"<xsl:value-of select="//KJA040[3]/EDK040-001/KJE254/PROPERTY_VALUE"/>",
				"<xsl:value-of select="//KJA040[4]/EDK040-001/KJE254/PROPERTY_VALUE"/>",
				"<xsl:value-of select="//KJA040[5]/EDK040-001/KJE254/PROPERTY_VALUE"/>",
				"<xsl:value-of select="//KJA040[6]/EDK040-001/KJE254/PROPERTY_VALUE"/>"
      ]
    },
		"MS6":{
      "title":"製品情報",
      "isShow":true,
      "data":[
        [
          {"title":"製品名", "class":"KJE265", "value":"<xsl:value-of select="//KJE265/PROPERTY_VALUE"/>"},
          {"title":"製品番号", "class":"KJE264", "value":"<xsl:value-of select="//KJE264/PROPERTY_VALUE"/>"},
          {"title":"製品番号(母)", "class":"KJE298", "value":"<xsl:value-of select="//KJE298/PROPERTY_VALUE"/>"},
          {"title":"一般商品名", "class":"KJE266", "value":"<xsl:value-of select="//KJE266/PROPERTY_VALUE"/>"}
        ],[
          {"title":"GADSL", "class":"KJE267", "value":"<xsl:call-template name="getCoveredRow"><xsl:with-param name="id" select="string(//KJE267/PROPERTY_VALUE)"/></xsl:call-template>"},
          {"title":"JIG", "class":"KJE268", "value":"<xsl:call-template name="getCoveredRow"><xsl:with-param name="id" select="string(//KJE268/PROPERTY_VALUE)"/></xsl:call-template>"},
          {"title":"PBT", "class":"KJE269", "value":"<xsl:call-template name="getCoveredRow"><xsl:with-param name="id" select="string(//KJE269/PROPERTY_VALUE)"/></xsl:call-template>"},
          {"title":"含有確認", "class":"KJE270", "value":"<xsl:call-template name="getContained"><xsl:with-param name="id" select="string(//KJE270/PROPERTY_VALUE)"/></xsl:call-template>"},
          {"title":"物質リストVer.", "class":"KJE271", "value":"<xsl:value-of select="//KJE271/PROPERTY_VALUE"/>"}
        ]
      ]
    },
		"MS7":{<!--報告法令等の制定/改訂 番号-->
      "isShow":true,
      "data":[
			  <xsl:apply-templates select="//KJA041"/>
      ]
    }
  }
</xsl:template>
	
	<!-- ********************************** 報告法令 ************************************************************** -->
<xsl:template match="KJA041">
  {
    "ID":"<xsl:value-of select=".//KJE262/PROPERTY_VALUE"/>",
    "name":"<xsl:call-template name="getLawName"><xsl:with-param name="id" select="string(.//KJE262/PROPERTY_VALUE)"/></xsl:call-template>",<!--名称-->
    "rev":"<xsl:value-of select=".//KJE263/PROPERTY_VALUE"/>"<!--制定/改訂 番号-->
  }<xsl:if test="last()!=position()">,</xsl:if>
</xsl:template>

<!--
##########################################################################################
		対象法令	KJE178 KJE179 KJE267 KJE268 KJE269
##########################################################################################-->
<xsl:template name="getCoveredRow">
  <xsl:param name="id" />
  <xsl:if test="$id='0'">対象としない</xsl:if>
  <xsl:if test="$id='1'">対象とする</xsl:if>
</xsl:template>
<!--
##########################################################################################
		含有判定	KJE180 KJE270
##########################################################################################-->
<xsl:template name="getContained">
  <xsl:param name="id" />
  <xsl:if test="$id='0'">含有無し</xsl:if>
  <xsl:if test="$id='1'">含有あり</xsl:if>
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