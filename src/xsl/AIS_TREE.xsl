<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
<!-- ********************************** AIS *********************************************************************** -->
	<xsl:template match="/">
		<ul>
			<xsl:attribute name="class">tv tree<xsl:value-of select="//toolLang"/></xsl:attribute>
			<li>
				<span class="seihin"><xsl:value-of select="//KJE018/PROPERTY_VALUE"/></span>
				<ul>
					<xsl:apply-templates select="//KJA027" />
				</ul>
			</li>
		</ul>
	</xsl:template>
	<!-- ************************************************階層部***************************************************** -->
	<xsl:template match="KJA027">
		<li>
			<span class="kaisou">
				<xsl:choose>
					<xsl:when test="//KJE176/PROPERTY_VALUE='0'">
						<a href="#" id="GB_{generate-id()}" class="thGB">
							<xsl:call-template name="getOrigin">
								<xsl:with-param name="lang" select="string(//toolLang)"/>
							</xsl:call-template>
						</a>
					</xsl:when>
					<xsl:when test="count(.//KJE055)!=0">
						<a href="#" id="KS_{generate-id()}"><xsl:value-of select=".//KJE055/PROPERTY_VALUE"/></a>
						<input class="tag" id="KJE055_{generate-id()}" value="{.//KJE055/PROPERTY_VALUE}" />
						<input class="tag" id="KJE057_{generate-id()}" value="{format-number(.//KJE057/PROPERTY_VALUE, '0.#')}" />
						<input class="tag" id="KJE184_{generate-id()}" value="{.//KJE184/PROPERTY_VALUE}" />
					</xsl:when>
				</xsl:choose>
			</span>
			<xsl:if test="count(.//KJA028)!=0">
				<ul>
					<xsl:apply-templates select=".//KJA028" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!-- ************************************************部品部***************************************************** -->
	<xsl:template match="KJA028">
		<li>
			<span class="buhin">
				<a href="#" id="BH_{generate-id()}"><xsl:value-of select=".//KJE059/PROPERTY_VALUE"/></a>
				<input class="tag" id="KJE059_{generate-id()}" value="{.//KJE059/PROPERTY_VALUE}" />
				<input class="tag" id="KJE185_{generate-id()}" value="{format-number(.//KJE185/PROPERTY_VALUE, '0.#')}" />
				<input class="tag" id="KJE186_{generate-id()}" value="{.//KJE186/PROPERTY_VALUE}" />
			</span>
			<xsl:if test="count(.//KJA029)!=0">
				<ul>
					<xsl:apply-templates select=".//KJA029" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!-- ************************************************材料部***************************************************** -->
	<xsl:template match="KJA029">
		<xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
		<li>
			<span class="zairyou">
				<a href="#" id="ZR_{generate-id()}">
					<xsl:call-template name="getMatUse">
						<xsl:with-param name="id" select="number(substring(.//KJE187/PROPERTY_VALUE, 1, 2))"/>
						<xsl:with-param name="lang" select="string(//toolLang)"/>
					</xsl:call-template>
				</a>
				<input class="tag" id="KJE187_{generate-id()}">
					<xsl:attribute name="value">
						<xsl:call-template name="getMatUse">
							<xsl:with-param name="id" select="number(substring(.//KJE187/PROPERTY_VALUE, 1, 2))"/>
							<xsl:with-param name="lang" select="string(//toolLang)"/>
						</xsl:call-template>
					</xsl:attribute>
				</input>
				<input class="tag" id="KJE188_{generate-id()}">
					<xsl:attribute name="value">
						<xsl:call-template name="getMatCLass">
							<xsl:with-param name="id" select="string(.//KJE189/PROPERTY_VALUE)"/>
							<xsl:with-param name="lang" select="string(//toolLang)"/>
						</xsl:call-template>
					</xsl:attribute>
				</input>
				<input class="tag" id="KJE189_{generate-id()}" value="{.//KJE189/PROPERTY_VALUE}"/>
				<input class="tag" id="KJE190_{generate-id()}" value="{.//KJE190/PROPERTY_VALUE}"/>
				<input class="tag" id="KJE128_{generate-id()}">
					<xsl:attribute name="value">
						<xsl:if test=".//KJE128/PROPERTY_VALUE!=''">
							<xsl:value-of select="concat(.//KJE128/PROPERTY_VALUE, .//KJE128/PROPERTY_VALUE/@prefix, 'g')"/>
						</xsl:if>
					</xsl:attribute>
				</input>
				<xsl:if test="$ver='4'">
					<input class="tag" id="KJE296_{generate-id()}" value="{.//KJE296/PROPERTY_VALUE}"/>
				</xsl:if>
			</span>
			<xsl:if test="count(.//KJA030)!=0">
				<ul>
					<xsl:apply-templates select=".//KJA030" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!-- ************************************************物質部***************************************************** -->
	<xsl:template match="KJA030">
		<xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
		<li>
			<span class="busshitsu">
				<xsl:choose>
					<xsl:when test="string-length(.//KJE070/PROPERTY_VALUE)&gt;24">
						<xsl:attribute name="title">
							<xsl:value-of select=".//KJE070/PROPERTY_VALUE"/>
						</xsl:attribute>
						<a href="#" id="BS_{generate-id()}">
							<xsl:value-of select="substring(.//KJE070/PROPERTY_VALUE, 1, 21)"/>...
						</a>
					</xsl:when>
					<xsl:otherwise>
						<a href="#" id="BS_{generate-id()}"><xsl:value-of select=".//KJE070/PROPERTY_VALUE"/></a>
					</xsl:otherwise>
				</xsl:choose>
				<input class="tag" id="KJE070_{generate-id()}" value="{.//KJE070/PROPERTY_VALUE}"/>
				<input class="tag" id="KJE071_{generate-id()}" value="{.//KJE071/PROPERTY_VALUE}"/>
				<input class="tag" id="KJE131_{generate-id()}" value="{concat(.//KJE131/PROPERTY_VALUE, .//KJE131/PROPERTY_VALUE/@unit)}"/>
				<input class="tag" id="KJE133_{generate-id()}">
					<xsl:attribute name="value">
						<xsl:if test=".//KJE133/PROPERTY_VALUE!=''">
							<xsl:value-of select="concat(.//KJE133/PROPERTY_VALUE, .//KJE133/PROPERTY_VALUE/@prefix, 'g')"/>
						</xsl:if>
					</xsl:attribute>
				</input>
				<input class="tag" id="KJE191_{generate-id()}" value="{.//KJE191/PROPERTY_VALUE}"/>
			</span>
			<xsl:if test="$ver='3'">
				<xsl:if test="count(.//KJA031)!=0">
					<ul><xsl:apply-templates select=".//KJA031" /></ul>
				</xsl:if>
			</xsl:if>
			<xsl:if test="$ver='4'">
				<xsl:if test="count(.//KJE278)!=0">
					<ul><xsl:apply-templates select=".//KJA031[count(.//KJE278)!=0]" /></ul>
				</xsl:if>
			</xsl:if>
		</li>
	</xsl:template>
	<!-- ************************************************法令部***************************************************** -->
	<xsl:template match="KJA031">
		<xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
		<li>
			<span class="hourei">
				<a href="#" id="HR_{generate-id()}">
					<xsl:call-template name="getLawName">
						<xsl:with-param name="id" select="string(.//KJE192/PROPERTY_VALUE)"/>
						<xsl:with-param name="lang" select="string(//toolLang)"/>
					</xsl:call-template>
				</a>
				<input class="tag" id="KJE192_{generate-id()}" value="{.//KJE192/PROPERTY_VALUE}" />
				
				<xsl:if test="$ver='3'">
					<input class="tag" id="KJE193_{generate-id()}" value="{.//KJE193/PROPERTY_VALUE}"/>
					<input class="tag" id="KJE194_{generate-id()}" value="{.//KJE194/PROPERTY_VALUE}"/>
				</xsl:if>
				<xsl:if test="$ver='4'">
					<input class="tag" id="KJE193_{generate-id()}">
						<xsl:attribute name="value">
							<xsl:call-template name="getLawName">
								<xsl:with-param name="id" select="string(.//KJE192/PROPERTY_VALUE)"/>
								<xsl:with-param name="lang" select="string(//toolLang)"/>
							</xsl:call-template>
						</xsl:attribute>
					</input>
					<input class="tag" id="KJE278_{generate-id()}" value="{.//KJE278/PROPERTY_VALUE}"/>
				</xsl:if>
				
				<input class="tag" id="KJE195_{generate-id()}" value="{.//KJE195/PROPERTY_VALUE}"/>
				<input class="tag" id="KJE195exp_{generate-id()}">
					<xsl:attribute name="value">
						<xsl:call-template name="getExplanation">
							<xsl:with-param name="id" select="concat(.//KJE192/PROPERTY_VALUE,.//KJE195/PROPERTY_VALUE)"/>
							<xsl:with-param name="lang" select="string(//toolLang)"/>
						</xsl:call-template>
					</xsl:attribute>
				</input>
			</span>
		</li>
	</xsl:template>

	<xsl:include href="xsl/function.xsl"/>
	<xsl:include href="xsl/dicJAMP.xsl"/>
	
</xsl:stylesheet>
