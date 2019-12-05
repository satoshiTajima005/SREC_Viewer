<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="no" omit-xml-declaration="no"/>
	<xsl:template match="/">
    {
      "JAMA": {
        "title":"ファイル基本情報",
        "isShow": true,
        "data":[
          [
            {"title":"フォーマットVer.", "value":"<xsl:value-of select="//VER"/>"},
            {"title":"出力日", "value":"<xsl:value-of select="//CSV_DATE"/>"},
            {"title":"データ検証", "value":"<xsl:value-of select="//DATA_VALIDATE"/>"},
            {"title":"外部リスト", "value":"<xsl:value-of select="//EX_LIST"/>"},
            {"title":"カーメーカーコード", "value":"<xsl:value-of select="//MAKER_CODE"/>"}
          ],[
            {"title":"仕入先コード", "value":"<xsl:value-of select="//SUPPLIER_CODE"/>"},
            {"title":"仕入先名", "value":"<xsl:value-of select="//SUPPLIER_NAME"/>"},
            {"title":"回答期限", "value":"<xsl:value-of select="//RES_LIMIT"/>"},
            {"title":"回答日", "value":"<xsl:value-of select="//RES_DATE"/>"}
          ]
        ]
      }
    }
	</xsl:template>

</xsl:stylesheet>
