<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
  <!-- *********************************************************************** AIS *********************************************************************** -->
  <xsl:template match="/">
    <xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
    <div class="accordion">
      <div class="AIS1">
        <h4>
          <a href="#">            <!--AISに関する情報-->
            <xsl:call-template name="getJampHeader">
              <xsl:with-param name="id" select="'AIS1'"/>
              <xsl:with-param name="lang" select="//toolLang"/>
            </xsl:call-template>
          </a>
        </h4>
        <div>
          <table class="KJA017_1 Unique">
            <tr>
              <th>                <!--言語-->
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
              <th>                <!--文書GPID-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'GPID'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE134">
                <xsl:value-of select="//KJE134/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--文書種類-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'docType'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE135">
                <xsl:if test="contains(//KJE135/PROPERTY_VALUE, '-temp')">
                  <xsl:attribute name="class">
									ui-state-error
                  </xsl:attribute>
                  <span class="ui-icon ui-icon-alert" style="float:left; margin-right:5px;"></span>
                </xsl:if>
                <xsl:value-of select="//KJE135/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--文書番号-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'docNo'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE098">
                <xsl:value-of select="//KJE098/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--フォーマットVer.-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'format'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE136">
                <xsl:value-of select="//KJE136/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
          <table class="KJA017_2 Unique">
            <tr>
              <th>                <!--提出日-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'resDate'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE137">
                <xsl:value-of select="//KJE137/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--作成日-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'makeDate'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE016">
                <xsl:value-of select="//KJE016/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--改訂日-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'revDate'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE017">
                <xsl:value-of select="//KJE017/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--改訂履歴-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'rev'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE014">
                <xsl:value-of select="//KJE014/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="AIS2">
        <h4>
          <a href="#">            <!--発行会社情報-->
            <xsl:call-template name="getJampHeader">
              <xsl:with-param name="id" select="'JAMP2'"/>
              <xsl:with-param name="lang" select="//toolLang"/>
            </xsl:call-template>
          </a>
        </h4>
        <div>
          <table class="KJA018_1 Unique">
            <tr>
              <th>                <!--登録機関ID-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'orgID'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE138">
                <xsl:value-of select="//KJE138/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--会社ID-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'coID'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE011">
                <xsl:value-of select="//KJE011/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>JAMP ID</th>
              <td class="KJE141">
                <xsl:value-of select="//KJE141/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
          <table class="KJA018_2 Unique">
            <xsl:if test="$ver='3'">
              <tr>
                <th>                  <!--会社名 -->
                  <xsl:call-template name="getJampHeader">
                    <xsl:with-param name="id" select="'co'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td class="KJE012">
                  <xsl:value-of select="//KJE012/PROPERTY_VALUE"/>
                </td>
              </tr>
            </xsl:if>
            <xsl:if test="$ver='4'">
              <tr>
                <th>                  <!--会社名(英)-->
                  <xsl:call-template name="getJampHeader">
                    <xsl:with-param name="id" select="'coE'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td class="KJE012">
                  <xsl:value-of select="//KJE012/PROPERTY_VALUE"/>
                </td>
              </tr>
              <tr>
                <th>                  <!--会社名(母)-->
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
              <th>                <!--追加情報-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'addittion'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE142">
                <xsl:value-of select="//KJE142/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="AIS3">
        <h4>
          <a href="#">            <!--発行/作成 部門情報-->
            <xsl:call-template name="getJampHeader">
              <xsl:with-param name="id" select="'JAMP3'"/>
              <xsl:with-param name="lang" select="//toolLang"/>
            </xsl:call-template>
          </a>
        </h4>
        <div>
          <table class="KJA019_KJA020_1 Unique">
            <tr>
              <th>                <!--発行:部門名-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'resDiv'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE143">
                <xsl:value-of select="//KJE143/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--発行:住所-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'resAdr'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE144">
                <xsl:value-of select="//KJE144/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--発行:電話-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'resTel'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE145">
                <xsl:value-of select="//KJE145/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--発行:FAX-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'resFax'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE146">
                <xsl:value-of select="//KJE146/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
          <table class="KJA019_KJA020_2 Unique">
            <tr>
              <th>                <!--発行:E-Mail-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'resMail'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE147">
                <xsl:value-of select="//KJE147/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--作成:部門名-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'makeDiv'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE093">
                <xsl:value-of select="//KJE093/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--作成:電話-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'makeTel'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE124">
                <xsl:value-of select="//KJE124/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="AIS4">
        <h4>
          <a href="#">            <!--依頼者情報-->
            <xsl:call-template name="getJampHeader">
              <xsl:with-param name="id" select="'JAMP4'"/>
              <xsl:with-param name="lang" select="//toolLang"/>
            </xsl:call-template>
          </a>
        </h4>
        <div>
          <table class="KJA021_1 Unique">
            <tr>
              <th>                <!--登録機関ID-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'orgID'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE149">
                <xsl:value-of select="//KJE149/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--会社ID-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'coID'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE150">
                <xsl:value-of select="//KJE150/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>JAMP ID</th>
              <td class="KJE153">
                <xsl:value-of select="//KJE153/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--会社名-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'co'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE078">
                <xsl:value-of select="//KJE078/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--部門名-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'div'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE154">
                <xsl:value-of select="//KJE154/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--住所-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'adr'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE155">
                <xsl:value-of select="//KJE155/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--担当者氏名-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'contact'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE090">
                <xsl:value-of select="//KJE090/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
          <table class="KJA021_2 Unique">
            <tr>
              <th>                <!--電話-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'tel'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE156">
                <xsl:value-of select="//KJE156/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>FAX</th>
              <td class="KJE157">
                <xsl:value-of select="//KJE157/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>E-Mail</th>
              <td class="KJE091">
                <xsl:value-of select="//KJE091/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--備考 1-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'remarks1'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE158">
                <xsl:value-of select="//KJE158/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--備考 2-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'remarks2'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE159">
                <xsl:value-of select="//KJE159/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--備考 3-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'remarks3'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE160">
                <xsl:value-of select="//KJE160/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="AIS5">
        <h4>
          <a href="#">            <!--型番情報-->
            <xsl:call-template name="getJampHeader">
              <xsl:with-param name="id" select="'JAMP5'"/>
              <xsl:with-param name="lang" select="//toolLang"/>
            </xsl:call-template>
          </a>
        </h4>
        <div>
          <table class="KJA022_1 Unique partType">
            <caption>              <!--依頼者-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'requester'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </caption>
            <tr>
              <th>1</th>
              <td class="KJE079_1">
                <xsl:value-of select="//KJA022[1]/EDK022-001/KJE079/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>2</th>
              <td class="KJE079_2">
                <xsl:value-of select="//KJA022[2]/EDK022-001/KJE079/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>3</th>
              <td class="KJE079_3">
                <xsl:value-of select="//KJA022[3]/EDK022-001/KJE079/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>4</th>
              <td class="KJE079_4">
                <xsl:value-of select="//KJA022[4]/EDK022-001/KJE079/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>5</th>
              <td class="KJE079_5">
                <xsl:value-of select="//KJA022[5]/EDK022-001/KJE079/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>6</th>
              <td class="KJE079_6">
                <xsl:value-of select="//KJA022[6]/EDK022-001/KJE079/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
          <table class="KJA022_2 Unique partType">
            <caption>              <!--発行者-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'resposer'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </caption>
            <tr>
              <th>1</th>
              <td class="KJE164_1">
                <xsl:value-of select="//KJA022[1]/EDK022-001/KJE164/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>2</th>
              <td class="KJE164_2">
                <xsl:value-of select="//KJA022[2]/EDK022-001/KJE164/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>3</th>
              <td class="KJE164_3">
                <xsl:value-of select="//KJA022[3]/EDK022-001/KJE164/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>4</th>
              <td class="KJE164_4">
                <xsl:value-of select="//KJA022[4]/EDK022-001/KJE164/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>5</th>
              <td class="KJE164_5">
                <xsl:value-of select="//KJA022[5]/EDK022-001/KJE164/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>6</th>
              <td class="KJE164_6">
                <xsl:value-of select="//KJA022[6]/EDK022-001/KJE164/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="AIS6">
        <h4>
          <a href="#">            <!--成型品情報-->
            <xsl:call-template name="getJampHeader">
              <xsl:with-param name="id" select="'AIS6'"/>
              <xsl:with-param name="lang" select="//toolLang"/>
            </xsl:call-template>
          </a>
        </h4>
        <div>
          <table class="KJA026_1 Unique">
            <tr>
              <th>                <!--製造会社-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'makeCo'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE101">
                <xsl:value-of select="//KJE101/PROPERTY_VALUE"/>
              </td>
            </tr>
            <xsl:if test="$ver='3'">
              <tr>
                <th>                  <!--発行者型番-->
                  <xsl:call-template name="getJampHeader">
                    <xsl:with-param name="id" select="'resItemNo'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td class="KJE018">
                  <xsl:value-of select="//KJE018/PROPERTY_VALUE"/>
                </td>
              </tr>
            </xsl:if>
            <xsl:if test="$ver='4'">
              <tr>
                <th>                  <!--発行者型番(英)-->
                  <xsl:call-template name="getJampHeader">
                    <xsl:with-param name="id" select="'resItemNoE'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td class="KJE018">
                  <xsl:value-of select="//KJE018/PROPERTY_VALUE"/>
                </td>
              </tr>
              <tr>
                <th>                  <!--発行者型番(母)-->
                  <xsl:call-template name="getJampHeader">
                    <xsl:with-param name="id" select="'resItemNoL'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td class="KJE298">
                  <xsl:value-of select="//KJE298/PROPERTY_VALUE"/>
                </td>
              </tr>
            </xsl:if>
            <tr>
              <th>                <!--一般商品名-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'commonName'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE172">
                <xsl:value-of select="//KJE172/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--シリーズ名-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'series'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE173">
                <xsl:value-of select="//KJE173/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--発行者備考-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'resRemarks'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE174">
                <xsl:value-of select="//KJE174/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--引用等-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'include'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE183">
                <xsl:value-of select="//KJE183/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
          <table class="KJA026_2 Unique">
            <tr>
              <th>                <!--集合化-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'collect'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE176">
                <xsl:call-template name="getKJE176">
                  <xsl:with-param name="id" select="string(//KJE176/PROPERTY_VALUE)"/>
                  <xsl:with-param name="lang" select="string(//toolLang)"/>
                </xsl:call-template>
              </td>
            </tr>
            <tr>
              <th>                <!--単位-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'unit'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE177">
                <xsl:call-template name="getKJE177">
                  <xsl:with-param name="id" select="string(//KJE177/PROPERTY_VALUE)"/>
                  <xsl:with-param name="lang" select="string(//toolLang)"/>
                </xsl:call-template>
              </td>
            </tr>
            <tr>
              <th>                <!--質量-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'mass'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE023 weight">
                <xsl:value-of select="concat(//KJE023/PROPERTY_VALUE, //KJE023/PROPERTY_VALUE/@prefix, 'g')"/>
              </td>
            </tr>
            <tr>
              <th>GADSL</th>
              <td class="KJE178">
                <xsl:if test="//KJE178/PROPERTY_VALUE=0">
                  <xsl:attribute name="class">
									ui-state-error
                  </xsl:attribute>
                  <span class="ui-icon ui-icon-alert" style="float:left; margin-right:5px;"></span>
                </xsl:if>
                <xsl:call-template name="getCoveredRow">
                  <xsl:with-param name="id" select="string(//KJE178/PROPERTY_VALUE)"/>
                  <xsl:with-param name="lang" select="string(//toolLang)"/>
                </xsl:call-template>
              </td>
            </tr>
            <tr>
              <th>JIG</th>
              <td class="KJE179">
                <xsl:if test="//KJE179/PROPERTY_VALUE=0">
                  <xsl:attribute name="class">
									ui-state-error
                  </xsl:attribute>
                  <span class="ui-icon ui-icon-alert" style="float:left; margin-right:5px;"></span>
                </xsl:if>
                <xsl:call-template name="getCoveredRow">
                  <xsl:with-param name="id" select="string(//KJE179/PROPERTY_VALUE)"/>
                  <xsl:with-param name="lang" select="string(//toolLang)"/>
                </xsl:call-template>
              </td>
            </tr>
            <tr>
              <th>                <!--含有確認-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'contain'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE180">
                <xsl:call-template name="getContained">
                  <xsl:with-param name="id" select="string(//KJE180/PROPERTY_VALUE)"/>
                  <xsl:with-param name="lang" select="string(//toolLang)"/>
                </xsl:call-template>
              </td>
            </tr>
            <tr>
              <th>                <!--材質リストVer.-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'matList'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE181">
                <xsl:value-of select="//KJE181/PROPERTY_VALUE"/>
              </td>
            </tr>
            <tr>
              <th>                <!--物質リストVer.-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'subsList'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td class="KJE182">
                <xsl:value-of select="//KJE182/PROPERTY_VALUE"/>
              </td>
            </tr>
          </table>
        </div>
      </div>
      <div class="AIS7">
        <h4>
          <a href="#">            <!--集計情報-->
            <xsl:call-template name="getJampHeader">
              <xsl:with-param name="id" select="'AIS7'"/>
              <xsl:with-param name="lang" select="//toolLang"/>
            </xsl:call-template>
          </a>
        </h4>
        <div class="AisTtl">
          <table class="Unique ttl">
            <thead>
              <tr>
                <th>                  <!--名称-->
                  <xsl:call-template name="getJampHeader">
                    <xsl:with-param name="id" select="'name'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <th>                  <!--分類記号-->
                  <xsl:call-template name="getJampHeader">
                    <xsl:with-param name="id" select="'symbol'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <th>                  <!--質量-->
                  <xsl:call-template name="getJampHeader">
                    <xsl:with-param name="id" select="'mass'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
              </tr>
            </thead>
            <tbody>
              <xsl:apply-templates select="//KJA024" />
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </xsl:template>


  <!-- ****************************************集計情報部***************************************************** -->
  <xsl:template match="KJA024">
    <xsl:variable name="ver" select="number(substring(//PROPERTY_SNAME[.='Use format']/following-sibling::node()/text(), 5, 1))"/>
    <tr>
      <td>
        <xsl:call-template name="getMatCLass">
          <xsl:with-param name="id" select="string(.//KJE167/PROPERTY_VALUE)"/>
          <xsl:with-param name="lang" select="string(//toolLang)"/>
        </xsl:call-template>
      </td>
      <td>
        <xsl:value-of select=".//KJE167/PROPERTY_VALUE"/>
      </td>
      <td class="weight">
        <xsl:value-of select="concat(.//KJE168/PROPERTY_VALUE, .//KJE168/PROPERTY_VALUE/@prefix, 'g')"/>
      </td>
    </tr>
  </xsl:template>

  <xsl:include href="xsl/function.xsl"/>
  <xsl:include href="xsl/dicJAMP.xsl"/>

</xsl:stylesheet>