<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
<!-- ****************************************** MSDSplus ********************************************************** -->
	<xsl:template match="/">
    {
		  "thead":[
        [
          {"colspan":"4", "class":"substance", "value":"管理対象物質"},
					{"colspan":"3", "class":"law", "value":"管理対象基準"}
        ],[
				  {"value":"名称"},
					{"value":"CAS No."},
					{"value":"最大含有率"},
					{"value":"備考"},
					{"value":"ID"},
					{"value":"名称"},
					{"value":"該当区分"}
        ]
      ],
      "tbody":[
			  <xsl:apply-templates select="//KJA043" />
      ]
    }
	</xsl:template>
	<!-- ************************************************物質部***************************************************** -->
	<xsl:template match="KJA043">
		<xsl:param name="rows" select="count(.//KJA044)" />
		[
			{"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE272/PROPERTY_VALUE"/>"},
			{"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE273/PROPERTY_VALUE"/>"},
			{"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE274/PROPERTY_VALUE"/><xsl:value-of select=".//KJE274/PROPERTY_VALUE/@unit"/>"},
			{"rowspan":"<xsl:value-of select="$rows"/>", "value":"<xsl:value-of select=".//KJE275/PROPERTY_VALUE"/>"},
			<xsl:apply-templates select=".//KJA044[1]" />
		]
		<xsl:if test="count(.//KJA044)!=0">
			<xsl:for-each select=".//KJA044[position()!=1]">
				[<xsl:apply-templates select="." />]
			</xsl:for-each>
		</xsl:if>
	</xsl:template>

	<!-- ************************************************法令部***************************************************** -->
	<xsl:template match="KJA044">
		<xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
		
		{"value":"<xsl:value-of select=".//KJE276/PROPERTY_VALUE"/>"},
		{"value":"<xsl:call-template name="getLawName"><xsl:with-param name="id" select="string(.//KJE276/PROPERTY_VALUE)"/><xsl:with-param name="lang" select="string(//toolLang)"/></xsl:call-template>"},
		<xsl:if test="$ver!='4'">
			{"value":"<xsl:value-of select=".//KJE277/PROPERTY_VALUE"/>"}
		</xsl:if>
		<xsl:if test="$ver='4'">
			{"value":"<xsl:value-of select=".//KJE278/PROPERTY_VALUE"/>"}
		</xsl:if>
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