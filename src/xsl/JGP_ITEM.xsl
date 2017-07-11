<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<table class="Unique">
			<caption><!--依頼元-->
				<xsl:call-template name="getJgpHeader">
					<xsl:with-param name="id" select="'ReqInfo'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
				</xsl:call-template>
			</caption>
			<tr>
				<th><!--製品番号-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'ItemNo'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at1"><xsl:value-of select=".//V[1]"/></td>
			</tr>
			<tr>
				<th><!--製品名称-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'ItemName'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at2"><xsl:value-of select=".//V[2]"/></td>
			</tr>
			<tr>
				<th><!--項目1-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Item1'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at3"><xsl:value-of select=".//V[3]"/></td>
			</tr>
			<tr>
				<th><!--項目2-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Item2'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at4"><xsl:value-of select=".//V[4]"/></td>
			</tr>
			<tr>
				<th><!--項目3-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Item3'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at5"><xsl:value-of select=".//V[5]"/></td>
			</tr>
		</table>
		<table class="Unique">
			<caption><!--回答元-->
				<xsl:call-template name="getJgpHeader">
					<xsl:with-param name="id" select="'ResInfo'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
				</xsl:call-template>
			</caption>
			<tr>
				<th><!--メーカー名-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Maker'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at6"><xsl:value-of select=".//V[6]"/></td>
			</tr>
			<tr>
				<th><!--製品番号-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'ItemNo'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at7"><xsl:value-of select=".//V[7]"/></td>
			</tr>
			<tr>
				<th><!--製品名称-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'ItemName'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at29"><xsl:value-of select=".//V[29]"/></td>
			</tr>
			<tr>
				<th><!--項目1-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Item1'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at8"><xsl:value-of select=".//V[8]"/></td>
			</tr>
			<tr>
				<th><!--項目2-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Item2'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at9"><xsl:value-of select=".//V[9]"/></td>
			</tr>
			<tr>
				<th><!--項目3-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Item3'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at10"><xsl:value-of select=".//V[10]"/></td>
			</tr>
		</table>
		<table class="Unique">
			<caption><!--材料特定情報-->
				<xsl:call-template name="getJgpHeader">
					<xsl:with-param name="id" select="'MatSpec'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
				</xsl:call-template>
			</caption>
			<tr>
				<th><!--グレードNo.-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Grade'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at23"><xsl:value-of select=".//V[23]"/></td>
			</tr>
			<tr>
				<th><!--金属記号/JIS記号-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'JIS'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at24"><xsl:value-of select=".//V[24]"/></td>
			</tr>
			<tr>
				<th><!--メーカー着色No.-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'ColorNo'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at25"><xsl:value-of select=".//V[25]"/></td>
			</tr>
			<tr>
				<th><!--板厚(mm)-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Thick'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at26"><xsl:value-of select=".//V[26]"/></td>
			</tr>
			<tr>
				<th><!--色-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Color'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at27"><xsl:value-of select=".//V[27]"/></td>
			</tr>
			<tr>
				<th><!--径(mm)-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Diameter'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at28"><xsl:value-of select=".//V[28]"/></td>
			</tr>
		</table>
		<table class="Unique">
			<caption><!--その他-->
				<xsl:call-template name="getJgpHeader">
					<xsl:with-param name="id" select="'Other'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
				</xsl:call-template>
			</caption>
			<tr>
				<th><!--DataVer-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'DataVer'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at21"><xsl:value-of select=".//V[21]"/></td>
			</tr>
			<tr>
				<th><!--改訂日-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'RevData'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at22"><xsl:value-of select=".//V[22]"/></td>
			</tr>
			<tr>
				<th><!--調査単位-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Unit'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at11"><xsl:value-of select=".//V[11]"/></td>
			</tr>
			<tr>
				<th><!--質量(g/調査単位)-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'Mass'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at12"><xsl:value-of select=".//V[12]"/></td>
			</tr>
			<tr>
				<th><!--含有判定-->
					<xsl:call-template name="getJgpHeader">
						<xsl:with-param name="id" select="'ttlFlag'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<td class="200at30">
					<xsl:variable name="Judge" select=".//V[30]" />
					<xsl:if test="$Judge='0'">No</xsl:if>
					<xsl:if test="$Judge='1'">
						<xsl:attribute name="class">
							ui-state-error
						</xsl:attribute>
						<span class="ui-icon ui-icon-alert" style="float:left; margin-right:5px;"></span>Yes
					</xsl:if>
				</td>
			</tr>
		</table>
	</xsl:template>
	
	<xsl:include href="xsl/dicJGP.xsl"/>
</xsl:stylesheet>