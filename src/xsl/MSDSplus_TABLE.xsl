<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
<!-- ****************************************** MSDSplus ********************************************************** -->
	<xsl:template match="/">
		<div>
			<table class="compositionTbl">
				<tr>
					<th colspan="4" style="color: black; background-color: #FF99CC;" class="thMsBS"><!--管理対象物質-->
						<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'MsBS'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</th>
					<th colspan="3" style="color: black; background-color: #99CCFF;" class="thMsHR"><!--管理対象基準-->
						<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'MsHR'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</th>
				</tr>
				<tr>
					<th><!--名称-->
						<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'name'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</th>
					<th>CAS No.</th>
					<th><!--最大含有率-->
						<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'maxrate'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</th>
					<th><!--備考-->
						<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'remarks'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</th>
					<th>ID</th>
					<th><!--名称-->
						<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'name'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</th>
					<th><!--該当区分-->
						<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'cls'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</th>
				</tr>
			<xsl:apply-templates select="//KJA043" />
			</table>
		</div>
	</xsl:template>
	<!-- ************************************************物質部***************************************************** -->
	<xsl:template match="KJA043">
		<xsl:param name="rows" select="count(.//KJA044)" />
		
		<tr>
			<td rowspan="{$rows}"><xsl:value-of select=".//KJE272/PROPERTY_VALUE"/></td>
			<td rowspan="{$rows}"><xsl:value-of select=".//KJE273/PROPERTY_VALUE"/></td>
			<td rowspan="{$rows}" class="rate">
				<xsl:call-template name="unitConvR">
					<xsl:with-param name="rate" select=".//KJE274/PROPERTY_VALUE"/>
					<xsl:with-param name="unit" select=".//KJE274/PROPERTY_VALUE/@unit"/>
				</xsl:call-template>
			</td>
			<td rowspan="{$rows}"><xsl:value-of select=".//KJE275/PROPERTY_VALUE"/></td>
			<xsl:apply-templates select=".//KJA044[1]" />
		</tr>
		<xsl:if test="count(.//KJA044)!=0">
			<xsl:for-each select=".//KJA044[position()!=1]">
				<tr><xsl:apply-templates select="." /></tr>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>

	<!-- ************************************************法令部***************************************************** -->
	<xsl:template match="KJA044">
		<xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
		
		<td><xsl:value-of select=".//KJE276/PROPERTY_VALUE"/></td>
		<td>
			<xsl:call-template name="getLawName">
				<xsl:with-param name="id" select="string(.//KJE276/PROPERTY_VALUE)"/>
				<xsl:with-param name="lang" select="string(//toolLang)"/>
			</xsl:call-template>
		</td>
		<xsl:if test="$ver='3'">
			<td><xsl:value-of select=".//KJE277/PROPERTY_VALUE"/></td>
		</xsl:if>
		<xsl:if test="$ver='4'">
			<td><xsl:value-of select=".//KJE278/PROPERTY_VALUE"/></td>
		</xsl:if>
	</xsl:template>

	<xsl:include href="xsl/function.xsl"/>
	<xsl:include href="xsl/dicJAMP.xsl"/>
</xsl:stylesheet>