<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
<!-- *********************************************************************** MSDSplus *********************************************************************** -->
<xsl:template match="/">
<xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
	<div class="accordion">
		<div class="MS1">
			<h4>
				<a href="#"><!--MSDSplusに関する情報-->
					<xsl:call-template name="getJampHeader">
					<xsl:with-param name="id" select="'MS1'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</a>
			</h4>
			<div>
				<table class="KJA034_1 Unique">
					<tr>
						<th><!--言語-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'lang'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="LANG">
						<xsl:value-of select="//LANG"/>
						</td>
					</tr>
					<tr>
						<th><!--文書GPID-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'GPID'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE222">
						<xsl:value-of select="//KJE222/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--文書種類-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'docType'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE223">
						<xsl:value-of select="//KJE223/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--文書番号-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'docNo'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE224">
						<xsl:value-of select="//KJE224/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--フォーマットVer.-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'format'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE225">
						<xsl:value-of select="//KJE225/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
				<table class="KJA034_2 Unique">
					<tr>
						<th><!--提出日-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'resDate'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE226">
						<xsl:value-of select="//KJE226/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--作成日-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'makeDate'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE227">
						<xsl:value-of select="//KJE227/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--改訂日-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'revDate'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE228">
						<xsl:value-of select="//KJE228/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--改訂履歴-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'rev'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE229">
						<xsl:value-of select="//KJE229/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="MS2">
			<h4>
				<a href="#"><!--発行会社情報-->
					<xsl:call-template name="getJampHeader">
					<xsl:with-param name="id" select="'JAMP2'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</a>
			</h4>
			<div>
				<table class="KJA035_1 Unique">
					<tr>
						<th><!--登録機関ID-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'orgID'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE230">
						<xsl:value-of select="//KJE230/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--会社ID-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'coID'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE231">
						<xsl:value-of select="//KJE231/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>JAMP ID</th>
						<td class="KJE234">
						<xsl:value-of select="//KJE234/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
				<table class="KJA035_2 Unique">
					<xsl:if test="$ver='3'">
						<tr>
							<th><!--会社名-->
								<xsl:call-template name="getJampHeader">
								<xsl:with-param name="id" select="'co'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="KJE235">
							<xsl:value-of select="//KJE235/PROPERTY_VALUE"/>
							</td>
						</tr>
					</xsl:if>
					<xsl:if test="$ver='4'">
						<tr>
							<th><!--会社名(英)-->
								<xsl:call-template name="getJampHeader">
								<xsl:with-param name="id" select="'coE'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="KJE235">
							<xsl:value-of select="//KJE235/PROPERTY_VALUE"/>
							</td>
						</tr>
						<tr>
							<th><!--会社名(母)-->
								<xsl:call-template name="getJampHeader">
								<xsl:with-param name="id" select="'coL'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="KJE297">
							<xsl:value-of select="//KJE297/PROPERTY_VALUE"/>
							</td>
						</tr>
					</xsl:if>
					<tr>
						<th><!--追加情報-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'addittion'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE236">
						<xsl:value-of select="//KJE236/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="MS3">
			<h4>
				<a href="#"><!--発行/作成 部門情報-->
					<xsl:call-template name="getJampHeader">
					<xsl:with-param name="id" select="'JAMP3'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</a>
			</h4>
			<div>
				<table class="KJA036_1 Unique">
					<tr>
						<th><!--発行:部門名-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'resDiv'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE237">
						<xsl:value-of select="//KJE237/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--発行:住所-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'resAdr'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE238">
						<xsl:value-of select="//KJE238/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--発行:電話-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'resTel'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE239">
						<xsl:value-of select="//KJE239/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--発行:FAX-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'resFax'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE240">
						<xsl:value-of select="//KJE240/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
				<table class="KJA036_2 Unique">
					<tr>
						<th><!--発行:E-Mail-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'resMail'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE241">
						<xsl:value-of select="//KJE241/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--作成:部門名-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'makeDiv'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE242">
						<xsl:value-of select="//KJE242/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--作成:電話-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'makeTel'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE243">
						<xsl:value-of select="//KJE243/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="MS4">
			<h4>
				<a href="#"><!--依頼者情報-->
					<xsl:call-template name="getJampHeader">
					<xsl:with-param name="id" select="'JAMP4'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</a>
			</h4>
			<div>
				<table class="KJA038 Unique">
					<tr>
						<th><!--登録機関ID-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'orgID'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE244">
						<xsl:value-of select="//KJE244/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--会社ID-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'coID'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE245">
						<xsl:value-of select="//KJE245/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>JAMP ID</th>
						<td class="KJE248">
						<xsl:value-of select="//KJE248/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--会社名-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'co'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE249">
						<xsl:value-of select="//KJE249/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--部門名-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'div'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE256">
						<xsl:value-of select="//KJE256/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--住所-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'adr'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE257">
						<xsl:value-of select="//KJE257/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--担当者氏名-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'contact'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE258">
						<xsl:value-of select="//KJE258/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
				<table class="KJA039 Unique">
					<tr>
						<th><!--電話-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'tel'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE259">
						<xsl:value-of select="//KJE259/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>FAX</th>
						<td class="KJE260">
						<xsl:value-of select="//KJE260/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>E-Mail</th>
						<td class="KJE261">
						<xsl:value-of select="//KJE261/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--備考1-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'remarks1'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE250">
						<xsl:value-of select="//KJE250/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--備考2-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'remarks2'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE251">
						<xsl:value-of select="//KJE251/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th><!--備考3-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'remarks3'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE252">
						<xsl:value-of select="//KJE252/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="MS5">
			<h4>
				<a href="#"><!--型番情報-->
					<xsl:call-template name="getJampHeader">
					<xsl:with-param name="id" select="'JAMP5'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</a>
			</h4>
			<div>
				<table class="KJA040_1 Unique partType">
					<caption><!--依頼者-->
						<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'requester'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</caption>
					<tr>
						<th>1</th>
						<td class="KJE253_1">
						<xsl:value-of select="//KJA040[1]/EDK040-001/KJE253/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>2</th>
						<td class="KJE253_2">
						<xsl:value-of select="//KJA040[2]/EDK040-001/KJE253/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>3</th>
						<td class="KJE253_3">
						<xsl:value-of select="//KJA040[3]/EDK040-001/KJE253/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>4</th>
						<td class="KJE253_4">
						<xsl:value-of select="//KJA040[4]/EDK040-001/KJE253/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>5</th>
						<td class="KJE253_5">
						<xsl:value-of select="//KJA040[5]/EDK040-001/KJE253/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>6</th>
						<td class="KJE253_6">
						<xsl:value-of select="//KJA040[6]/EDK040-001/KJE253/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
				<table class="KJA040_2 Unique partType">
					<caption><!--発行者-->
						<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'resposer'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</caption>
					<tr>
						<th>1</th>
						<td class="KJE254_1">
						<xsl:value-of select="//KJA040[1]/EDK040-001/KJE254/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>2</th>
						<td class="KJE254_2">
						<xsl:value-of select="//KJA040[2]/EDK040-001/KJE254/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>3</th>
						<td class="KJE254_3">
						<xsl:value-of select="//KJA040[3]/EDK040-001/KJE254/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>4</th>
						<td class="KJE254_4">
						<xsl:value-of select="//KJA040[4]/EDK040-001/KJE254/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>5</th>
						<td class="KJE254_5">
						<xsl:value-of select="//KJA040[5]/EDK040-001/KJE254/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>6</th>
						<td class="KJE254_6">
						<xsl:value-of select="//KJA040[6]/EDK040-001/KJE254/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="MS6">
			<h4>
				<a href="#"><!--製品情報-->
					<xsl:call-template name="getJampHeader">
					<xsl:with-param name="id" select="'MS6'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</a>
			</h4>
			<div>
				<table class="KJA042_1 Unique">
					<tr>
						<th><!--製品名-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'itemName'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE265">
						<xsl:value-of select="//KJE265/PROPERTY_VALUE"/>
						</td>
					</tr>
					<xsl:if test="$ver='3'">
						<tr>
							<th><!--製品番号-->
								<xsl:call-template name="getJampHeader">
								<xsl:with-param name="id" select="'item'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="KJE264">
							<xsl:value-of select="//KJE264/PROPERTY_VALUE"/>
							</td>
						</tr>
					</xsl:if>
					<xsl:if test="$ver='4'">
						<tr>
							<th><!--製品番号(英)-->
								<xsl:call-template name="getJampHeader">
								<xsl:with-param name="id" select="'itemE'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="KJE264">
							<xsl:value-of select="//KJE264/PROPERTY_VALUE"/>
							</td>
						</tr>
						<tr>
							<th><!--製品番号(母)-->
								<xsl:call-template name="getJampHeader">
								<xsl:with-param name="id" select="'itemL'"/>
								<xsl:with-param name="lang" select="//toolLang"/>
								</xsl:call-template>
							</th>
							<td class="KJE298">
							<xsl:value-of select="//KJE298/PROPERTY_VALUE"/>
							</td>
						</tr>
					</xsl:if>
					<tr>
						<th><!--一般商品名-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'commonName'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE266">
						<xsl:value-of select="//KJE266/PROPERTY_VALUE"/>
						</td>
					</tr>
					<tr>
						<th>GADSL</th>
						<td class="KJE267">
							<xsl:if test="//KJE267/PROPERTY_VALUE=0">
								<xsl:attribute name="class">ui-state-error </xsl:attribute>
								<span class="ui-icon ui-icon-alert" style="margin-right: 5px;"></span>
							</xsl:if>
							<xsl:call-template name="getCoveredRow">
							<xsl:with-param name="id" select="string(//KJE267/PROPERTY_VALUE)"/>
							<xsl:with-param name="lang" select="string(//toolLang)"/>
							</xsl:call-template>
						</td>
					</tr>
				</table>
				<table class="KJA042_2 Unique">
					<tr>
						<th>JIG</th>
						<td class="KJE268">
							<xsl:if test="//KJE268/PROPERTY_VALUE=0">
								<xsl:attribute name="class">ui-state-error </xsl:attribute>
								<span class="ui-icon ui-icon-alert" style="margin-right: 5px;"></span>
							</xsl:if>
							<xsl:call-template name="getCoveredRow">
							<xsl:with-param name="id" select="string(//KJE268/PROPERTY_VALUE)"/>
							<xsl:with-param name="lang" select="string(//toolLang)"/>
							</xsl:call-template>
						</td>
					</tr>
					<tr>
						<th>PBT</th>
						<td class="KJE269">
							<xsl:if test="//KJE269/PROPERTY_VALUE=0">
								<xsl:attribute name="class">ui-state-error </xsl:attribute>
								<span class="ui-icon ui-icon-alert" style="margin-right: 5px;"></span>
							</xsl:if>
							<xsl:call-template name="getCoveredRow">
							<xsl:with-param name="id" select="string(//KJE269/PROPERTY_VALUE)"/>
							<xsl:with-param name="lang" select="string(//toolLang)"/>
							</xsl:call-template>
						</td>
					</tr>
					<tr>
						<th><!--含有確認-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'contain'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE270">
							<xsl:call-template name="getContained">
							<xsl:with-param name="id" select="string(//KJE270/PROPERTY_VALUE)"/>
							<xsl:with-param name="lang" select="string(//toolLang)"/>
							</xsl:call-template>
						</td>
					</tr>
					<tr>
						<th><!--物質リストVer.-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'subsList'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<td class="KJE271">
						<xsl:value-of select="//KJE271/PROPERTY_VALUE"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="MS7">
			<h4>
				<a href="#"><!--報告法令等の制定/改訂 番号-->
					<xsl:call-template name="getJampHeader">
					<xsl:with-param name="id" select="'MS7'"/>
					<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</a>
			</h4>
			<div>
				<table class="KJA041 mspRow">
					<tr>
						<th>ID</th>
						<th><!--名称-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'name'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
						<th><!--制定/改訂 番号-->
							<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'revNo'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
							</xsl:call-template>
						</th>
					</tr>
				<xsl:apply-templates select="//KJA041"/>
				</table>
			</div>
		</div>
	</div>
</xsl:template>
	
	<!-- ********************************** 報告法令 ************************************************************** -->
	<xsl:template match="KJA041">
		<tr>
			<td id="concat('KJE262_',generate-id())"><xsl:value-of select=".//KJE262/PROPERTY_VALUE"/></td>
			<td>
				<xsl:call-template name="getLawName">
					<xsl:with-param name="id" select="string(.//KJE262/PROPERTY_VALUE)"/>
					<xsl:with-param name="lang" select="string(//toolLang)"/>
				</xsl:call-template>
			</td>
			<td id="concat('KJE263_',generate-id())"><xsl:value-of select=".//KJE263/PROPERTY_VALUE"/></td>
		</tr>
	</xsl:template>
	
	<xsl:include href="xsl/function.xsl"/>
	<xsl:include href="xsl/dicJAMP.xsl"/>
</xsl:stylesheet>