<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="no" omit-xml-declaration="no"/>
	<xsl:template match="/">
    {
      "isOpen": true,
			"type": "root",
      "name": "root",
      "children":[
	      <xsl:apply-templates select="//NPARTS" />
      ]
    }
	</xsl:template>
	<!-- ************************************************ 納入部品 *************************************************** -->
	<xsl:template match="NPARTS">
    {
      "isOpen": true,
			"type": "product",
      "name": "<xsl:value-of select="concat(./V[1], ' / ', ./V[2])"/>",
		  "props":[
    		{"name":"部品番号", "class":"NB2", "value":"<xsl:value-of select="./V[1]"/>"},
				{"name":"部品名称", "class":"NB3", "value":"<xsl:value-of select="./V[2]"/>"},
				{"name":"質量[g/部品]", "class":"NB4", "value":"<xsl:value-of select="./V[3]"/>"},
				{"name":"設計変更番号", "class":"NB5", "value":"<xsl:value-of select="./V[4]"/>"}
      ],
      "children":[
        <xsl:apply-templates select="./MATERIAL" /><xsl:if test="count(./MATERIAL)!=0 and count(./PARTS)!=0">,</xsl:if>
        <xsl:apply-templates select="./PARTS" />
      ]
    }<xsl:if test="last()!=position()">,</xsl:if>
	</xsl:template>
	<!-- ************************************************ 部品 *************************************************** -->
	<xsl:template match="PARTS">
		<xsl:param name="ver" select="round(number(substring-after(//VER,'Ver.'))*100)" />
		{
      "isOpen": true,
			"type": "parts",
      "name": "<xsl:value-of select="concat(.//V[3], ' / ', .//V[4])"/>",
		  "props":[
				{"name":"登録済区分", "class":"BH6", "value":"<xsl:value-of select=".//V[1]"/>"},
				{"name":"構成番号", "class":"BH7", "value":"<xsl:value-of select=".//V[2]"/>"},
				{"name":"部品番号", "class":"BH8", "value":"<xsl:value-of select=".//V[3]"/>"},
				{"name":"部品名称", "class":"BH9", "value":"<xsl:value-of select=".//V[4]"/>"},
				{"name":"質量A[g/個]", "class":"BH10", "value":"<xsl:value-of select=".//V[5]"/>"},
				{"name":"数量[/直上部品]", "class":"BH11", "value":"<xsl:value-of select=".//V[6]"/>"},
				<xsl:choose>
					<xsl:when test="$ver &lt; 230"><!-- Ver.2.30未満　([リサイクルマーク]有り)-->
						{"name":"リサイクルマーク", "class":"BH33", "value":"<xsl:value-of select=".//V[7]"/>"},
						{"name":"質量単位", "class":"BH39", "value":"<xsl:value-of select=".//V[8]"/>"},
						{"name":"数量単位", "class":"BH40", "value":"<xsl:value-of select=".//V[9]"/>"},
						{"name":"Node ID", "class":"BH45", "value":"<xsl:value-of select=".//V[10]"/>"}
					</xsl:when>
					<xsl:otherwise><!-- Ver.2.30以降　-->
						{"name":"質量単位", "class":"BH39", "value":"<xsl:value-of select=".//V[7]"/>"},
						{"name":"数量単位", "class":"BH40", "value":"<xsl:value-of select=".//V[8]"/>"},
						{"name":"Node ID", "class":"BH45", "value":"<xsl:value-of select=".//V[9]"/>"}
					</xsl:otherwise>
				</xsl:choose>
      ],
      "children":[
				<xsl:apply-templates select="./MATERIAL" /><xsl:if test="count(./MATERIAL)!=0 and count(./PARTS)!=0">,</xsl:if>
				<xsl:apply-templates select="./PARTS" />
      ]
    }<xsl:if test="last()!=position()">,</xsl:if>
	</xsl:template>
	<!-- ************************************************ 材料 *************************************************** -->
	<xsl:template match="MATERIAL">
		<xsl:param name="ver" select="round(number(substring-after(//VER,'Ver.'))*100)" />
    {
      "isOpen": true,
			"type": "material",
      "name": "<xsl:value-of select="concat(.//V[2], ' / ', .//V[3])"/>",
		  "props":[
        {"name":"表面処理識別", "class":"ZR12", "value":"<xsl:value-of select=".//V[1]"/>"},
        {"name":"材料名称", "class":"ZR13", "value":"<xsl:value-of select=".//V[2]"/>"},
        {"name":"材料商品名", "class":"ZR14", "value":"<xsl:value-of select=".//V[3]"/>"},
        {"name":"質量[g/構成部品]", "class":"ZR15", "value":"<xsl:value-of select=".//V[4]"/>"},
        {"name":"材料規格", "class":"ZR16", "value":"<xsl:value-of select=".//V[5]"/>"},
        {"name":"材料コード(金属/その他)", "class":"ZR17", "value":"<xsl:value-of select=".//V[6]"/>"},
        {"name":"材料記号(樹脂・ゴム)", "class":"ZR18", "value":"<xsl:value-of select=".//V[7]"/>"},
        {"name":"VDA材料分類コード", "class":"ZR19", "value":"<xsl:value-of select=".//V[8]"/>"},
        {"name":"工程内-最小値(%)", "class":"ZR28", "value":"<xsl:value-of select=".//V[9]"/>"},
        {"name":"工程内-最大値(%)", "class":"ZR29", "value":"<xsl:value-of select=".//V[10]"/>"},
        {"name":"市場回収-最小値(%)", "class":"ZR30", "value":"<xsl:value-of select=".//V[11]"/>"},
        {"name":"市場回収-最大値(%)", "class":"ZR31", "value":"<xsl:value-of select=".//V[12]"/>"},
        {"name":"材質表示", "class":"ZR32", "value":"<xsl:value-of select=".//V[13]"/>"},
				<xsl:choose>
					<xsl:when test="$ver &lt; 230"><!-- Ver.2.30未満　-->
						{"name":"調査元材料記号 or 支給材コード", "class":"ZR41", "value":"<xsl:value-of select=".//V[14]"/>"},
						{"name":"Node ID", "class":"ZR46", "value":"<xsl:value-of select=".//V[15]"/>"},
						{"name":"社内材料コード", "class":"ZR48", "value":"<xsl:value-of select=".//V[16]"/>"}
					</xsl:when>
					<xsl:otherwise><!-- Ver.2.30以降　([GADSL物質含有確認]　有り)-->
						{"name":"GADSL物質申告済", "class":"ZR33", "value":"<xsl:value-of select=".//V[14]"/>"},
						{"name":"調査元材料記号 or 支給材コード", "class":"ZR41", "value":"<xsl:value-of select=".//V[15]"/>"},
						{"name":"Node ID", "class":"ZR46", "value":"<xsl:value-of select=".//V[16]"/>"},
						{"name":"社内材料コード", "class":"ZR48", "value":"<xsl:value-of select=".//V[17]"/>"}
					</xsl:otherwise>
				</xsl:choose>
      ],
      "children":[
				<xsl:apply-templates select="./SUBSTANCE" />
      ]
    }<xsl:if test="last()!=position()">,</xsl:if>
	</xsl:template>
	<!-- ******************************************** 化合物 *************************************************** -->
	<xsl:template match="SUBSTANCE">
		<xsl:param name="ver" select="round(number(substring-after(//VER,'Ver.'))*100)" />
    {
      "isOpen": true,
			"type": "substance",
      "name": "<xsl:value-of select="concat(.//V[3], ' / ', .//V[5], '%')"/>",
		  "props":[
				{"name":"含有数 整理番号", "class":"KB20", "value":"<xsl:value-of select=".//V[1]"/>"},
				{"name":"プロセスケミカルの存在形態", "class":"KB23", "value":"<xsl:value-of select=".//V[2]"/>"},
				{"name":"コード", "class":"KB24", "value":"<xsl:value-of select=".//V[3]"/>"},
				{"name":"名称", "class":"KB25", "value":"<xsl:value-of select=".//V[4]"/>"},
				{"name":"含有率", "class":"KB26", "value":"<xsl:value-of select=".//V[5]"/>"},
				{"name":"アプリケーション", "class":"KB34", "value":"<xsl:value-of select=".//V[6]"/>"},
				<xsl:choose>
					<xsl:when test="$ver &lt; 240"><!-- Ver.2.30未満　-->
						{"name":"最小含有率", "class":"KB42", "value":"<xsl:value-of select=".//V[7]"/>"},
						{"name":"最大含有率", "class":"KB43", "value":"<xsl:value-of select=".//V[8]"/>"},
						{"name":"残部フラグ", "class":"KB44", "value":"<xsl:value-of select=".//V[9]"/>"},
						{"name":"Node ID", "class":"KB47", "value":"<xsl:value-of select=".//V[10]"/>"}
					</xsl:when>
					<xsl:otherwise><!-- Ver.2.40以降　([殺生物目的]　有り)-->
						{"name":"殺生物目的", "class":"KB35", "value":"<xsl:value-of select=".//V[7]"/>"},
						{"name":"最小含有率", "class":"KB42", "value":"<xsl:value-of select=".//V[8]"/>"},
						{"name":"最大含有率", "class":"KB43", "value":"<xsl:value-of select=".//V[9]"/>"},
						{"name":"残部フラグ", "class":"KB44", "value":"<xsl:value-of select=".//V[10]"/>"},
						{"name":"Node ID", "class":"KB47", "value":"<xsl:value-of select=".//V[11]"/>"}
					</xsl:otherwise>
				</xsl:choose>
      ]
    }<xsl:if test="last()!=position()">,</xsl:if>
	</xsl:template>
	
</xsl:stylesheet>
