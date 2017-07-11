<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- 比率単位変換関数 -->
	<xsl:template name="unitConvR">
		<xsl:param name="rate" />
		<xsl:param name="unit" />
		<xsl:choose>
			<xsl:when test="$unit='ppm'">
				<xsl:value-of select="concat($rate div 10000, '%')"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat($rate, '%')"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<!-- 0 -> 1 変換関数 -->
	<xsl:template name="zeroToOne">
		<xsl:param name="num" />
		<xsl:if test="$num=0">
			<xsl:value-of select="1"/>
		</xsl:if>
		<xsl:if test="$num!=0">
			<xsl:value-of select="$num"/>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>