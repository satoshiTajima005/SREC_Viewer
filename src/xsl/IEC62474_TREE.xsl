<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes" />
	<xsl:template match="Main">
		<ul>
			<xsl:attribute name="class">tv tree<xsl:value-of select="//toolLang" /></xsl:attribute>
			<xsl:apply-templates select="Product" />
		</ul>
	</xsl:template>
	<!--####################################### 製品 #######################################-->
	<xsl:template match="Product">
		<li>
			<span class="Product">
				<xsl:value-of select="concat(ProductID/@identifier, ' ', ProductID/@name)" />
			</span>
			<ul>
				<xsl:apply-templates select="ProductPart" />
				<xsl:apply-templates select="MaterialClass" />
				<xsl:apply-templates select="Material" />
				<xsl:if test="count(SubstanceGroup)+count(Substance)!=0">
					<li>
						<span class="substanceTrue">
							<a href="#" id="ST{generate-id()}">
								<xsl:call-template name="getIecHeader">
									<xsl:with-param name="id" select="string('substanceTrue')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</a>
						</span>
						<ul>
							<xsl:apply-templates select="SubstanceGroup[string(Threshold/@aboveThresholdLevel)='true']" />
							<xsl:apply-templates select="Substance[string(Threshold/@aboveThresholdLevel)='true']" />
						</ul>
					</li>
					<li>
						<span class="substanceFalse">
							<a href="#" id="SF{generate-id()}">
								<xsl:call-template name="getIecHeader">
									<xsl:with-param name="id" select="string('substanceFalse')" />
									<xsl:with-param name="lang" select="string(//toolLang)" />
								</xsl:call-template>
							</a>
						</span>
						<ul>
							<xsl:apply-templates select="SubstanceGroup[string(Threshold/@aboveThresholdLevel)!='true']" />
							<xsl:apply-templates select="Substance[string(/Threshold/@aboveThresholdLevel)!='true']" />
						</ul>
					</li>
				</xsl:if>
				<xsl:apply-templates select="Exemptions" />
			</ul>
		</li>
	</xsl:template>
	<!--####################################### 部品 #######################################-->
	<xsl:template match="ProductPart">
		<li>
			<span class="ProductPart">
				<a href="#" id="PP{generate-id()}">
					<xsl:value-of select="concat(ProductID/@identifier, ' ', ProductID/@name, ' [', @numberOfUnits, 'pcs]')" />
				</a>
				<input class="tag" id="comment_{generate-id()}" value="{@comment}" />
				<input class="tag" id="numberOfUnits_{generate-id()}" value="{@numberOfUnits}" />
				<input class="tag" id="effectiveDate_{generate-id()}" value="{ProductID/@effectiveDate}" />
				<input class="tag" id="identifier_{generate-id()}" value="{ProductID/@identifier}" />
				<input class="tag" id="name_{generate-id()}" value="{ProductID/@name}" />
				<input class="tag" id="requesterName_{generate-id()}" value="{ProductID/@requesterName}" />
				<input class="tag" id="requesterIdentifier_{generate-id()}" value="{ProductID/@requesterIdentifier}" />
				<input class="tag" id="manufacturingSite_{generate-id()}" value="{ProductID/@manufacturingSite}" />
				<input class="tag" id="version_{generate-id()}" value="{ProductID/@version}" />
				<input class="tag" id="mass_{generate-id()}" value="{ProductID/Mass/@mass}" />
				<input class="tag" id="unitOfMeasure_{generate-id()}" value="{ProductID/Mass/@unitOfMeasure}" />
				<input class="tag" id="massPlusTolerance_{generate-id()}" value="{ProductID/Mass/@positiveTolerance}" />
				<input class="tag" id="massMinusTolerance_{generate-id()}" value="{ProductID/Mass/@negativeTolerance}" />
				<input class="tag" id="massPercent_{generate-id()}" value="{ProductID/MassPercent/@massPercent}" />
				<input class="tag" id="percentPlusTolerance_{generate-id()}" value="{ProductID/MassPercent/@positiveTolerance}" />
				<input class="tag" id="percentMinusTolerance_{generate-id()}" value="{ProductID/MassPercent/@negativeTolerance}" />
			</span>
			<xsl:if test="count(ProductPart)+count(Material)+count(SubstanceGroup)+count(Substance)!=0">
				<ul>
					<xsl:apply-templates select="ProductPart" />
					<xsl:apply-templates select="Material" />
					<xsl:apply-templates select="SubstanceGroup" />
					<xsl:apply-templates select="Substance" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!--####################################### 材質区分 #######################################-->
	<xsl:template match="MaterialClass">
		<li>
			<span class="Material">
				<a href="#" id="MC{generate-id()}">
					<xsl:value-of select="@name" />
				</a>
				<input class="tag" id="comment_{generate-id()}" value="{@comment}" />
				<input class="tag" id="id_{generate-id()}" value="{@id}" />
				<input class="tag" id="name_{generate-id()}" value="{@name}" />
				<input class="tag" id="mass_{generate-id()}" value="{Mass/@mass}" />
				<input class="tag" id="unitOfMeasure_{generate-id()}" value="{Mass/@unitOfMeasure}" />
				<input class="tag" id="massPlusTolerance_{generate-id()}" value="{Mass/@positiveTolerance}" />
				<input class="tag" id="massMinusTolerance_{generate-id()}" value="{Mass/@negativeTolerance}" />
				<input class="tag" id="massPercent_{generate-id()}" value="{MassPercent/@massPercent}" />
				<input class="tag" id="percentPlusTolerance_{generate-id()}" value="{MassPercent/@positiveTolerance}" />
				<input class="tag" id="percentMinusTolerance_{generate-id()}" value="{MassPercent/@negativeTolerance}" />
			</span>
		</li>
	</xsl:template>
	<!--####################################### 材質 #######################################-->
	<xsl:template match="Material">
		<li>
			<span class="Material">
				<a href="#" id="MT{generate-id()}">
					<xsl:call-template name="getMaterialClass">
						<xsl:with-param name="id" select="string(@materialClassID)" />
						<xsl:with-param name="lang" select="string(//toolLang)" />
					</xsl:call-template>
				</a>
				<input class="tag" id="comment_{generate-id()}" value="{@comment}" />
				<input class="tag" id="materialClassID_{generate-id()}" value="{@materialClassID}" />
				<input class="tag" id="name_{generate-id()}" value="{@name}" />
				<input class="tag" id="mass_{generate-id()}" value="{Mass/@mass}" />
				<input class="tag" id="unitOfMeasure_{generate-id()}" value="{Mass/@unitOfMeasure}" />
				<input class="tag" id="massPlusTolerance_{generate-id()}" value="{Mass/@positiveTolerance}" />
				<input class="tag" id="massMinusTolerance_{generate-id()}" value="{Mass/@negativeTolerance}" />
				<input class="tag" id="massPercent_{generate-id()}" value="{MassPercent/@massPercent}" />
				<input class="tag" id="percentPlusTolerance_{generate-id()}" value="{MassPercent/@positiveTolerance}" />
				<input class="tag" id="percentMinusTolerance_{generate-id()}" value="{MassPercent/@negativeTolerance}" />
				<input class="tag" id="authority_{generate-id()}" value="{UniqueID/@authority}" />
				<input class="tag" id="identity_{generate-id()}" value="{UniqueID/@identity}" />
			</span>
			<xsl:if test="count(SubstanceGroup)+count(Substance)!=0">
				<ul>
					<xsl:apply-templates select="SubstanceGroup" />
					<xsl:apply-templates select="Substance" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!--####################################### 物質グループ #######################################-->
	<xsl:template match="SubstanceGroup">
		<li>
			<xsl:if test="string(Threshold/@aboveThresholdLevel)='true'">
				<xsl:attribute name="decision">true</xsl:attribute>
			</xsl:if>
			<span class="Substance">
				<a href="#" id="SG{generate-id()}">
					<xsl:choose>
						<xsl:when test="string(UniqueID/@authority)='IEC62474'">
							<xsl:call-template name="getSubstanceName">
								<xsl:with-param name="id" select="string(UniqueID/@identity)" />
								<xsl:with-param name="lang" select="string(//toolLang)" />
							</xsl:call-template>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="@name" />
						</xsl:otherwise>
					</xsl:choose>
				</a>
				<input class="tag" id="comment_{generate-id()}" value="{@comment}" />
				<input class="tag" id="descriptionOfUse_{generate-id()}" value="{@descriptionOfUse}" />
				<input class="tag" id="name_{generate-id()}" value="{@name}" />
				<input class="tag" id="mass_{generate-id()}" value="{Mass/@mass}" />
				<input class="tag" id="unitOfMeasure_{generate-id()}" value="{Mass/@unitOfMeasure}" />
				<input class="tag" id="massPlusTolerance_{generate-id()}" value="{Mass/@positiveTolerance}" />
				<input class="tag" id="massMinusTolerance_{generate-id()}" value="{Mass/@negativeTolerance}" />
				<input class="tag" id="massPercent_{generate-id()}" value="{MassPercent/@massPercent}" />
				<input class="tag" id="percentPlusTolerance_{generate-id()}" value="{MassPercent/@positiveTolerance}" />
				<input class="tag" id="percentMinusTolerance_{generate-id()}" value="{MassPercent/@negativeTolerance}" />
				<input class="tag" id="matMassPercent_{generate-id()}" value="{MatMassPercent/@massPercent}" />
				<input class="tag" id="matPercentPlusTolerance_{generate-id()}" value="{MatMassPercent/@positiveTolerance}" />
				<input class="tag" id="matPercentMinusTolerance_{generate-id()}" value="{MatMassPercent/@negativeTolerance}" />
				<input class="tag" id="aboveThresholdLevel_{generate-id()}" value="{Threshold/@aboveThresholdLevel}" />
				<input class="tag" id="reportableApplication_{generate-id()}" value="{Threshold/@reportableApplication}" />
				<input class="tag" id="reportingThreshold_{generate-id()}" value="{Threshold/@reportingThreshold}" />
				<input class="tag" id="authority_{generate-id()}" value="{UniqueID/@authority}" />
				<input class="tag" id="identity_{generate-id()}" value="{UniqueID/@identity}" />
			</span>
			<xsl:if test="count(Exemptions)+count(Substance)!=0">
				<ul>
					<xsl:apply-templates select="Exemptions" />
					<xsl:apply-templates select="Substance" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!--####################################### 物質 #######################################-->
	<xsl:template match="Substance">
		<li>
			<xsl:if test="string(Threshold/@aboveThresholdLevel)='true'">
				<xsl:attribute name="decision">true</xsl:attribute>
			</xsl:if>
			<span class="Substance">
				<a href="#" id="SS{generate-id()}">
					<xsl:choose>
						<xsl:when test="string(UniqueID/@authority)='IEC62474'">
							<xsl:call-template name="getSubstanceName">
								<xsl:with-param name="id" select="string(UniqueID/@identity)" />
								<xsl:with-param name="lang" select="string(//toolLang)" />
							</xsl:call-template>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="@name" />
						</xsl:otherwise>
					</xsl:choose>
				</a>
				<input class="tag" id="comment_{generate-id()}" value="{@comment}" />
				<input class="tag" id="descriptionOfUse_{generate-id()}" value="{@descriptionOfUse}" />
				<input class="tag" id="name_{generate-id()}" value="{@name}" />
				<input class="tag" id="mass_{generate-id()}" value="{Mass/@mass}" />
				<input class="tag" id="unitOfMeasure_{generate-id()}" value="{Mass/@unitOfMeasure}" />
				<input class="tag" id="massPlusTolerance_{generate-id()}" value="{Mass/@positiveTolerance}" />
				<input class="tag" id="massMinusTolerance_{generate-id()}" value="{Mass/@negativeTolerance}" />
				<input class="tag" id="massPercent_{generate-id()}" value="{MassPercent/@massPercent}" />
				<input class="tag" id="percentPlusTolerance_{generate-id()}" value="{MassPercent/@positiveTolerance}" />
				<input class="tag" id="percentMinusTolerance_{generate-id()}" value="{MassPercent/@negativeTolerance}" />
				<input class="tag" id="matMassPercent_{generate-id()}" value="{MatMassPercent/@massPercent}" />
				<input class="tag" id="matPercentPlusTolerance_{generate-id()}" value="{MatMassPercent/@positiveTolerance}" />
				<input class="tag" id="matPercentMinusTolerance_{generate-id()}" value="{MatMassPercent/@negativeTolerance}" />
				<input class="tag" id="aboveThresholdLevel_{generate-id()}" value="{Threshold/@aboveThresholdLevel}" />
				<input class="tag" id="reportableApplication_{generate-id()}" value="{Threshold/@reportableApplication}" />
				<input class="tag" id="reportingThreshold_{generate-id()}" value="{Threshold/@reportingThreshold}" />
				<input class="tag" id="authority_{generate-id()}" value="{UniqueID/@authority}" />
				<input class="tag" id="identity_{generate-id()}" value="{UniqueID/@identity}" />
			</span>
			<xsl:if test="count(Exemptions)!=0">
				<ul>
					<xsl:apply-templates select="Exemptions" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<!--####################################### 適用除外 #######################################-->
	<xsl:template match="Exemptions">
		<li>
			<span class="Exemptions">
				<a href="#" id="EX{generate-id()}">
					<xsl:value-of select="concat(UniqueID/@authority, ': ', UniqueID/@identity)" />
				</a>
				<input class="tag" id="description_{generate-id()}" value="{Exemption/@description}" />
				<input class="tag" id="groupIdentity_{generate-id()}" value="{Exemption/@identity}" />
				<input class="tag" id="authority_{generate-id()}" value="{UniqueID/@authority}" />
				<input class="tag" id="identity_{generate-id()}" value="{UniqueID/@identity}" />
			</span>
		</li>
	</xsl:template>
	<!--####################################### インクルード #######################################-->
	<xsl:include href="xsl/dicIEC62474.xsl" />
</xsl:stylesheet>