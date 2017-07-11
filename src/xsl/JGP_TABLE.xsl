<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<table class="compositionTbl">
			<tr>
				<th colspan="5" style="color:black;background:#FF9900;"><!--第二階層/判定部-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'2ndJudge'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th colspan="4" style="color:black;background:#FFFF00;"><!--第二階層/内容部-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'2ndContents'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th colspan="7" style="color:black;background:#FF99CC;"><!--第三階層-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'3rd'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
			</tr>
			<tr>
				<th><!--物質群<br/>分類No.-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'ClassNo'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--物質群名称-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'ClassName'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--含有<br/>判定-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Flag'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--総含有量<br/>(mg)-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'MassTtl'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--追記事項-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Remarks'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--分類<br/>コード-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'UseCode'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--用途目的-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Use'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--部位-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Part'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--含有率<br/>(ppm)-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'RatePpm'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th>CAS No.</th>
				<th><!--含有物質名称-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'SubsName'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--化合物<br/>含有量<br/>(mg)-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'MassSubs'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--用途目的-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Use'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--部位-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Part'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--重量濃度<br/>(wt%)-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'RatePer'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--追記事項-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Remarks'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
			</tr>
			<xsl:apply-templates select="//JGP300"/>
		</table>
	</xsl:template>
<!--********************************************** 300 ********************************************** -->
	<xsl:template match="JGP300">
		<xsl:param name="v600" select="count(.//JGP600[count(.//JGP700)=0])"/>
		<xsl:param name="v700" select="count(.//JGP700)"/>
		<xsl:param name="rows">
			<xsl:call-template name="zeroToOne">
				<xsl:with-param name="num" select="$v600 + $v700"/>
			</xsl:call-template>
		</xsl:param>
		<xsl:if test="count(.//JGP600)!=0">
			<tr>
				<td rowspan="{$rows}"><xsl:value-of select=".//V[1]"/></td>
				<td rowspan="{$rows}">
					<xsl:attribute name="title">
						<xsl:call-template name="getJgpClsDetail">
							<xsl:with-param name="id" select="string(.//V[1])"/>
							<xsl:with-param name="lang" select="string(//toolLang)"/>
						</xsl:call-template>
					</xsl:attribute>
					<xsl:call-template name="getJgpClass">
						<xsl:with-param name="id" select="string(.//V[1])"/>
					</xsl:call-template>
				</td>
				<td rowspan="{$rows}">
					<xsl:if test=".//V[9]='0'">No</xsl:if>
					<xsl:if test=".//V[9]='1'">Yes</xsl:if>
				</td>
				<td rowspan="{$rows}"><xsl:value-of select=".//V[3]"/></td>
				<td rowspan="{$rows}"><xsl:value-of select=".//V[10]"/></td>
				<xsl:apply-templates select=".//JGP600"/>
			</tr>
		</xsl:if>
	</xsl:template>
<!--********************************************** 600 ********************************************** -->
	<xsl:template match="JGP600">
		<xsl:choose>
			<xsl:when test="position()!=1">
				<tr><xsl:call-template name="TD600"><xsl:with-param name="node" select="."/></xsl:call-template></tr>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="TD600"><xsl:with-param name="node" select="."/></xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="TD600">
		<xsl:param name="node"/>
		<xsl:param name="v700" select="count($node//JGP700)"/>
		<xsl:param name="rows">
			<xsl:call-template name="zeroToOne">
				<xsl:with-param name="num" select="$v700"/>
			</xsl:call-template>
		</xsl:param>
		<td rowspan="{$rows}">
			<xsl:attribute name="title">
				<xsl:call-template name="getJgpThreshold">
					<xsl:with-param name="id" select="string($node//V[1])"/>
					<xsl:with-param name="lang" select="string(//toolLang)"/>
					<xsl:with-param name="ver" select="string(//ver)"/>
				</xsl:call-template>
			</xsl:attribute>
			<xsl:value-of select="$node//V[1]"/>
		</td>
		<td rowspan="{$rows}"><xsl:value-of select="$node//V[2]"/></td>
		<td rowspan="{$rows}"><xsl:value-of select="$node//V[3]"/></td>
		<td rowspan="{$rows}"><xsl:value-of select="$node//V[5]"/></td>
		<xsl:choose>
			<xsl:when test="count($node//JGP700)!=0">
				<xsl:apply-templates select="$node//JGP700"/>
			</xsl:when>
			<xsl:otherwise>
				<td/><td/><td/><td/><td/><td/><td/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
<!--********************************************** 700 ********************************************** -->
	<xsl:template match="JGP700">
		<xsl:choose>
			<xsl:when test="position()!=1">
				<tr><xsl:call-template name="TD700"><xsl:with-param name="node" select="."/></xsl:call-template></tr>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="TD700"><xsl:with-param name="node" select="."/></xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="TD700">
		<xsl:param name="node"/>
		<td><xsl:value-of select="$node//V[1]"/></td>
		<td>
			<xsl:call-template name="getJgpCAS">
				<xsl:with-param name="id" select="string($node//V[1])"/>
				<xsl:with-param name="lang" select="string(//toolLang)"/>
			</xsl:call-template>
		</td>
		<td><xsl:value-of select="$node//V[2]"/></td>
		<td><xsl:value-of select="$node//V[3]"/></td>
		<td><xsl:value-of select="$node//V[4]"/></td>
		<td><xsl:value-of select="$node//V[5]"/></td>
		<td><xsl:value-of select="$node//V[6]"/></td>
	</xsl:template>

	<xsl:include href="xsl/function.xsl"/>
	<xsl:include href="xsl/dicJGP.xsl"/>
	
</xsl:stylesheet>
