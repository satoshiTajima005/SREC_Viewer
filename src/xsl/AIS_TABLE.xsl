<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
<!-- ********************************** AIS *********************************************************************** -->
<xsl:template match="/">
	<xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
	<table class="compositionTbl">
		<tbody>
			<tr>
				<th colspan="2" style="color:black; background:#FF9900;"><!--階層-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'KS'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th colspan="2" style="color:black; background:#FFFF00;"><!--部品-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'BH'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th colspan="{$ver+2}" style="color:black; background:#CCFFCC;"><!--材質-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'ZR'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th colspan="5" style="color:black; background:#FF99CC;"><!--報告物質-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'BS'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th colspan="4" style="color:black; background:#99CCFF;"><!--対象法令等-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'HR'"/>
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
				<th class="w12"><!--員数-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'qua'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<!--レベル
				<th class="w12">
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'lv'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				-->
				<th class="w100"><!--名称-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'name'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th class="w12"><!--員数-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'qua'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<!--レベル
				<th class="w12">
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'lv'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				-->
				<th class="w100"><!--用途-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'use'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th class="w100"><!--名称-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'name'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--分類記号-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'symbol'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--公的規格-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'standerd'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--質量-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'mass'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<xsl:if test="$ver='4'">
					<th><!--備考-->
						<xsl:call-template name="getJampHeader">
							<xsl:with-param name="id" select="'remarks'"/>
							<xsl:with-param name="lang" select="//toolLang"/>
						</xsl:call-template>
					</th>
				</xsl:if>
				<th>CAS No.</th>
				<th class="w100"><!--名称-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'name'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--含有率-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'rate'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
				<th><!--質量-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'mass'"/>
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
				<th><!--備考-->
					<xsl:call-template name="getJampHeader">
						<xsl:with-param name="id" select="'remarks'"/>
						<xsl:with-param name="lang" select="//toolLang"/>
					</xsl:call-template>
				</th>
			</tr>
			<xsl:for-each select="//KJA027">
				<tr>
				<xsl:apply-templates select="." />
				</tr>
			</xsl:for-each>
		</tbody>
	</table>
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
		<xsl:choose>
			<xsl:when test="//KJE176/PROPERTY_VALUE='0' or count(.//EDK027-001)=0">
				<td rowspan="{$rows}"/>
				<td class="w12" rowspan="{$rows}"/>
				<!-- <td class="w12" rowspan="{$rows}"/> -->
			</xsl:when>
			<xsl:when test="count(.//KJE055)!=0">
				<td rowspan="{$rows}"><xsl:value-of select=".//KJE055/PROPERTY_VALUE"/></td>
				<td class="w12" rowspan="{$rows}"><xsl:value-of select="format-number(.//KJE057/PROPERTY_VALUE, '0.#')"/></td>
				<!-- <td class="w12" rowspan="{$rows}"><xsl:value-of select=".//KJE184/PROPERTY_VALUE"/></td> -->
			</xsl:when>
		</xsl:choose>
		<xsl:apply-templates select=".//KJA028[1]"/>
		
		<xsl:if test="count(.//KJA028)!=0">
			<xsl:for-each select=".//KJA028[position()!=1]">
				<tr><xsl:apply-templates select="."/></tr>
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
		<td class="w100" rowspan="{$rows}"><xsl:value-of select=".//KJE059/PROPERTY_VALUE"/></td>
		<td class="w12" rowspan="{$rows}"><xsl:value-of select="format-number(.//KJE185/PROPERTY_VALUE, '0.#')"/></td>
		<!-- <td class="w12" rowspan="{$rows}"><xsl:value-of select=".//KJE186/PROPERTY_VALUE"/></td> -->
		<xsl:apply-templates select=".//KJA029[1]"/>
		
		<xsl:if test="count(.//KJA029)=0">
			<td/><td/><td/><td/><td/><td/><td/><td/><td/><td/><td/><td/><td/><td/>
			<xsl:if test="$ver='4'"><td/></xsl:if>
		</xsl:if>
		<xsl:if test="count(.//KJA029)!=0">
			<xsl:for-each select=".//KJA029[position()!=1]">
				<tr><xsl:apply-templates select="."/></tr>
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
		<td class="w100" rowspan="{$rows}">
			<xsl:call-template name="getMatUse">
				<xsl:with-param name="id" select="number(substring(.//KJE187/PROPERTY_VALUE, 1, 2))"/>
				<xsl:with-param name="lang" select="string(//toolLang)"/>
			</xsl:call-template>
		</td>
		<td class="w100" rowspan="{$rows}">
			<xsl:call-template name="getMatCLass">
				<xsl:with-param name="id" select="string(.//KJE189/PROPERTY_VALUE)"/>
				<xsl:with-param name="lang" select="string(//toolLang)"/>
			</xsl:call-template>
		</td>
		<td rowspan="{$rows}"><xsl:value-of select=".//KJE189/PROPERTY_VALUE"/></td>
		<td rowspan="{$rows}"><xsl:value-of select=".//KJE190/PROPERTY_VALUE"/></td>
		<td rowspan="{$rows}" class="weight">
			<xsl:if test=".//KJE128/PROPERTY_VALUE!=''">
				<xsl:value-of select="concat(.//KJE128/PROPERTY_VALUE, .//KJE128/PROPERTY_VALUE/@prefix, 'g')"/>
			</xsl:if>
		</td>
		<xsl:if test="$ver='4'"><td rowspan="{$rows}"><xsl:value-of select=".//KJE296/PROPERTY_VALUE"/></td></xsl:if>
		
		<xsl:apply-templates select=".//KJA030[1]"/>
		<xsl:if test="count(.//KJA030)=0">
			<td/><td/><td/><td/><td/><td/><td/><td/><td/>
		</xsl:if>
		<xsl:if test="count(.//KJA030)!=0">
			<xsl:for-each select=".//KJA030[position()!=1]">
				<tr><xsl:apply-templates select="."/></tr>
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
		<td rowspan="{$rows}"><xsl:value-of select=".//KJE071/PROPERTY_VALUE"/></td>
		<td rowspan="{$rows}" class="w100"><xsl:value-of select=".//KJE070/PROPERTY_VALUE"/></td>
		<td rowspan="{$rows}"  class="rate">
			<xsl:if test=".//KJE131/PROPERTY_VALUE!=''">
				<xsl:call-template name="unitConvR">
					<xsl:with-param name="rate" select=".//KJE131/PROPERTY_VALUE"/>
					<xsl:with-param name="unit" select=".//KJE131/PROPERTY_VALUE/@unit"/>
				</xsl:call-template>
			</xsl:if>
		</td>
		<td rowspan="{$rows}" class="weight">
			<xsl:if test=".//KJE133/PROPERTY_VALUE!=''">
				<xsl:value-of select="concat(.//KJE133/PROPERTY_VALUE, .//KJE133/PROPERTY_VALUE/@prefix, 'g')"/>
			</xsl:if>
		</td>
		<td rowspan="{$rows}"><xsl:value-of select=".//KJE191/PROPERTY_VALUE"/></td>
		
		<xsl:if test="$ver='3'">
			<xsl:apply-templates select=".//KJA031[1]" />
			<xsl:if test="count(.//KJA031)=0">
				<td/><td/><td/><td/>
			</xsl:if>
			<xsl:if test="count(.//KJA031)!=0">
				<xsl:for-each select=".//KJA031[position()!=1]">
					<tr><xsl:apply-templates select="." /></tr>
				</xsl:for-each>
			</xsl:if>
		</xsl:if>
		<xsl:if test="$ver='4'">
			<xsl:apply-templates select=".//KJA031[count(.//KJE278)!=0][1]"/>
			<xsl:if test="count(.//KJE278)=0">
				<td/><td/><td/><td/>
			</xsl:if>
			<xsl:if test="count(.//KJE278)!=0">
				<xsl:for-each select=".//KJA031[count(.//KJE278)!=0][position()!=1]">
					<tr><xsl:apply-templates select="."/></tr>
				</xsl:for-each>
			</xsl:if>
		</xsl:if>
	</xsl:template>

	<!-- ************************************************法令部***************************************************** -->
	<xsl:template match="KJA031">
		<!-- 変数取得 -->
		<xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
		
		<!-- 行入力 -->
		<td class="w30"><xsl:value-of select=".//KJE192/PROPERTY_VALUE"/></td>
		<td>
			<xsl:call-template name="getLawName">
				<xsl:with-param name="id" select="string(.//KJE192/PROPERTY_VALUE)"/>
				<xsl:with-param name="lang" select="string(//toolLang)"/>
			</xsl:call-template>
		</td>
		<td class="w20">
			<xsl:if test="$ver='3'"><xsl:value-of select=".//KJE194/PROPERTY_VALUE"/></xsl:if>
			<xsl:if test="$ver='4'"><xsl:value-of select=".//KJE278/PROPERTY_VALUE"/></xsl:if>
		</td>
		<td>
			<xsl:attribute name="title">
				<xsl:call-template name="getExplanation">
					<xsl:with-param name="id" select="concat(.//KJE192/PROPERTY_VALUE,.//KJE195/PROPERTY_VALUE)"/>
					<xsl:with-param name="lang" select="string(//toolLang)"/>
				</xsl:call-template>
			</xsl:attribute>
			<xsl:value-of select=".//KJE195/PROPERTY_VALUE"/>
		</td>
	</xsl:template>

	<!-- ************************************************関数郡***************************************************** -->
	<xsl:template name="getqHR">
		<xsl:param name="node" />
		<xsl:param name="ver" />
		<xsl:if test="$ver='3'"><xsl:value-of select="count($node//KJA031)" /></xsl:if>
		<xsl:if test="$ver='4'"><xsl:value-of select="count($node//KJE278)" /></xsl:if>
	</xsl:template>
	
	<xsl:include href="xsl/function.xsl"/>
	<xsl:include href="xsl/dicJAMP.xsl"/>
	
</xsl:stylesheet>