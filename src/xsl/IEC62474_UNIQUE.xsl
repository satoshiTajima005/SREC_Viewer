<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="no" omit-xml-declaration="no" />

<xsl:template match="Main">
  <xsl:param name="ver" select="@schemaDatabaseVersion" />
  {
    "IEC1":{
      "title":"文書情報",
      "isShow": true,
      "data":[
        [
          {"title":"スキーマDB Ver.", "value":"<xsl:value-of select="@schemaDatabaseVersion" />"},
          <xsl:if test="$ver='X6.01ex1.0'">{"title":"物質DB Ver.", "value":"<xsl:value-of select="@substanceDatabaseVersion" />"},</xsl:if>
          <xsl:if test="$ver='X8.00ex1.0'">{"title":"物質DB Ver.", "value":"<xsl:value-of select="//DeclarableSubstanceList/@version" />"},</xsl:if>
          {"title":"ツール機関", "value":"<xsl:value-of select="ToolNameVersionID/@authority" />"}
        ],[
          {"title":"ツールID", "value":"<xsl:value-of select="ToolNameVersionID/@identity" />"},
          {"title":"編集保護", "value":"<xsl:value-of select="BusinessInfo/@fieldLock" />"},
          {"title":"モード", "value":"<xsl:value-of select="string(BusinessInfo/@mode)" />"}
        ]
      ]
    },
    "IEC2":{
      "title":"添付文書",
      "isShow":true,
      "data":[<xsl:apply-templates select="//Attachment" />]
    },
    "IEC3":{
      "title":"連絡先情報",
      "isShow":true,
      "data":[<!--依頼者--><!--回答者--><!--回答承認者-->
        {"title":"企業名", "value":[
          "<xsl:value-of select="BusinessInfo/Request/RequestCompany/@name" />",
          "<xsl:value-of select="BusinessInfo/Response/SupplyCompany/@name" />",
          "-"
        ]},
        {"title":"ID割当機関", "value":[
          "<xsl:value-of select="BusinessInfo/Request/RequestCompany/UniqueID/@authority" />",
          "<xsl:value-of select="BusinessInfo/Response/SupplyCompany/UniqueID/@authority" />",
          "-"
        ]},
        {"title":"企業ID", "value":[
          "<xsl:value-of select="BusinessInfo/Request/RequestCompany/UniqueID/@identity" />",
          "<xsl:value-of select="BusinessInfo/Response/SupplyCompany/UniqueID/@identity" />",
          "-"
        ]},
        {"title":"国", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@country" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@country" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@country" />"
        ]},
        {"title":"都道府県", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@stateProvince" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@stateProvince" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@stateProvince" />"
        ]},
        {"title":"市区町村", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@city" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@city" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@city" />"
        ]},
        {"title":"番地", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@street" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@street" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@street" />"
        ]},
        {"title":"郵便番号", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@postalCode" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@postalCode" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@postalCode" />"
        ]},
        {"title":"名前", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@name" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@name" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@name" />"
        ]},
        {"title":"役職", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@title" />",
          "<xsl:value-of select=" BusinessInfo/Response/Contact/@title" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@title" />"
        ]},
        {"title":"E-mail", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@email" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@email" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@email" />"
        ]},
        {"title":"電話番号", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@phone" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@phone" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@phone" />"
        ]},
        {"title":"内線番号", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@internalAddress" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@internalAddress" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@internalAddress" />"
        ]},
        {"title":"備考", "value":[
          "<xsl:value-of select="BusinessInfo/Request/Contact/@comment" />",
          "<xsl:value-of select="BusinessInfo/Response/Contact/@comment" />",
          "<xsl:value-of select="BusinessInfo/Response/Authorizer/@comment" />"
        ]}
      ]
    },
    "IEC4":{
      "title":"文書追加情報",
      "isShow": true,
      "data": [<!--依頼者--><!--回答者-->
        {"title":"整理番号", "value":[
          "<xsl:value-of select="BusinessInfo/Request/@docID" />",
          "<xsl:value-of select="BusinessInfo/Response/@docID" />"
        ]},
        {"title":"実施日", "value":[
          "<xsl:value-of select="BusinessInfo/Request/@data" />",
          "<xsl:value-of select="BusinessInfo/Response/@data" />"
        ]},
        {"title":"取引先ID", "value":[
          "<xsl:value-of select="BusinessInfo/Request/@internalSupplierID" />",
          "-"
        ]},
        {"title":"回答期限", "value":[
          "<xsl:value-of select="BusinessInfo/Request/@respondByDate" />",
          "-"
        ]},
        {"title":"備考", "value":[
          "<xsl:value-of select="BusinessInfo/Request/@comment" />",
          "<xsl:value-of select="BusinessInfo/Response/@comment" />"
        ]}
      ]
    },
    "IEC5":{
      "title":"問い合わせ情報",
      "isShow": true,
      "data":[<!--ID--><!--返答要求--><!--内容-->
        <xsl:apply-templates select="./Product/QueryList/Query"/>
      ]
    },
    "IEC6":{
      "title":"製品情報",
      "isShow": true,
      "data":[
        [
          {"title":"シリーズ名", "value":"<xsl:value-of select="Product/@productFamilyName" />"},
          {"title":"回答単位", "value":"<xsl:value-of select="Product/@unitType" />"},
          {"title":"製品備考", "value":"<xsl:value-of select="Product/@comment" />"},
          {"title":"発効日", "value":"<xsl:value-of select="Product/ProductID/@effectiveDate" />"},
          {"title":"型番", "value":"<xsl:value-of select="Product/ProductID/@identifier" />"},
          {"title":"名称", "value":"<xsl:value-of select="Product/ProductID/@name" />"},
          {"title":"依頼者品名", "value":"<xsl:value-of select="Product/ProductID/@requesterName" />"},
          {"title":"依頼者型番", "value":"<xsl:value-of select="Product/ProductID/@requesterIdentifier" />"},
          {"title":"製造場所", "value":"<xsl:value-of select="Product/ProductID/@manufacturingSite" />"}
        ],[
          {"title":"バージョン", "value":"<xsl:value-of select="Product/ProductID/@version" />"},
          {"title":"質量", "value":"<xsl:value-of select="Product/ProductID/Mass/@mass" />"},
          {"title":"質量単位", "value":"<xsl:value-of select="Product/ProductID/Mass/@unitOfMeasure" />"},
          {"title":"質量+許容値", "value":"<xsl:value-of select="Product/ProductID/Mass/@positiveTolerance" />"},
          {"title":"質量-許容値", "value":"<xsl:value-of select="Product/ProductID/Mass/@negativeTolerance" />"},
          {"title":"質量比率", "value":"<xsl:value-of select="Product/ProductID/MassPercent/@massPercent" />"},
          {"title":"比率+許容値", "value":"<xsl:value-of select="Product/ProductID/MassPercent/@positiveTolerance" />"},
          {"title":"比率-許容値", "value":"<xsl:value-of select="Product/ProductID/MassPercent/@negativeTolerance" />"},
          {"title":"署名情報", "value":"<xsl:copy-of select=".//Signature" />"}
        ]
      ]
    }
  }
</xsl:template>

<xsl:template match="Query">
  {
    "ID":"<xsl:value-of select="../@identity" />",
    "request":"<xsl:value-of select="@response" />",
    "answer":"<xsl:value-of select="@statement" />"
  }<xsl:if test="last()!=position()">,</xsl:if>
</xsl:template>

<xsl:template match="Attachment">
  {
    "name": "<xsl:value-of select="@fileName"/>",
    "type": "<xsl:value-of select="@fileType"/>",
    "data":"<xsl:value-of select="@data"/>
  }
</xsl:template>

</xsl:stylesheet>