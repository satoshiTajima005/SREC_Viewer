<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<xsl:variable name="ver" select="//JGP100/V[2]" />
		<xsl:choose>
			<xsl:when test="$ver='4.00' or $ver='4.01' or $ver='4.02' or $ver='4.10' or $ver='4.11' or $ver='4.20' or $ver='4.30' or $ver='4.31'">
				<xsl:call-template name="valid" />
			</xsl:when>
			<xsl:otherwise></xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="valid">
		<div class="accordion">
			<div class="JgpHeader">
				<div class="JGP1">
					<h4>
						<a href="#"><!--JGPファイル情報-->
							<xsl:call-template name="getJgpHeader">
								<xsl:with-param name="id" select="'JGP1'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</a>
					</h4>
					<div>
						<table class="Unique">
							<tr>
								<th><!--整理番号-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'RefNo'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="100at3"><xsl:value-of select="//JGP100/V[3]"/></td>
							</tr>
							<tr>
								<th><!--依頼元記入日-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'EntryData'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="100at4"><xsl:value-of select="//JGP100/V[4]"/></td>
							</tr>
							<tr>
								<th><!--DataFormatVer-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'FormatVer'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="100at2"><xsl:value-of select="//JGP100/V[2]"/></td>
							</tr>
						</table>
						<table class="Unique">
							<tr>
								<th><!--LoadFileVer-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'LoadVer'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="100at7"><xsl:value-of select="//JGP100/V[7]"/></td>
							</tr>
							<tr>
								<th><!--言語-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Lang'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="100at1">
									<xsl:variable name="LANG" select="//JGP100/V[1]"/>
									<xsl:if test="$LANG='0'">JPN</xsl:if>
									<xsl:if test="$LANG='1'">ENG</xsl:if>
									<xsl:if test="$LANG='2'">CHN</xsl:if>
								</td>
							</tr>
							<tr>
								<th><!--回答元記入日-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'ResData'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="100at8"><xsl:value-of select="//JGP100/V[8]"/></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="JGP2">
					<h4>
						<a href="#"><!--依頼元/回答元 情報-->
							<xsl:call-template name="getJgpHeader">
								<xsl:with-param name="id" select="'JGP2'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</a>
					</h4>
					<div>
						<table class="UniqueJGP">
							<caption><!--依頼元情報-->
								<xsl:call-template name="getJgpHeader">
									<xsl:with-param name="id" select="'ReqInfo'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</caption>
							<tr>
								<th/>
								<th><!--英語-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Eng'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<th><!--日本語-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Local'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
							</tr>
							<tr>
								<th><!--会社名-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'CoName'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="110at19"><xsl:value-of select="//JGP110/V[19]"/></td>
								<td class="120at7"><xsl:value-of select="//JGP120/V[7]"/></td>
							</tr>
							<tr><th>DUNS No.</th><td colspan="2" class="110at20 wDouble"><xsl:value-of select="//JGP110/V[20]"/></td></tr>
							<tr>
								<th><!--部署-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Div'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="110at1"><xsl:value-of select="//JGP110/V[1]"/></td>
								<td class="120at1"><xsl:value-of select="//JGP120/V[1]"/></td>
							</tr>
							<tr>
								<th><!--担当者-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Contact'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="110at2"><xsl:value-of select="//JGP110/V[2]"/></td>
								<td class="120at2"><xsl:value-of select="//JGP120/V[2]"/></td>
							</tr>
							<tr><th>TEL</th><td colspan="2" class="110at3 wDouble"><xsl:value-of select="//JGP110/V[3]"/></td></tr>
							<tr><th>FAX</th><td colspan="2" class="110at4 wDouble"><xsl:value-of select="//JGP110/V[4]"/></td></tr>
							<tr><th>E-Mail</th><td colspan="2" class="110at5 wDouble"><xsl:value-of select="//JGP110/V[5]"/></td></tr>
							<tr>
								<th><!--連絡事項-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'AddInfo'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="110at23"><xsl:value-of select="//JGP110/V[23]"/></td>
								<td class="120at9"><xsl:value-of select="//JGP120/V[9]"/></td>
							</tr>
						</table>
						<table class="UniqueJGP">
							<caption><!--回答元情報-->
								<xsl:call-template name="getJgpHeader">
									<xsl:with-param name="id" select="'ResInfo'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</caption>
							<tr>
								<th />
								<th><!--英語-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Eng'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<th><!--日本語-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Local'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
							</tr>
							<tr>
								<th><!--会社名-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'CoName'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="110at9"><xsl:value-of select="//JGP110/V[9]"/></td>
								<td class="120at3"><xsl:value-of select="//JGP120/V[3]"/></td>
							</tr>
							<tr><th>DUNS No.</th><td colspan="2" class="110at21 wDouble"><xsl:value-of select="//JGP110/V[21]"/></td></tr>
							<tr>
								<th><!--住所-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Adr'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="110at10"><xsl:value-of select="//JGP110/V[10]"/></td>
								<td class="120at4"><xsl:value-of select="//JGP120/V[4]"/></td>
							</tr>
							<tr>
								<th><!--部署-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Div'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="110at11"><xsl:value-of select="//JGP110/V[11]"/></td>
								<td class="120at5"><xsl:value-of select="//JGP120/V[5]"/></td>
							</tr>
							<tr>
								<th><!--記入者-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'Contact'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="110at12"><xsl:value-of select="//JGP110/V[12]"/></td>
								<td class="120at6"><xsl:value-of select="//JGP120/V[6]"/></td>
							</tr>
							<tr><th>TEL</th><td colspan="2" class="110at13 wDouble"><xsl:value-of select="//JGP110/V[13]"/></td></tr>
							<tr><th>FAX</th><td colspan="2" class="110at14 wDouble"><xsl:value-of select="//JGP110/V[14]"/></td></tr>
							<tr><th>E-Mail</th><td colspan="2" class="110at15 wDouble"><xsl:value-of select="//JGP110/V[15]"/></td></tr>
							<tr>
								<th><!--追加情報-->
									<xsl:call-template name="getJgpHeader">
										<xsl:with-param name="id" select="'AddInfo'"/>
										<xsl:with-param name="lang" select="//toolLang"/>
									</xsl:call-template>
								</th>
								<td class="110at22"><xsl:value-of select="//JGP110/V[22]"/></td>
								<td class="120at8"><xsl:value-of select="//JGP120/V[8]"/></td>
							</tr>
						</table>
						<table class="UniqueJGP iraimoto">
							<caption><!--依頼元管理項目-->
								<xsl:call-template name="getJgpHeader">
									<xsl:with-param name="id" select="'ReqManagement'"/>
									<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</caption>
							<tr><th>1</th><td class="110at6"><xsl:value-of select="//JGP110/V[6]"/></td></tr>
							<tr><th>2</th><td class="110at7"><xsl:value-of select="//JGP110/V[7]"/></td></tr>
							<tr><th>3</th><td class="110at8"><xsl:value-of select="//JGP110/V[8]"/></td></tr>
							<tr><th>4</th><td class="110at16"><xsl:value-of select="//JGP110/V[16]"/></td></tr>
							<tr><th>5</th><td class="110at17"><xsl:value-of select="//JGP110/V[17]"/></td></tr>
							<tr><th>6</th><td class="110at18"><xsl:value-of select="//JGP110/V[18]"/></td></tr>
						</table>
					</div>
				</div>
				<div class="JGP3">
					<h4>
						<a href="#"><!--アイテムセレクタ-->
							<xsl:call-template name="getJgpHeader">
								<xsl:with-param name="id" select="'JGP3'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</a>
					</h4>
					<div>
						<table class="ItemSelector">
							<thead>
								<tr>
									<th style="width:15px;"><!--選択マーキング--></th>
									<th><!--依頼元製品番号-->
										<xsl:call-template name="getJgpHeader">
											<xsl:with-param name="id" select="'ReqInfo'"/>
											<xsl:with-param name="lang" select="//toolLang"/>
										</xsl:call-template>&#32;
										<xsl:call-template name="getJgpHeader">
											<xsl:with-param name="id" select="'ItemNo'"/>
											<xsl:with-param name="lang" select="//toolLang"/>
										</xsl:call-template>
									</th>
									<th><!--回答元製品番号-->
										<xsl:call-template name="getJgpHeader">
											<xsl:with-param name="id" select="'ResInfo'"/>
											<xsl:with-param name="lang" select="//toolLang"/>
										</xsl:call-template>&#32;
										<xsl:call-template name="getJgpHeader">
											<xsl:with-param name="id" select="'ItemNo'"/>
											<xsl:with-param name="lang" select="//toolLang"/>
										</xsl:call-template>
									</th>
									<th><!--製品名称-->
										<xsl:call-template name="getJgpHeader">
											<xsl:with-param name="id" select="'ItemName'"/>
											<xsl:with-param name="lang" select="//toolLang"/>
										</xsl:call-template>
									</th>
									<th><!--改訂日-->
										<xsl:call-template name="getJgpHeader">
											<xsl:with-param name="id" select="'RevData'"/>
											<xsl:with-param name="lang" select="//toolLang"/>
										</xsl:call-template>
									</th>
									<th><!--調査単位-->
										<xsl:call-template name="getJgpHeader">
											<xsl:with-param name="id" select="'Unit'"/>
											<xsl:with-param name="lang" select="//toolLang"/>
										</xsl:call-template>
									</th>
									<th><!--質量(g/調査単位)-->
										<xsl:call-template name="getJgpHeader">
											<xsl:with-param name="id" select="'Mass'"/>
											<xsl:with-param name="lang" select="//toolLang"/>
										</xsl:call-template>
									</th>
									<th><!--含有判定-->
										<xsl:call-template name="getJgpHeader">
											<xsl:with-param name="id" select="'ttlFlag'"/>
											<xsl:with-param name="lang" select="//toolLang"/>
										</xsl:call-template>
									</th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="//JGP200">
									<tr class="{concat('JGP200_', position())}">
										<td style="text-align:center;"></td>
										<td><xsl:value-of select="./V[1]"/></td>
										<td><xsl:value-of select="./V[7]"/></td>
										<td><xsl:value-of select="./V[29]"/></td>
										<td><xsl:value-of select="./V[22]"/></td>
										<td><xsl:value-of select="./V[11]"/></td>
										<td><xsl:value-of select="./V[12]"/></td>
										<td>
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
								</xsl:for-each>
							</tbody>
						</table>
					</div>
				</div>
				<div class="JGP4">
					<h4>
						<a href="#"><!--製品/部品/材料情報-->
							<xsl:call-template name="getJgpHeader">
								<xsl:with-param name="id" select="'JGP4'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</a>
					</h4>
					<div class="ItemHeader"/>
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:include href="xsl/dicJGP.xsl"/>
</xsl:stylesheet>
