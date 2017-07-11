<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes" />
	<xsl:template match="Attachment">
		<tr>
			<td>
				<xsl:value-of select="@fileName" />
			</td>
			<td>
				<xsl:value-of select="@fileType" />
			</td>
			<td data-base64="{@data}">
				<button>
					<span class="ui-icon ui-icon-document"></span>
				</button>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="Main">
		<div class="accordion">
			<div class="IEC1">
				<h4>
					<a href="#">
						<xsl:call-template name="getIecHeader">
							<!--文書情報-->
							<xsl:with-param name="id" select="string('IEC1')" />
							<xsl:with-param name="lang" select="string(//toolLang)" />
						</xsl:call-template>
					</a>
				</h4>
				<div>
					<table class="docInfo_1 Unique">
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--スキーマDB Ver.-->
									<xsl:with-param name="id" select="string('schemaDatabaseVersion')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="@schemaDatabaseVersion" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--物質DB Ver.-->
									<xsl:with-param name="id" select="string('substanceDatabaseVersion')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="@substanceDatabaseVersion" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--ツール機関-->
									<xsl:with-param name="id" select="string('toolAuthority')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="ToolNameVersionID/@authority" />
							</td>
						</tr>
					</table>
					<table class="docInfo_2 Unique">
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--ツールID-->
									<xsl:with-param name="id" select="string('toolID')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="ToolNameVersionID/@identity" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--編集保護-->
									<xsl:with-param name="id" select="string('fieldLock')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/@fieldLock" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--モード-->
									<xsl:with-param name="id" select="string('mode')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:call-template name="getIecHeader">
									<xsl:with-param name="id" select="string(BusinessInfo/@mode)" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="IEC2">
				<h4>
					<a href="#">
						<xsl:call-template name="getIecHeader">
							<!--添付文書-->
							<xsl:with-param name="id" select="string('IEC2')" />
							<xsl:with-param name="lang" select="string(//toolLang)" />
						</xsl:call-template>
					</a>
				</h4>
				<div>
					<table class="attach Unique">
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--ファイル名-->
									<xsl:with-param name="id" select="string('fileName')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--ファイル種類-->
									<xsl:with-param name="id" select="string('fileType')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--開く-->
									<xsl:with-param name="id" select="string('open')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
						</tr>
						<xsl:apply-templates select="//Attachment" />
					</table>
				</div>
			</div>
			<div class="IEC3">
				<h4>
					<a href="#">
						<xsl:call-template name="getIecHeader">
							<!--連絡先情報-->
							<xsl:with-param name="id" select="string('IEC3')" />
							<xsl:with-param name="lang" select="string(//toolLang)" />
						</xsl:call-template>
					</a>
				</h4>
				<div>
					<table class="contactInfo Unique">
						<tr>
							<th></th>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--依頼者-->
									<xsl:with-param name="id" select="string('requester')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--回答者-->
									<xsl:with-param name="id" select="string('contact')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--回答承認者-->
									<xsl:with-param name="id" select="string('authorizer')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--企業名-->
									<xsl:with-param name="id" select="string('companyName')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/RequestCompany/@name" />
							</td>
							<td colspan="2">
								<xsl:value-of select="BusinessInfo/Response/SupplyCompany/@name" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--ID割当機関-->
									<xsl:with-param name="id" select="string('companyAuthority')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/RequestCompany/UniqueID/@authority" />
							</td>
							<td colspan="2">
								<xsl:value-of select="BusinessInfo/Response/SupplyCompany/UniqueID/@authority" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--企業ID-->
									<xsl:with-param name="id" select="string('companyID')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/RequestCompany/UniqueID/@identity" />
							</td>
							<td colspan="2">
								<xsl:value-of select="BusinessInfo/Response/SupplyCompany/UniqueID/@identity" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--国-->
									<xsl:with-param name="id" select="string('country')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@country" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@country" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@country" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--都道府県-->
									<xsl:with-param name="id" select="string('stateProvince')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@stateProvince" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@stateProvince" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@stateProvince" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--市区町村-->
									<xsl:with-param name="id" select="string('city')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@city" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@city" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@city" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--番地-->
									<xsl:with-param name="id" select="string('street')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@street" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@street" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@street" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--郵便番号-->
									<xsl:with-param name="id" select="string('postalCode')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@postalCode" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@postalCode" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@postalCode" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--名前-->
									<xsl:with-param name="id" select="string('contactName')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@name" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@name" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@name" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--役職-->
									<xsl:with-param name="id" select="string('title')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@title" />
							</td>
							<td>
								<xsl:value-of select=" BusinessInfo/Response/Contact/@title" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@title" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--email-->
									<xsl:with-param name="id" select="string('email')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@email" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@email" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@email" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--電話番号-->
									<xsl:with-param name="id" select="string('phone')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@phone" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@phone" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@phone" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--内線番号-->
									<xsl:with-param name="id" select="string('internalAddress')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@internalAddress" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@internalAddress" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@internalAddress" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--備考-->
									<xsl:with-param name="id" select="string('comment')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/Contact/@comment" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Contact/@comment" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/Authorizer/@comment" />
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="IEC4">
				<h4>
					<a href="#">
						<!--文書追加情報-->
						<xsl:call-template name="getIecHeader">
							<xsl:with-param name="id" select="string('IEC4')" />
							<xsl:with-param name="lang" select="string(//toolLang)" />
						</xsl:call-template>
					</a>
				</h4>
				<div>
					<table class="docOptionalInfo Unique">
						<tr>
							<th class="w100"></th>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--依頼-->
									<xsl:with-param name="id" select="string('request')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--回答-->
									<xsl:with-param name="id" select="string('response')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
						</tr>
						<tr>
							<th class="w100">
								<xsl:call-template name="getIecHeader">
									<!--整理番号-->
									<xsl:with-param name="id" select="string('docID')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/@docID" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/@docID" />
							</td>
						</tr>
						<tr>
							<th class="w100">
								<xsl:call-template name="getIecHeader">
									<!--実施日-->
									<xsl:with-param name="id" select="string('actionDate')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/@data" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/@data" />
							</td>
						</tr>
						<tr>
							<th class="w100">
								<xsl:call-template name="getIecHeader">
									<!--取引先ID-->
									<xsl:with-param name="id" select="string('internalSupplierID')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/@internalSupplierID" />
							</td>
							<td>-</td>
						</tr>
						<tr>
							<th class="w100">
								<xsl:call-template name="getIecHeader">
									<!--回答期限-->
									<xsl:with-param name="id" select="string('respondByDate')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/@respondByDate" />
							</td>
							<td>-</td>
						</tr>
						<tr>
							<th class="w100">
								<xsl:call-template name="getIecHeader">
									<!--備考-->
									<xsl:with-param name="id" select="string('comment')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="BusinessInfo/Request/@comment" />
							</td>
							<td>
								<xsl:value-of select="BusinessInfo/Response/@comment" />
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="IEC5">
				<h4>
					<a href="#">
						<!--問い合わせ情報-->
						<xsl:call-template name="getIecHeader">
							<xsl:with-param name="id" select="string('IEC5')" />
							<xsl:with-param name="lang" select="string(//toolLang)" />
						</xsl:call-template>
					</a>
				</h4>
				<div>
					<table class="query Unique">
						<tr>
							<th class="w100">
								<xsl:call-template name="getIecHeader">
									<!--ID-->
									<xsl:with-param name="id" select="string('additionalID')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<th class="w100">
								<xsl:call-template name="getIecHeader">
									<!--返答要求-->
									<xsl:with-param name="id" select="string('additionalResponse')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<th>
								<xsl:call-template name="getIecHeader">
									<!--内容-->
									<xsl:with-param name="id" select="string('additionalStatement')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
						</tr>
						<xsl:for-each select="./Product/QueryList">
							<xsl:for-each select="./Query">
								<tr>
									<td class="w100">
										<xsl:value-of select="../@identity" />
									</td>
									<td class="w100">
										<xsl:value-of select="@response" />
									</td>
									<td>
										<xsl:value-of select="@statement" />
									</td>
								</tr>
							</xsl:for-each>
						</xsl:for-each>
					</table>
				</div>
			</div>
			<div class="IEC6">
				<h4>
					<a href="#">
						<!--製品情報-->
						<xsl:call-template name="getIecHeader">
							<xsl:with-param name="id" select="string('IEC6')" />
							<xsl:with-param name="lang" select="string(//toolLang)" />
						</xsl:call-template>
					</a>
				</h4>
				<div>
					<table class="productInfo_1 Unique">
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---シリーズ名-->
									<xsl:with-param name="id" select="string('familyName')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/@productFamilyName" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---回答単位-->
									<xsl:with-param name="id" select="string('unitType')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/@unitType" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---製品備考-->
									<xsl:with-param name="id" select="string('productComment')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/@comment" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---発効日-->
									<xsl:with-param name="id" select="string('effectiveDate')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/@effectiveDate" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---型番-->
									<xsl:with-param name="id" select="string('productID')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/@identifier" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---名称-->
									<xsl:with-param name="id" select="string('productName')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/@name" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---依頼者名-->
									<xsl:with-param name="id" select="string('requesterName')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/@requesterName" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---依頼者型番-->
									<xsl:with-param name="id" select="string('requesterProductID')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/@requesterIdentifier" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---製造場所-->
									<xsl:with-param name="id" select="string('manufacturingSite')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/@manufacturingSite" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---バージョン-->
									<xsl:with-param name="id" select="string('version')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/@version" />
							</td>
						</tr>
					</table>
					<table class="productInfo_2 Unique">
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---質量-->
									<xsl:with-param name="id" select="string('mass')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/Mass/@mass" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---質量単位-->
									<xsl:with-param name="id" select="string('unitOfMeasure')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/Mass/@unitOfMeasure" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---質量+許容値-->
									<xsl:with-param name="id" select="string('plusTolerance')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/Mass/@positiveTolerance" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---質量-許容値-->
									<xsl:with-param name="id" select="string('minusTolerance')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/Mass/@negativeTolerance" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---質量比率-->
									<xsl:with-param name="id" select="string('massPercent')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/MassPercent/@massPercent" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---比率+許容値-->
									<xsl:with-param name="id" select="string('percentPlusTolerance')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/MassPercent/@positiveTolerance" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---比率-許容値-->
									<xsl:with-param name="id" select="string('percentMinusTolerance')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<xsl:value-of select="Product/ProductID/MassPercent/@negativeTolerance" />
							</td>
						</tr>
						<tr>
							<th>
								<xsl:call-template name="getIecHeader">
									<!---署名情報-->
									<xsl:with-param name="id" select="string('signature')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</th>
							<td>
								<textarea readonly="readonly">
									<xsl:copy-of select=".//Signature" />
								</textarea>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</xsl:template>
	<!--####################################### インクルード #######################################-->
	<xsl:include href="xsl/dicIEC62474.xsl" />

</xsl:stylesheet>