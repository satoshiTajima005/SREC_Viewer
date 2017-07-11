<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<div class="accordion">
			<div class="JAMA1">
				<h4>
					<a href="#"><!--ファイル基本情報-->
						<xsl:call-template name="getJamaHeader">
							<xsl:with-param name="id" select="'JAMA1'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</a>
				</h4>
				<div>
					<table class="Unique">
						<tr>
							<th><!--フォーマットVer.-->
								<xsl:call-template name="getJamaHeader">
									<xsl:with-param name="id" select="'VER'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="VER"><xsl:value-of select="//VER"/></td>
						</tr>
						<tr>
							<th><!--出力日-->
								<xsl:call-template name="getJamaHeader">
									<xsl:with-param name="id" select="'CSV_DATE'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="CSV_DATE"><xsl:value-of select="//CSV_DATE"/></td>
						</tr>
						<tr>
							<th><!--データ検証-->
								<xsl:call-template name="getJamaHeader">
									<xsl:with-param name="id" select="'DATA_VALIDATE'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="DATA_VALIDATE"><xsl:value-of select="//DATA_VALIDATE"/></td>
						</tr>
						<tr>
							<th><!--外部リスト-->
								<xsl:call-template name="getJamaHeader">
									<xsl:with-param name="id" select="'EX_LIST'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="EX_LIST"><xsl:value-of select="//EX_LIST"/></td>
						</tr>
					</table>
					<table class="Unique">
						<tr>
							<th><!--カーメーカーコード-->
								<xsl:call-template name="getJamaHeader">
									<xsl:with-param name="id" select="'MAKER_CODE'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="MAKER_CODE"><xsl:value-of select="//MAKER_CODE"/></td>
						</tr>
						<tr>
							<th><!--仕入先コード-->
								<xsl:call-template name="getJamaHeader">
									<xsl:with-param name="id" select="'SUPPLIER_CODE'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="SUPPLIER_CODE"><xsl:value-of select="//SUPPLIER_CODE"/></td>
						</tr>
						<tr>
							<th><!--仕入先名-->
								<xsl:call-template name="getJamaHeader">
									<xsl:with-param name="id" select="'SUPPLIER_NAME'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="SUPPLIER_NAME"><xsl:value-of select="//SUPPLIER_NAME"/></td>
						</tr>
						<tr>
							<th><!--回答期限-->
								<xsl:call-template name="getJamaHeader">
									<xsl:with-param name="id" select="'RES_LIMIT'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="RES_LIMIT"><xsl:value-of select="//RES_LIMIT"/></td>
						</tr>
						<tr>
							<th><!--回答日-->
								<xsl:call-template name="getJamaHeader">
									<xsl:with-param name="id" select="'RES_DATE'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="RES_DATE"><xsl:value-of select="//RES_DATE"/></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:include href="xsl/dicJAMA.xsl"/>
</xsl:stylesheet>
