<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<ul>
			<xsl:attribute name="class">tv tree<xsl:value-of select="//toolLang"/></xsl:attribute>
			<xsl:apply-templates select="//NPARTS" />
		</ul>
	</xsl:template>
	<!-- ************************************************ 納入部品 *************************************************** -->
	<xsl:template match="NPARTS">
		<li>
			<span class="nparts">
				<a href="#" id="NB_{generate-id()}"><xsl:value-of select="concat(./V[1], ' / ', ./V[2])"/></a>
				<input class="tag" id="NB2_{generate-id()}" value="{./V[1]}"/>
				<input class="tag" id="NB3_{generate-id()}" value="{./V[2]}"/>
				<input class="tag" id="NB4_{generate-id()}" value="{./V[3]}"/>
				<input class="tag" id="NB5_{generate-id()}" value="{./V[4]}"/>
			</span>
			<xsl:if test="count(./MATERIAL)!=0">
				<ul>
					<xsl:apply-templates select="./MATERIAL" />
				</ul>
			</xsl:if>
			<xsl:if test="count(./PARTS)!=0">
				<ul>
					<xsl:apply-templates select="./PARTS" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!-- ************************************************ 部品 *************************************************** -->
	<xsl:template match="PARTS">
		<xsl:param name="ver" select="round(number(substring-after(//VER,'Ver.'))*100)" />
		<li>
			<span class="parts">
				<a href="#" id="BH_{generate-id()}"><xsl:value-of select="concat(.//V[3], ' / ', .//V[4])"/></a>
				<input class="tag" id="BH6_{generate-id()}" value="{.//V[1]}"/>
				<input class="tag" id="BH7_{generate-id()}" value="{.//V[2]}"/>
				<input class="tag" id="BH8_{generate-id()}" value="{.//V[3]}"/>
				<input class="tag" id="BH9_{generate-id()}" value="{.//V[4]}"/>
				<input class="tag" id="BH10_{generate-id()}" value="{.//V[5]}"/>
				<input class="tag" id="BH11_{generate-id()}" value="{.//V[6]}"/>
				<xsl:choose>
					<xsl:when test="$ver &lt; 230"><!-- Ver.2.30未満　([リサイクルマーク]有り)-->
						<input class="tag" id="BH33_{generate-id()}" value="{.//V[7]}"/>
						<input class="tag" id="BH39_{generate-id()}" value="{.//V[8]}"/>
						<input class="tag" id="BH40_{generate-id()}" value="{.//V[9]}"/>
						<input class="tag" id="BH45_{generate-id()}" value="{.//V[10]}"/>
					</xsl:when>
					<xsl:otherwise><!-- Ver.2.30以降　-->
						<input class="tag" id="BH39_{generate-id()}" value="{.//V[7]}"/>
						<input class="tag" id="BH40_{generate-id()}" value="{.//V[8]}"/>
						<input class="tag" id="BH45_{generate-id()}" value="{.//V[9]}"/>
					</xsl:otherwise>
				</xsl:choose>
			</span>
			<xsl:if test="count(./MATERIAL)!=0">
				<ul>
					<xsl:apply-templates select="./MATERIAL" />
				</ul>
			</xsl:if>
			<xsl:if test="count(./PARTS)!=0">
				<ul>
					<xsl:apply-templates select="./PARTS" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!-- ************************************************ 材料 *************************************************** -->
	<xsl:template match="MATERIAL">
		<xsl:param name="ver" select="round(number(substring-after(//VER,'Ver.'))*100)" />
		<li>
			<span class="material">
				<a href="#" id="ZR_{generate-id()}"><xsl:value-of select="concat(.//V[2], ' / ', .//V[3])"/></a>
				<input class="tag" id="ZR12_{generate-id()}" value="{.//V[1]}"/>
				<input class="tag" id="ZR13_{generate-id()}" value="{.//V[2]}"/>
				<input class="tag" id="ZR14_{generate-id()}" value="{.//V[3]}"/>
				<input class="tag" id="ZR15_{generate-id()}" value="{.//V[4]}"/>
				<input class="tag" id="ZR16_{generate-id()}" value="{.//V[5]}"/>
				<input class="tag" id="ZR17_{generate-id()}" value="{.//V[6]}"/>
				<input class="tag" id="ZR18_{generate-id()}" value="{.//V[7]}"/>
				<input class="tag" id="ZR19_{generate-id()}" value="{.//V[8]}"/>
				<input class="tag" id="ZR28_{generate-id()}" value="{.//V[9]}"/>
				<input class="tag" id="ZR29_{generate-id()}" value="{.//V[10]}"/>
				<input class="tag" id="ZR30_{generate-id()}" value="{.//V[11]}"/>
				<input class="tag" id="ZR31_{generate-id()}" value="{.//V[12]}"/>
				<input class="tag" id="ZR32_{generate-id()}" value="{.//V[13]}"/>
				<xsl:choose>
					<xsl:when test="$ver &lt; 230"><!-- Ver.2.30未満　-->
						<input class="tag" id="ZR41_{generate-id()}" value="{.//V[14]}"/>
						<input class="tag" id="ZR46_{generate-id()}" value="{.//V[15]}"/>
						<input class="tag" id="ZR48_{generate-id()}" value="{.//V[16]}"/>
					</xsl:when>
					<xsl:otherwise><!-- Ver.2.30以降　([GADSL物質含有確認]　有り)-->
						<input class="tag" id="ZR33_{generate-id()}" value="{.//V[14]}"/>
						<input class="tag" id="ZR41_{generate-id()}" value="{.//V[15]}"/>
						<input class="tag" id="ZR46_{generate-id()}" value="{.//V[16]}"/>
						<input class="tag" id="ZR48_{generate-id()}" value="{.//V[17]}"/>
					</xsl:otherwise>
				</xsl:choose>
			</span>
			<xsl:if test="count(./SUBSTANCE)!=0">
				<ul>
					<xsl:apply-templates select="./SUBSTANCE" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!-- ******************************************** 化合物 *************************************************** -->
	<xsl:template match="SUBSTANCE">
		<xsl:param name="ver" select="round(number(substring-after(//VER,'Ver.'))*100)" />
		<li>
			<span class="substance">
				<a href="#" id="KB_{generate-id()}" title="{.//V[4]}"><xsl:value-of select="concat(.//V[3], ' / ', .//V[5], '%')"/></a>
				<input class="tag" id="KB20_{generate-id()}" value="{.//V[1]}"/>
				<input class="tag" id="KB23_{generate-id()}" value="{.//V[2]}"/>
				<input class="tag" id="KB24_{generate-id()}" value="{.//V[3]}"/>
				<input class="tag" id="KB25_{generate-id()}" value="{.//V[4]}"/>
				<input class="tag" id="KB26_{generate-id()}" value="{.//V[5]}"/>
				<input class="tag" id="KB34_{generate-id()}" value="{.//V[6]}"/>
				<xsl:choose>
					<xsl:when test="$ver &lt; 240"><!-- Ver.2.30未満　-->
						<input class="tag" id="KB42_{generate-id()}" value="{.//V[7]}"/>
						<input class="tag" id="KB43_{generate-id()}" value="{.//V[8]}"/>
						<input class="tag" id="KB44_{generate-id()}" value="{.//V[9]}"/>
						<input class="tag" id="KB47_{generate-id()}" value="{.//V[10]}"/>
					</xsl:when>
					<xsl:otherwise><!-- Ver.2.40以降　([殺生物目的]　有り)-->
						<input class="tag" id="KB35_{generate-id()}" value="{.//V[7]}"/>
						<input class="tag" id="KB42_{generate-id()}" value="{.//V[8]}"/>
						<input class="tag" id="KB43_{generate-id()}" value="{.//V[9]}"/>
						<input class="tag" id="KB44_{generate-id()}" value="{.//V[10]}"/>
						<input class="tag" id="KB47_{generate-id()}" value="{.//V[11]}"/>
					</xsl:otherwise>
				</xsl:choose>
			</span>
		</li>
	</xsl:template>
	
	<xsl:include href="xsl/dicJAMA.xsl"/>
</xsl:stylesheet>
