<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
  <xsl:template match="/">
    <xsl:param name="type" select="//type" />
    <xsl:param name="cls" select="//cls" />
    <xsl:param name="ver" select="number(//ver)" />
    <table class="BreakDown">
      <xsl:if test="$type='AIS'">
        <xsl:if test="$cls='KS'">
          <tr>
            <th rowspan="3" class="AIS" style="background: #FF9900;">
              <!--階層-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'KS'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th>
              <!--名称-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'name'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE055">
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--員数-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'qua'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE057">
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--レベル-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'lv'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE184">
              <xsl:value-of select="//input[3]/@value" />
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="$cls='BH'">
          <tr>
            <th rowspan="3" class="AIS" style="background: #FFFF00;">
              <!--部品-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'BH'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th>
              <!--名称-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'name'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE059">
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--員数-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'qua'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE185">
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--レベル-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'lv'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE186">
              <xsl:value-of select="//input[3]/@value" />
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="$cls='ZR'">
          <tr>
            <th rowspan="6" class="AIS" style="background: #CCFFCC;">
              <!--材質-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'ZR'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th>
              <!--用途-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'use'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE187">
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--名称-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'name'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE188">
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--分類記号-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'symbol'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE189">
              <xsl:value-of select="//input[3]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--公的規格-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'standerd'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE190">
              <xsl:value-of select="//input[4]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--質量-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'mass'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE128" class="weight">
              <xsl:value-of select="//input[5]/@value" />
            </td>
          </tr>
          <xsl:if test="$ver=4">
            <tr>
              <th>
                <!--備考-->
                <xsl:call-template name="getJampHeader">
                  <xsl:with-param name="id" select="'remarks'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td id="KJE296">
                <xsl:value-of select="//input[6]/@value" />
              </td>
            </tr>
          </xsl:if>
        </xsl:if>
        <xsl:if test="$cls='BS'">
          <tr>
            <th rowspan="5" class="AIS" style="background: #FF99CC;">
              <!--報告物質-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'BS'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th>
              <!--名称-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'name'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE070">
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
          <tr>
            <th>CAS No.</th>
            <td id="KJE071">
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--含有率-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'rate'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE131" class="rate">
              <xsl:value-of select="//input[3]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--質量-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'mass'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE133" class="weight">
              <xsl:value-of select="//input[4]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--備考-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'remarks'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE191">
              <xsl:value-of select="//input[5]/@value" />
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="$cls='HR'">
          <tr>
            <th rowspan="5" class="AIS" style="background: #99CCFF;">
              <!--対象法令等-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'HR'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th>ID</th>
            <td id="KJE192">
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--名称-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'name'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE193">
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--該当区分-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'cls'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE278">
              <xsl:value-of select="//input[3]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--備考-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'remarks'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE195">
              <xsl:value-of select="//input[4]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <!--適用除外-->
              <xsl:call-template name="getJampHeader">
                <xsl:with-param name="id" select="'explanation'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td id="KJE195exp">
              <xsl:value-of select="//input[5]/@value" />
            </td>
          </tr>
        </xsl:if>
      </xsl:if>
      <xsl:if test="$type='JAMA'">
        <xsl:if test="$cls='NB'">
          <tr>
            <th rowspan="4" style="color:black; background-color:#FF9900;" class="JAMA_H">
              <!--納入部品-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'NB'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th class="JAMA_N">2</th>
            <th class="JAMA_K">
              <!--部品番号-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'2'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='NB2']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">3</th>
            <th class="JAMA_K">
              <!--部品名称-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'3'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='NB3']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">4</th>
            <th class="JAMA_K">
              <!--質量[g/部品]-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'4'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='NB4']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">5</th>
            <th class="JAMA_K">
              <!--設計変更番号-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'5'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='NB5']/@value" />
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="$cls='BH'">
          <tr>
            <th style="color:black; background-color:#FFFF00;" class="JAMA_H">
              <!--部品構成-->
              <xsl:attribute name="rowspan">
                <xsl:choose>
                  <xsl:when test="$ver &lt; 230">7</xsl:when>
                  <xsl:otherwise>6</xsl:otherwise>
                </xsl:choose>
              </xsl:attribute>
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'BH'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th class="JAMA_N">6</th>
            <th class="JAMA_K">
              <!--登録済区分-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'6'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getBH6">
                <xsl:with-param name="id" select="//input[@id='BH6']/@value" />
                <xsl:with-param name="lang" select="//toolLang" />
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">7</th>
            <th class="JAMA_K">
              <!--構成番号-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'7'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='BH7']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">8</th>
            <th class="JAMA_K">
              <!--部品番号-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'8'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='BH8']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">9</th>
            <th class="JAMA_K BH9">
              <!--部品名称-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'9'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='BH9']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">10</th>
            <th class="JAMA_K">
              <!--質量A[g/個]-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'10'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='BH10']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">11</th>
            <th class="JAMA_K">
              <!--数量[/直上部品]-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'11'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='BH11']/@value" />
            </td>
          </tr>
          <xsl:if test="$ver &lt; 230">
            <tr>
              <th class="JAMA_N">33</th>
              <th class="JAMA_K">
                <!--リサイクルマーク-->
                <xsl:call-template name="getJamaHeader">
                  <xsl:with-param name="ver" select="$ver"/>
                  <xsl:with-param name="id" select="'33'"/>
                  <xsl:with-param name="lang" select="//toolLang"/>
                </xsl:call-template>
              </th>
              <td>
                <xsl:value-of select="//input[@id='BH33']/@value" />
              </td>
            </tr>
          </xsl:if>
          <tr>
            <th rowspan="3" class="JAMA_H">
              <!--部工会-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'PA'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th class="JAMA_N">39</th>
            <th class="JAMA_K">
              <!--質量単位-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'39'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='BH39']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">40</th>
            <th class="JAMA_K">
              <!--数量単位-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'40'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='BH40']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">45</th>
            <th class="JAMA_K">Node ID</th>
            <td>
              <xsl:value-of select="//input[@id='BH45']/@value" />
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="$cls='ZR'">
          <tr>
            <th rowspan="9" style="color:black; background-color:#CCFFCC;" class="JAMA_H">
              <!--構成材料-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'ZR'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th class="JAMA_N">12</th>
            <th class="JAMA_K">
              <!--表面処理識別-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'12'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR12']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">13</th>
            <th class="JAMA_K">
              <!--材料名称-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'13'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR13']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">14</th>
            <th class="JAMA_K">
              <!--材料商品名-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'14'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR14']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">15</th>
            <th class="JAMA_K">
              <!--材料質量[g/構成部品]-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'15'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR15']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">16</th>
            <th class="JAMA_K">
              <!--材料規格-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'16'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR16']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">17</th>
            <th class="JAMA_K">
              <!--材料コード(金属/その他)-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'17'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR17']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">18</th>
            <th class="JAMA_K">
              <!--材料記号(樹脂/ゴム)-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'18'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR18']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">19</th>
            <th class="JAMA_K">
              <!--VDA材料分類コード-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'19'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getZR19">
                <xsl:with-param name="id" select="//input[@id='ZR19']/@value" />
                <xsl:with-param name="lang" select="//toolLang" />
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">48</th>
            <th class="JAMA_K">
              <!--社内材料コード-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'48'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR48']/@value" />
            </td>
          </tr>
          <tr>
            <th rowspan="5" class="JAMA_H">
              <!--リサイクル-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'RE'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th class="JAMA_N">28</th>
            <th class="JAMA_K">
              <!--工程内-最小値(%)-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'28'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR28']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">29</th>
            <th class="JAMA_K">
              <!--工程内-最大値(%)-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'29'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR29']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">30</th>
            <th class="JAMA_K">
              <!--市場回収-最小値(%)-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'30'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR30']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">31</th>
            <th class="JAMA_K">
              <!--市場回収-最大値(%)-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'31'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR31']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">32</th>
            <th class="JAMA_K">
              <!--材質表示-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'32'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='ZR32']/@value" />
            </td>
          </tr>
          <xsl:choose>
            <xsl:when test="$ver &lt; 230">
              <tr>
                <th rowspan="2" class="JAMA_H">
                  <!--部工会-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'PA'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <th class="JAMA_N">41</th>
                <th class="JAMA_K">
                  <!--調査元材料記号or支給材コード-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'41'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:value-of select="//input[@id='ZR41']/@value" />
                </td>
              </tr>
            </xsl:when>
            <xsl:otherwise>
              <tr>
                <th rowspan="3" class="JAMA_H">
                  <!--部工会-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'PA'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <th class="JAMA_N">33</th>
                <th class="JAMA_K">
                  <!--GADSL含有確認-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'33'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:value-of select="//input[@id='ZR33']/@value" />
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">41</th>
                <th class="JAMA_K">
                  <!--調査元材料記号or支給材コード-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'41'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:value-of select="//input[@id='ZR41']/@value" />
                </td>
              </tr>
            </xsl:otherwise>
          </xsl:choose>
          <tr>
            <th class="JAMA_N">46</th>
            <th class="JAMA_K">Node ID</th>
            <td>
              <xsl:value-of select="//input[@id='ZR46']/@value" />
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="$cls='KB'">
          <tr>
            <th rowspan="6" style="color:black; background-color:#FF99CC;" class="JAMA_H">
              <!--化合物-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'KB'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <th class="JAMA_N">20</th>
            <th class="JAMA_K">
              <!--含有数整理番号-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'20'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='KB20']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">23</th>
            <th class="JAMA_K">
              <!--プロセスケミカルの存在形態-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'23'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getKB23">
                <xsl:with-param name="id" select="//input[@id='KB23']/@value" />
                <xsl:with-param name="lang" select="//toolLang" />
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">24</th>
            <th class="JAMA_K">
              <!--コード-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'24'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='KB24']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">25</th>
            <th class="JAMA_K">
              <!--名称-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'25'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='KB25']/@value" />
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">-</th>
            <th class="JAMA_K">
              <!--参考和訳-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'25plus'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getKBJA">
                <xsl:with-param name="id" select="//input[@id='KB47']/@value"/>
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th class="JAMA_N">26</th>
            <th class="JAMA_K">
              <!--含有率(%)-->
              <xsl:call-template name="getJamaHeader">
                <xsl:with-param name="ver" select="$ver"/>
                <xsl:with-param name="id" select="'26'"/>
                <xsl:with-param name="lang" select="//toolLang"/>
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[@id='KB26']/@value" />
            </td>
          </tr>
          <xsl:choose>
            <xsl:when test="$ver &lt; 240">
              <tr>
                <th rowspan="5" class="JAMA_H">
                  <!--部工会-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'PA'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <th class="JAMA_N">34</th>
                <th class="JAMA_K">
                  <!--アプリケーション-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'34'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:call-template name="getKB34">
                    <xsl:with-param name="id" select="//input[@id='KB34']/@value" />
                    <xsl:with-param name="lang" select="//toolLang" />
                  </xsl:call-template>
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">42</th>
                <th class="JAMA_K">
                  <!--最小含有率(%)-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'42'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:value-of select="//input[@id='KB42']/@value" />
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">43</th>
                <th class="JAMA_K">
                  <!--最大含有率(%)-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'43'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:value-of select="//input[@id='KB43']/@value" />
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">44</th>
                <th class="JAMA_K">
                  <!--残部フラグ-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'44'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:value-of select="//input[@id='KB44']/@value" />
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">47</th>
                <th class="JAMA_K">Node ID</th>
                <td>
                  <xsl:value-of select="//input[@id='KB47']/@value" />
                </td>
              </tr>
            </xsl:when>
            <xsl:otherwise>
              <tr>
                <th rowspan="6" class="JAMA_H">
                  <!--部工会-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'PA'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <th class="JAMA_N">34</th>
                <th class="JAMA_K">
                  <!--アプリケーション-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'34'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:call-template name="getKB34">
                    <xsl:with-param name="id" select="//input[@id='KB34']/@value" />
                    <xsl:with-param name="lang" select="//toolLang" />
                  </xsl:call-template>
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">35</th>
                <th class="JAMA_K">
                  <!--殺生物目的-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'35'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:call-template name="getKB35">
                    <xsl:with-param name="id" select="//input[@id='KB35']/@value" />
                    <xsl:with-param name="lang" select="//toolLang" />
                  </xsl:call-template>
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">42</th>
                <th class="JAMA_K">
                  <!--最小含有率(%)-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'42'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:value-of select="//input[@id='KB42']/@value" />
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">43</th>
                <th class="JAMA_K">
                  <!--最大含有率(%)-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'43'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:value-of select="//input[@id='KB43']/@value" />
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">44</th>
                <th class="JAMA_K">
                  <!--残部フラグ-->
                  <xsl:call-template name="getJamaHeader">
                    <xsl:with-param name="ver" select="$ver"/>
                    <xsl:with-param name="id" select="'44'"/>
                    <xsl:with-param name="lang" select="//toolLang"/>
                  </xsl:call-template>
                </th>
                <td>
                  <xsl:value-of select="//input[@id='KB44']/@value" />
                </td>
              </tr>
              <tr>
                <th class="JAMA_N">47</th>
                <th class="JAMA_K">Node ID</th>
                <td>
                  <xsl:value-of select="//input[@id='KB47']/@value" />
                </td>
              </tr>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
      </xsl:if>
      <xsl:if test="$type='IEC62474'">
        <!--部品-->
        <xsl:if test="$cls='PP'">
          <tr>
            <th rowspan="16" style="background:yellow;color:#333;">
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'PP'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'comment'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'numberOfUnits'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'effectiveDate'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[3]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'identifier'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[4]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'name'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[5]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'requesterName'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[6]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'requesterIdentifier'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[7]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'manufacturingSite'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[8]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'version'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[9]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'mass'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[10]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'unitOfMeasure'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[11]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'plusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[12]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'minusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[13]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'massPercent'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[14]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentPlusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[15]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentMinusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[16]/@value" />
            </td>
          </tr>
        </xsl:if>
        <!--材質区分-->
        <xsl:if test="$cls='MC'">
          <tr>
            <th rowspan="10" style="background:#c4d79b;color:#333;">
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'MC'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'comment'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'id'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'name'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[3]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'mass'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[4]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'unitOfMeasure'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[5]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'plusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[6]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'minusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[7]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'massPercent'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[8]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentPlusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[9]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentMinusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[10]/@value" />
            </td>
          </tr>
        </xsl:if>
        <!--材質-->
        <xsl:if test="$cls='MT'">
          <tr>
            <th rowspan="12" style="background:#c4d79b;color:#333;">
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'MT'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'comment'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'materialClassID'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'name'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[3]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'mass'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[4]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'unitOfMeasure'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[5]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'plusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[6]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'minusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[7]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'massPercent'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[8]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentPlusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[9]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentMinusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[10]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'authority'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[11]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'identity'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[12]/@value" />
            </td>
          </tr>
        </xsl:if>
        <!--物質群-->
        <xsl:if test="$cls='SG'">
          <tr>
            <th rowspan="18" style="background:#f79bb1;color:#333;">
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'SG'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'identity'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[18]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'authority'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[17]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'name'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getSubstanceName">
                <xsl:with-param name="id" select="//input[18]/@value" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'reportableApplication'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getRepotingApplication">
                <xsl:with-param name="id" select="//input[18]/@value" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'reportingThreshold'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getRepotingThreshold">
                <xsl:with-param name="id" select="//input[18]/@value" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'descriptionOfUse'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'mass'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[4]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'unitOfMeasure'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[5]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'plusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[6]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'minusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[7]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'massPercent'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[8]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentPlusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[9]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentMinusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[10]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'matMassPercent'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[11]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'matPercentPlusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[12]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'matPercentMinusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[13]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'aboveThresholdLevel'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[14]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'comment'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
        </xsl:if>
        <!--物質-->
        <xsl:if test="$cls='SS'">
          <tr>
            <th rowspan="18" style="background:#f79bb1;color:#333;">
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'SS'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'identity'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[18]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'authority'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[17]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'name'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getSubstanceName">
                <xsl:with-param name="id" select="//input[18]/@value" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'reportableApplication'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getRepotingApplication">
                <xsl:with-param name="id" select="//input[18]/@value" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'reportingThreshold'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getRepotingThreshold">
                <xsl:with-param name="id" select="//input[18]/@value" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'descriptionOfUse'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'mass'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[4]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'unitOfMeasure'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[5]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'plusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[6]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'minusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[7]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'massPercent'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[8]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentPlusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[9]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'percentMinusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[10]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'matMassPercent'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[11]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'matPercentPlusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[12]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'matPercentMinusTolerance'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[13]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'aboveThresholdLevel'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[14]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'comment'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
        </xsl:if>
        <!--適用除外-->
        <xsl:if test="$cls='EX'">
          <tr>
            <th rowspan="18" style="background:#4bacc6;color:#333;">
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'EX'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'description'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[1]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'groupIdentity'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[2]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'authority'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[3]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'identity'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:value-of select="//input[4]/@value" />
            </td>
          </tr>
          <tr>
            <th>
              <xsl:call-template name="getIecHeader">
                <xsl:with-param name="id" select="'applications'" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </th>
            <td>
              <xsl:call-template name="getApplications">
                <xsl:with-param name="id" select="//input[1]/@value" />
                <xsl:with-param name="lang" select="string(//toolLang)" />
              </xsl:call-template>
            </td>
          </tr>
        </xsl:if>
      </xsl:if>
    </table>
  </xsl:template>
  <xsl:include href="xsl/dicJAMP.xsl"/>
  <xsl:include href="xsl/dicJAMA.xsl"/>
  <xsl:include href="xsl/dicIEC62474.xsl"/>
</xsl:stylesheet>