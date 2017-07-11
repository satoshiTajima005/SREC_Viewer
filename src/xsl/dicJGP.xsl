<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--
##########################################################################################
		JGP項目名
##########################################################################################-->
	<xsl:template name="getJgpHeader">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='JGP1'">JGPファイル情報</xsl:if>
			<xsl:if test="$id='JGP2'">依頼元/回答元 情報</xsl:if>
			<xsl:if test="$id='JGP3'">アイテムセレクタ</xsl:if>
			<xsl:if test="$id='JGP4'">製品･部品･材料情報</xsl:if>
			<xsl:if test="$id='2ndContents'">第二階層 / 内容部</xsl:if>
			<xsl:if test="$id='2ndJudge'">第二階層 / 判定部</xsl:if>
			<xsl:if test="$id='3rd'">第三階層</xsl:if>
			<xsl:if test="$id='AddInfo'">追加情報</xsl:if>
			<xsl:if test="$id='Adr'">住所</xsl:if>
			<xsl:if test="$id='ClassName'">物質群<br/>名称</xsl:if>
			<xsl:if test="$id='ClassNo'">物質群<br/>分類No.</xsl:if>
			<xsl:if test="$id='Color'">色</xsl:if>
			<xsl:if test="$id='ColorNo'">着色No.</xsl:if>
			<xsl:if test="$id='CoName'">会社名</xsl:if>
			<xsl:if test="$id='Contact'">担当者名</xsl:if>
			<xsl:if test="$id='DataVer'">データバージョン</xsl:if>
			<xsl:if test="$id='Diameter'">径(mm)</xsl:if>
			<xsl:if test="$id='Div'">部署名</xsl:if>
			<xsl:if test="$id='Eng'">英語</xsl:if>
			<xsl:if test="$id='EntryData'">依頼元記入日</xsl:if>
			<xsl:if test="$id='Flag'">含有<br/>判定</xsl:if>
			<xsl:if test="$id='ttlFlag'">含有総合判定</xsl:if>
			<xsl:if test="$id='FormatVer'">Data Format Ver.</xsl:if>
			<xsl:if test="$id='Grade'">グレードNo.</xsl:if>
			<xsl:if test="$id='IssContact'">記入者名</xsl:if>
			<xsl:if test="$id='Item1'">項目1</xsl:if>
			<xsl:if test="$id='Item2'">項目2</xsl:if>
			<xsl:if test="$id='Item3'">項目3</xsl:if>
			<xsl:if test="$id='ItemName'">製品名称</xsl:if>
			<xsl:if test="$id='ItemNo'">製品番号</xsl:if>
			<xsl:if test="$id='JIS'">金属記号/JIS記号</xsl:if>
			<xsl:if test="$id='Lang'">言語</xsl:if>
			<xsl:if test="$id='LoadVer'">Load File Ver.</xsl:if>
			<xsl:if test="$id='Local'">日本語/中国語</xsl:if>
			<xsl:if test="$id='Maker'">メーカー名</xsl:if>
			<xsl:if test="$id='Mass'">質量(g/調査単位)</xsl:if>
			<xsl:if test="$id='MassSubs'">化合物<br/>含有量(mg)</xsl:if>
			<xsl:if test="$id='MassTtl'">総含有量<br/>(mg)</xsl:if>
			<xsl:if test="$id='MatSpec'">材料特定情報</xsl:if>
			<xsl:if test="$id='Other'">その他</xsl:if>
			<xsl:if test="$id='Part'">使用部位</xsl:if>
			<xsl:if test="$id='RatePer'">重量濃度<br/>(wt%)</xsl:if>
			<xsl:if test="$id='RatePpm'">最大含有率<br/>(ppm)</xsl:if>
			<xsl:if test="$id='RefNo'">整理番号</xsl:if>
			<xsl:if test="$id='Remarks'">追記<br/>事項</xsl:if>
			<xsl:if test="$id='ReqInfo'">依頼元</xsl:if>
			<xsl:if test="$id='ReqManagement'">依頼元管理項目</xsl:if>
			<xsl:if test="$id='ResData'">回答元記入日</xsl:if>
			<xsl:if test="$id='ResInfo'">回答元</xsl:if>
			<xsl:if test="$id='RevData'">改訂日</xsl:if>
			<xsl:if test="$id='SubsName'">含有物質名称</xsl:if>
			<xsl:if test="$id='Thick'">板厚(mm)</xsl:if>
			<xsl:if test="$id='Unit'">調査単位</xsl:if>
			<xsl:if test="$id='Use'">使用用途･目的</xsl:if>
			<xsl:if test="$id='UseCode'">使用用途<br/>分類コード</xsl:if>
			<xsl:if test="$id='UseClass'">使用用途分類</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='JGP1'">JGP File Info.</xsl:if>
			<xsl:if test="$id='JGP2'">Requester/Respondent Info.</xsl:if>
			<xsl:if test="$id='JGP3'">View Item Selector</xsl:if>
			<xsl:if test="$id='JGP4'">Product/Subpart/Material Info.</xsl:if>
			<xsl:if test="$id='2ndContents'">2nd Level / Contents</xsl:if>
			<xsl:if test="$id='2ndJudge'">2nd Level / Judge</xsl:if>
			<xsl:if test="$id='3rd'">3rd Level</xsl:if>
			<xsl:if test="$id='AddInfo'">Additional information</xsl:if>
			<xsl:if test="$id='Adr'">Address</xsl:if>
			<xsl:if test="$id='ClassName'">Substance Groups Name</xsl:if>
			<xsl:if test="$id='ClassNo'">Classification No.</xsl:if>
			<xsl:if test="$id='Color'">Color</xsl:if>
			<xsl:if test="$id='ColorNo'">Coloring No.</xsl:if>
			<xsl:if test="$id='CoName'">Company Name</xsl:if>
			<xsl:if test="$id='Contact'">Contact Name</xsl:if>
			<xsl:if test="$id='DataVer'">Data Version</xsl:if>
			<xsl:if test="$id='Diameter'">Diameter(mm)</xsl:if>
			<xsl:if test="$id='Div'">Division Name</xsl:if>
			<xsl:if test="$id='Eng'">English</xsl:if>
			<xsl:if test="$id='EntryData'">Date of Data Entry</xsl:if>
			<xsl:if test="$id='Flag'">Content Flag</xsl:if>
			<xsl:if test="$id='ttlFlag'">Overall Content Flag</xsl:if>
			<xsl:if test="$id='FormatVer'">Data Format Ver.</xsl:if>
			<xsl:if test="$id='Grade'">Grade No.</xsl:if>
			<xsl:if test="$id='IssContact'">Contact Name</xsl:if>
			<xsl:if test="$id='Item1'">Item 1</xsl:if>
			<xsl:if test="$id='Item2'">Item 2</xsl:if>
			<xsl:if test="$id='Item3'">Item 3</xsl:if>
			<xsl:if test="$id='ItemName'">Product name</xsl:if>
			<xsl:if test="$id='ItemNo'">Product number</xsl:if>
			<xsl:if test="$id='JIS'">Metal Type JIS symbols</xsl:if>
			<xsl:if test="$id='Lang'">Language</xsl:if>
			<xsl:if test="$id='LoadVer'">Load File Ver.</xsl:if>
			<xsl:if test="$id='Local'">Japanese/Chinese</xsl:if>
			<xsl:if test="$id='Maker'">Manufacturer Name</xsl:if>
			<xsl:if test="$id='Mass'">Mass(g/unit)</xsl:if>
			<xsl:if test="$id='MassSubs'">Substance Mass(mg)</xsl:if>
			<xsl:if test="$id='MassTtl'">Total Content(mg)</xsl:if>
			<xsl:if test="$id='MatSpec'">Specific information on materials</xsl:if>
			<xsl:if test="$id='Other'">Other</xsl:if>
			<xsl:if test="$id='Part'">Application area</xsl:if>
			<xsl:if test="$id='RatePer'">Weight concentration(wt%)</xsl:if>
			<xsl:if test="$id='RatePpm'">Max content rate (ppm)</xsl:if>
			<xsl:if test="$id='RefNo'">Reference Number</xsl:if>
			<xsl:if test="$id='Remarks'">Remarks</xsl:if>
			<xsl:if test="$id='ReqInfo'">Requester</xsl:if>
			<xsl:if test="$id='ReqManagement'">Requester's management items</xsl:if>
			<xsl:if test="$id='ResData'">Respondent's date of data entry</xsl:if>
			<xsl:if test="$id='ResInfo'">Respondent</xsl:if>
			<xsl:if test="$id='RevData'">Revision Date</xsl:if>
			<xsl:if test="$id='SubsName'">Substance Name</xsl:if>
			<xsl:if test="$id='Thick'">Thickness(mm)</xsl:if>
			<xsl:if test="$id='Unit'">Surveying Unit</xsl:if>
			<xsl:if test="$id='Use'">Purpose of use/Intended use</xsl:if>
			<xsl:if test="$id='UseCode'">Intended use classification code</xsl:if>
			<xsl:if test="$id='UseClass'">Intended use classification</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='JGP1'">JGP文件信息</xsl:if>
			<xsl:if test="$id='JGP2'">委托单位/回答单位 信息</xsl:if>
			<xsl:if test="$id='JGP3'">查看产品选择</xsl:if>
			<xsl:if test="$id='JGP4'">产品/部件/材料的信息</xsl:if>
			<xsl:if test="$id='2ndContents'">第二层 / 内容</xsl:if>
			<xsl:if test="$id='2ndJudge'">第二层 / 决策</xsl:if>
			<xsl:if test="$id='3rd'">第三层</xsl:if>
			<xsl:if test="$id='AddInfo'">追加信息</xsl:if>
			<xsl:if test="$id='Adr'">地址</xsl:if>
			<xsl:if test="$id='ClassName'">物质群名称</xsl:if>
			<xsl:if test="$id='ClassNo'">物质群<br/>分类No</xsl:if>
			<xsl:if test="$id='Color'">颜色</xsl:if>
			<xsl:if test="$id='ColorNo'">着色No.</xsl:if>
			<xsl:if test="$id='CoName'">公司名称</xsl:if>
			<xsl:if test="$id='Contact'">担当者姓名</xsl:if>
			<xsl:if test="$id='DataVer'">数据版本</xsl:if>
			<xsl:if test="$id='Diameter'">直径(mm)</xsl:if>
			<xsl:if test="$id='Div'">部门名称</xsl:if>
			<xsl:if test="$id='Eng'">英文</xsl:if>
			<xsl:if test="$id='EntryData'">委托单位填写日期</xsl:if>
			<xsl:if test="$id='Flag'">是否<br/>含有</xsl:if>
			<xsl:if test="$id='ttlFlag'">含有综合判定</xsl:if>
			<xsl:if test="$id='FormatVer'">Data Format Ver.</xsl:if>
			<xsl:if test="$id='Grade'">等级No.</xsl:if>
			<xsl:if test="$id='IssContact'">填写人姓名</xsl:if>
			<xsl:if test="$id='Item1'">项目1</xsl:if>
			<xsl:if test="$id='Item2'">项目2</xsl:if>
			<xsl:if test="$id='Item3'">项目3</xsl:if>
			<xsl:if test="$id='ItemName'">产品名称</xsl:if>
			<xsl:if test="$id='ItemNo'">产品编号</xsl:if>
			<xsl:if test="$id='JIS'">金属符号/JIS符号</xsl:if>
			<xsl:if test="$id='Lang'">语言</xsl:if>
			<xsl:if test="$id='LoadVer'">Load File Ver.</xsl:if>
			<xsl:if test="$id='Local'">日文/中文</xsl:if>
			<xsl:if test="$id='Maker'">厂商名称</xsl:if>
			<xsl:if test="$id='Mass'">质量(g/调查单位)</xsl:if>
			<xsl:if test="$id='MassSubs'">化合物<br/>含有量(mg)</xsl:if>
			<xsl:if test="$id='MassTtl'">总含量(mg)</xsl:if>
			<xsl:if test="$id='MatSpec'">材料特定信息</xsl:if>
			<xsl:if test="$id='Other'">其他</xsl:if>
			<xsl:if test="$id='Part'">使用部位</xsl:if>
			<xsl:if test="$id='RatePer'">重量浓度<br/>(wt%)</xsl:if>
			<xsl:if test="$id='RatePpm'">最大含有率<br/>(ppm)</xsl:if>
			<xsl:if test="$id='RefNo'">整理编号</xsl:if>
			<xsl:if test="$id='Remarks'">追加<br/>事项</xsl:if>
			<xsl:if test="$id='ReqInfo'">委托单位</xsl:if>
			<xsl:if test="$id='ReqManagement'">委托单位管理项目</xsl:if>
			<xsl:if test="$id='ResData'">回答单位填写日期</xsl:if>
			<xsl:if test="$id='ResInfo'">回答单位</xsl:if>
			<xsl:if test="$id='RevData'">修订日</xsl:if>
			<xsl:if test="$id='SubsName'">含有物质名称</xsl:if>
			<xsl:if test="$id='Thick'">板厚(mm)</xsl:if>
			<xsl:if test="$id='Unit'">调查单位</xsl:if>
			<xsl:if test="$id='Use'">使用用途和目的</xsl:if>
			<xsl:if test="$id='UseCode'">使用用途<br/>分类代码</xsl:if>
			<xsl:if test="$id='UseClass'">使用用途<br/>分类</xsl:if>
		</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		JGP物質郡名称取得関数
##########################################################################################-->
	<xsl:template name="getJgpClass">
		<xsl:param name="id" />
		<xsl:if test="$id='A05'">Cd</xsl:if>
		<xsl:if test="$id='A07'">Cr(&#8549;)</xsl:if>
		<xsl:if test="$id='A09'">Pb</xsl:if>
		<xsl:if test="$id='A10'">Hg</xsl:if>
		<xsl:if test="$id='A11'">Ni</xsl:if>
		<xsl:if test="$id='A17'">TBTO</xsl:if>
		<xsl:if test="$id='A18'">TBT, TPT</xsl:if>
		<xsl:if test="$id='A19'">BeO</xsl:if>
		<xsl:if test="$id='A20'">As2O5</xsl:if>
		<xsl:if test="$id='A21'">As2O3</xsl:if>
		<xsl:if test="$id='A22'">SVHC</xsl:if>
		<xsl:if test="$id='A23'">DBT</xsl:if>
		<xsl:if test="$id='A24'">DOT</xsl:if>
		<xsl:if test="$id='A25'">SVHC</xsl:if>
		<xsl:if test="$id='A26'">SVHC</xsl:if>
		<xsl:if test="$id='A27'">SVHC</xsl:if>
		<xsl:if test="$id='A28'">OrganoStannane</xsl:if>
		<xsl:if test="$id='A29'">SVHC</xsl:if>
		<xsl:if test="$id='A30'">SVHC</xsl:if>
		<xsl:if test="$id='A31'">SVHC</xsl:if>
		<xsl:if test="$id='A32'">SVHC</xsl:if>
		<xsl:if test="$id='A33'">SVHC</xsl:if>
		<xsl:if test="$id='A34'">SVHC</xsl:if>
		<xsl:if test="$id='A35'">SVHC</xsl:if>
		<xsl:if test="$id='A36'">SVHC</xsl:if>
		<xsl:if test="$id='A37'">SVHC</xsl:if>
		<xsl:if test="$id='A38'">SVHC</xsl:if>
		<xsl:if test="$id='A39'">SVHC</xsl:if>
		<xsl:if test="$id='A40'">SVHC</xsl:if>
		<xsl:if test="$id='A41'">SVHC</xsl:if>
		<xsl:if test="$id='A42'">SVHC</xsl:if>
		<xsl:if test="$id='A43'">SVHC</xsl:if>
		<xsl:if test="$id='A44'">SVHC</xsl:if>
		<xsl:if test="$id='A45'">SVHC</xsl:if>
		<xsl:if test="$id='A46'">SVHC</xsl:if>
		<xsl:if test="$id='A47'">SVHC</xsl:if>
		<xsl:if test="$id='A48'">SVHC</xsl:if>
		<xsl:if test="$id='A49'">SVHC</xsl:if>
		<xsl:if test="$id='A50'">SVHC</xsl:if>
		<xsl:if test="$id='A51'">SVHC</xsl:if>
		<xsl:if test="$id='A52'">SVHC</xsl:if>
		<xsl:if test="$id='A53'">SVHC</xsl:if>
		<xsl:if test="$id='A54'">SVHC</xsl:if>
		<xsl:if test="$id='A55'">SVHC</xsl:if>
		<xsl:if test="$id='A56'">SVHC</xsl:if>
		<xsl:if test="$id='A57'">SVHC</xsl:if>
		<xsl:if test="$id='A58'">SVHC</xsl:if>
		<xsl:if test="$id='A59'">SVHC</xsl:if>
		<xsl:if test="$id='A60'">SVHC</xsl:if>
		<xsl:if test="$id='A61'">SVHC</xsl:if>
		<xsl:if test="$id='A62'">SVHC</xsl:if>
		<xsl:if test="$id='A63'">SVHC</xsl:if>
		<xsl:if test="$id='B02'">PBB</xsl:if>
		<xsl:if test="$id='B03'">PBDE</xsl:if>
		<xsl:if test="$id='B05'">PCB</xsl:if>
		<xsl:if test="$id='B06'">PCN (Cl&#8805;3)</xsl:if>
		<xsl:if test="$id='B07'">PVC</xsl:if>
		<xsl:if test="$id='B08'">BFRs</xsl:if>
		<xsl:if test="$id='B09'">SCCP<br/>(10&#8804;C&#8804;13)</xsl:if>
		<xsl:if test="$id='B10'">HFC, CFC, SF6</xsl:if>
		<xsl:if test="$id='B11'">HBCDD</xsl:if>
		<xsl:if test="$id='B12'">Perchlorates</xsl:if>
		<xsl:if test="$id='B13'">PFOS</xsl:if>
		<xsl:if test="$id='B14'">Deca-BDE</xsl:if>
		<xsl:if test="$id='B15'">PCTs</xsl:if>
		<xsl:if test="$id='B16'">TCEP</xsl:if>
		<xsl:if test="$id='B17'">SVHC</xsl:if>
		<xsl:if test="$id='B18'">CFRs</xsl:if>
		<xsl:if test="$id='B19'">PVC</xsl:if>
		<xsl:if test="$id='B20'">SVHC</xsl:if>
		<xsl:if test="$id='B21'">SVHC</xsl:if>
		<xsl:if test="$id='B23'">SVHC</xsl:if>
		<xsl:if test="$id='C01'">Asbestos</xsl:if>
		<xsl:if test="$id='C02'">AzoColourants,<br/>AzoDyes</xsl:if>
		<xsl:if test="$id='C04'">ODS</xsl:if>
		<xsl:if test="$id='C06'">Radioactive<br/>Substances</xsl:if>
		<xsl:if test="$id='C07'">Formaldehyde</xsl:if>
		<xsl:if test="$id='C08'">Specific<br/>Benzotriazol</xsl:if>
		<xsl:if test="$id='C09'">Phthalates<br/>Group 1</xsl:if>
		<xsl:if test="$id='C10'">Phthalates<br/>Group 2</xsl:if>
		<xsl:if test="$id='C11'">DMF</xsl:if>
		<xsl:if test="$id='C12'">SVHC</xsl:if>
		<xsl:if test="$id='C13'">SVHC</xsl:if>
		<xsl:if test="$id='C14'">SVHC</xsl:if>
		<xsl:if test="$id='C15'">SVHC</xsl:if>
		<xsl:if test="$id='C16'">SVHC</xsl:if>
		<xsl:if test="$id='C17'">SVHC</xsl:if>
		<xsl:if test="$id='C18'">SVHC</xsl:if>
		<xsl:if test="$id='C19'">SVHC</xsl:if>
		<xsl:if test="$id='C20'">SVHC</xsl:if>
		<xsl:if test="$id='C21'">SVHC</xsl:if>
		<xsl:if test="$id='C22'">SVHC</xsl:if>
		<xsl:if test="$id='C23'">SVHC</xsl:if>
		<xsl:if test="$id='C24'">SVHC</xsl:if>
		<xsl:if test="$id='C25'">SVHC</xsl:if>
		<xsl:if test="$id='C26'">SVHC</xsl:if>
		<xsl:if test="$id='C27'">SVHC</xsl:if>
		<xsl:if test="$id='C28'">SVHC</xsl:if>
		<xsl:if test="$id='C29'">SVHC</xsl:if>
		<xsl:if test="$id='C30'">SVHC</xsl:if>
		<xsl:if test="$id='C31'">SVHC</xsl:if>
		<xsl:if test="$id='C32'">SVHC</xsl:if>
		<xsl:if test="$id='C33'">SVHC</xsl:if>
		<xsl:if test="$id='C34'">SVHC</xsl:if>
		<xsl:if test="$id='C35'">SVHC</xsl:if>
		<xsl:if test="$id='C36'">DIDP</xsl:if>
		<xsl:if test="$id='C37'">DnHP</xsl:if>
		<xsl:if test="$id='C38'">SVHC</xsl:if>
		<xsl:if test="$id='C39'">SVHC</xsl:if>
		<xsl:if test="$id='C40'">SVHC</xsl:if>
		<xsl:if test="$id='C41'">SVHC</xsl:if>
		<xsl:if test="$id='C42'">SVHC</xsl:if>
		<xsl:if test="$id='C43'">SVHC</xsl:if>
		<xsl:if test="$id='C44'">SVHC</xsl:if>
		<xsl:if test="$id='C45'">SVHC</xsl:if>
		<xsl:if test="$id='C46'">SVHC</xsl:if>
		<xsl:if test="$id='C47'">DIDP</xsl:if>
		<xsl:if test="$id='C48'">DnHP</xsl:if>
		<xsl:if test="$id='J01'">SVHC</xsl:if>
	</xsl:template>
<!--
##########################################################################################
		JGP物質郡詳細取得関数
##########################################################################################-->
	<xsl:template name="getJgpClsDetail">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='A05'">カドミウム/カドミウム化合物</xsl:if>
			<xsl:if test="$id='A07'">六価クロム化合物</xsl:if>
			<xsl:if test="$id='A09'">鉛/鉛化合物</xsl:if>
			<xsl:if test="$id='A10'">水銀/水銀化合物</xsl:if>
			<xsl:if test="$id='A11'">ニッケル</xsl:if>
			<xsl:if test="$id='A17'">トリブチルスズ=オキシド(TBTO、CAS No.56-35-9)</xsl:if>
			<xsl:if test="$id='A18'">一部のトリブチルスズ(TBT)及びトリフェニルスズ(TPT)</xsl:if>
			<xsl:if test="$id='A19'">酸化ベリリウム (CAS No.1304-56-9)</xsl:if>
			<xsl:if test="$id='A20'">五酸化二ヒ素 (CAS No.1303-28-2)</xsl:if>
			<xsl:if test="$id='A21'">三酸化二ヒ素 (CAS No.1327-53-3)</xsl:if>
			<xsl:if test="$id='A22'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A23'">ジブチルスズ化合物 (DBT)</xsl:if>
			<xsl:if test="$id='A24'">ジオクチルスズ化合物 (DOT)</xsl:if>
			<xsl:if test="$id='A25'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A26'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A27'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A28'">三置換有機スズ化合物</xsl:if>
			<xsl:if test="$id='A29'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A30'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A31'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='B02'">ポリ臭化ビフェニル類(PBB類)</xsl:if>
			<xsl:if test="$id='B03'">ポリ臭化ジフェニルエーテル類(PBDE類)</xsl:if>
			<xsl:if test="$id='B05'">ポリ塩化ビフェニル類(PCB類)及び特定代替物質(JIG-101参照)</xsl:if>
			<xsl:if test="$id='B06'">ポリ塩化ナフタレン(塩素数が3以上)</xsl:if>
			<xsl:if test="$id='B07'">ポリ塩化ビニル(PVC)</xsl:if>
			<xsl:if test="$id='B08'">臭素系難燃剤(PBB類、PBDE類およびHBCDDを除く)</xsl:if>
			<xsl:if test="$id='B09'">短鎖型塩化パラフィン(炭素数10～13) (CAS No.85535-84-8)</xsl:if>
			<xsl:if test="$id='B10'">フッ素系温室効果ガス(HFC、PFC、SF6)</xsl:if>
			<xsl:if test="$id='B11'">ヘキサブロモシクロドデカン(HBCDD)＜すべての主要ジアステレオ異性体を含む＞ (CAS No.25637-99-4 及び CAS No.3194-55-6) (JIG-101参照)</xsl:if>
			<xsl:if test="$id='B12'">過塩素酸塩</xsl:if>
			<xsl:if test="$id='B13'">パーフルオロオクタンスルホン酸塩(PFOS)</xsl:if>
			<xsl:if test="$id='B14'">Deca-BDE(PBDE) (CAS No.1163-19-5)</xsl:if>
			<xsl:if test="$id='B15'">ポリ塩化ターフェニル類(PCT類)</xsl:if>
			<xsl:if test="$id='B16'">リン酸トリス(2-クロロエチル)(TCEP、CAS No.115-96-8)</xsl:if>
			<xsl:if test="$id='B17'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='B18'">塩素系難燃剤</xsl:if>
			<xsl:if test="$id='B19'">ポリ塩化ビニル(PVC)</xsl:if>
			<xsl:if test="$id='B20'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C01'">アスベスト類</xsl:if>
			<xsl:if test="$id='C02'">一部の芳香族アミンを生成するアゾ染料・顔料</xsl:if>
			<xsl:if test="$id='C04'">オゾン層破壊物質</xsl:if>
			<xsl:if test="$id='C06'">放射性物質</xsl:if>
			<xsl:if test="$id='C07'">ホルムアルデヒド</xsl:if>
			<xsl:if test="$id='C08'">フェノール、2-(2H-ベンゾトリアゾール-2-yl)-4,6-ビス(1,1-ジメチルエチル) (CAS No.3846-71-7)</xsl:if>
			<xsl:if test="$id='C09'">フタル酸エステル類DEHP(CAS No.117-81-7)DBP(CAS No.84-74-2)BBP(CAS No.85-68-7)</xsl:if>
			<xsl:if test="$id='C10'">フタル酸エステル類DINP(CAS No.28553-12-0、CAS No.68515-48-0)DIDP(CAS No.26761-40-0、CAS No.68515-49-1)DNOP(CAS No.117-84-0)</xsl:if>
			<xsl:if test="$id='C11'">ジメチルフマレート(フマル酸ジメチル)</xsl:if>
			<xsl:if test="$id='C36'">フタル酸ジイソデシル(DIDP)(CAS No.68515-49-1, 26761-40-0)</xsl:if>
			<xsl:if test="$id='C37'">フタル酸ジ-n-ヘキシル(DnHP)(CAS No.84-75-3)</xsl:if>
			<xsl:if test="$id='C12'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C13'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C14'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C15'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C16'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C17'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C18'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C19'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C20'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C21'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C22'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C23'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C24'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C25'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C26'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='J01'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A32'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A33'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A34'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A35'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A36'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A37'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A38'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A39'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A40'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A41'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A42'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A43'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A44'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A45'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A46'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A47'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='B21'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C27'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C28'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C29'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C30'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C31'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C32'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C33'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C34'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C35'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<!--Ver.4.31 追加分  -->
			<xsl:if test="$id='B23'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A48'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C38'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A49'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C39'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C40'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A50'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A51'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A52'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A53'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C41'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C42'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A54'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A55'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C43'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A56'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C44'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C45'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C46'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A57'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A58'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A59'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A60'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A61'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A62'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='A63'">特定のREACH規則認可対象候補物質(SVHC)</xsl:if>
			<xsl:if test="$id='C47'">フタル酸ジイソデシル(DIDP)(CAS No.68515-49-1, 26761-40-0)</xsl:if>
			<xsl:if test="$id='C48'">フタル酸ジ-n-ヘキシル(DnHP)(CAS No.84-75-3)</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='A05'">Cadmium and Cadmium Compounds</xsl:if>
			<xsl:if test="$id='A07'">Hexavalent Chromium Compounds</xsl:if>
			<xsl:if test="$id='A09'">Lead and Lead Compounds</xsl:if>
			<xsl:if test="$id='A10'">Mercury and Mercury Compounds</xsl:if>
			<xsl:if test="$id='A11'">Nickel </xsl:if>
			<xsl:if test="$id='A17'">Tributyl Tin Oxide(TBTO,CAS No.56-35-9)</xsl:if>
			<xsl:if test="$id='A18'">Certain Tributyl Tins(TBT) &#38; Triphenyl Tins(TPT)</xsl:if>
			<xsl:if test="$id='A19'">Beryllium Oxide (CAS No.1304-56-9)</xsl:if>
			<xsl:if test="$id='A20'">Diarsenic Pentoxide (CAS No.1303-28-2)</xsl:if>
			<xsl:if test="$id='A21'">Diarsenic Trioxide (CAS No.1327-53-3)</xsl:if>
			<xsl:if test="$id='A22'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A23'">Dibutyltin (DBT) compounds</xsl:if>
			<xsl:if test="$id='A24'">Dioctyltin (DOT) compounds</xsl:if>
			<xsl:if test="$id='A25'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A26'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A27'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A28'">Tri-substiituted organostannic compounds</xsl:if>
			<xsl:if test="$id='A29'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A30'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A31'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='B02'">Polybrominated Biphenyls (PBBs)</xsl:if>
			<xsl:if test="$id='B03'">Polybrominated Diphenyl ethers (PBDEs)</xsl:if>
			<xsl:if test="$id='B05'">Polychlorinated Biphenyls (PCBs) and specific substitutes (See JIG-101) </xsl:if>
			<xsl:if test="$id='B06'">Polychlorinated Naphthalenes (more than 3 chlorine atoms)</xsl:if>
			<xsl:if test="$id='B07'">Polyvinyl Chloride (PVC)</xsl:if>
			<xsl:if test="$id='B08'">Brominated flame retardants (other than PBBs,PBDEs, or HBCDD)</xsl:if>
			<xsl:if test="$id='B09'">Shortchain Chlorinated Paraffins (C10-C13)  (CAS No.85535-84-8)</xsl:if>
			<xsl:if test="$id='B10'">Fluorinated greenhouse gases (PFC, SF6, HFC)</xsl:if>
			<xsl:if test="$id='B11'">Hexabromocyclododecane (HBCDD) and all major diastereoisomers (CAS No.25637-99-4 and CAS No.3194-55-6) (See JIG-101)</xsl:if>
			<xsl:if test="$id='B12'">Perchlorates</xsl:if>
			<xsl:if test="$id='B13'">Perfluorooctane sulfonate (PFOS)</xsl:if>
			<xsl:if test="$id='B14'">Deca-BDE(PBDE) (CAS No.1163-19-5)</xsl:if>
			<xsl:if test="$id='B15'">Polychlorinated Terphenyls (PCTs)</xsl:if>
			<xsl:if test="$id='B16'">Tris (2-chloroethyl) phosphate (TCEP,CAS No.115-96-8)</xsl:if>
			<xsl:if test="$id='B17'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='B18'">Chlorinated flame retardants</xsl:if>
			<xsl:if test="$id='B19'">Polyvinyl chloride (PVC) and PVC copolymer</xsl:if>
			<xsl:if test="$id='B20'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C01'">Asbestos</xsl:if>
			<xsl:if test="$id='C02'">Azocolourants and azodyes which form certain aromatic amines </xsl:if>
			<xsl:if test="$id='C04'">Ozone Depleting Substances</xsl:if>
			<xsl:if test="$id='C06'">Radioactive Substances</xsl:if>
			<xsl:if test="$id='C07'">Formaldehyde</xsl:if>
			<xsl:if test="$id='C08'">Phenol,2-(2H-benzotriazol-2-yl)-4,6-bis(1,1-dimethylethyl) (CAS No.3846-71-7)</xsl:if>
			<xsl:if test="$id='C09'">Selected Phthalates Group 1 (BBP, DBP, DEHP)</xsl:if>
			<xsl:if test="$id='C10'">Selected Phthalates Group 2 (DIDP, DINP, DNOP)</xsl:if>
			<xsl:if test="$id='C11'">Dimethyl fumarate</xsl:if>
			<xsl:if test="$id='C36'">Di-isodecyl phthalate (DIDP)(CAS No.68515-49-1, 26761-40-0 )</xsl:if>
			<xsl:if test="$id='C37'">Di-n-hexyl Phthalate (DnHP)(CAS No.84-75-3)</xsl:if>
			<xsl:if test="$id='C12'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C13'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C14'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C15'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C16'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C17'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C18'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C19'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C20'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C21'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C22'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C23'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C24'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C25'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C26'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='J01'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A32'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A33'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A34'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A35'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A36'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A37'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A38'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A39'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A40'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A41'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A42'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A43'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A44'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A45'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A46'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A47'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='B21'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C27'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C28'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C29'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C30'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C31'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C32'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C33'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C34'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C35'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<!-- Ver.4.31 追加分-->
			<xsl:if test="$id='B23'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A48'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C38'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A49'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C39'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C40'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A50'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A51'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A52'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A53'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C41'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C42'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A54'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A55'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C43'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A56'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C44'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C45'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C46'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A57'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A58'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A59'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A60'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A61'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A62'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='A63'">Specific REACH candidate list of SVHC for authorization.</xsl:if>
			<xsl:if test="$id='C47'">Di-isodecyl phthalate (DIDP)(CAS No.68515-49-1, 26761-40-0 )</xsl:if>
			<xsl:if test="$id='C48'">Di-n-hexyl Phthalate (DnHP)(CAS No.84-75-3)</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='A05'">镉/镉化合物</xsl:if>
			<xsl:if test="$id='A07'">六价铬化合物</xsl:if>
			<xsl:if test="$id='A09'">铅/铅化合物</xsl:if>
			<xsl:if test="$id='A10'">汞/汞化合物</xsl:if>
			<xsl:if test="$id='A11'">镍</xsl:if>
			<xsl:if test="$id='A17'">氧化三丁基锡(TBTO,CAS No.56-35-9)</xsl:if>
			<xsl:if test="$id='A18'">部分三丁基锡(TBT),三苯基锡(TPT)</xsl:if>
			<xsl:if test="$id='A19'">氧化铍(CAS No.1304-56-9)</xsl:if>
			<xsl:if test="$id='A20'">五氧化二砷(CAS No.1303-28-2)</xsl:if>
			<xsl:if test="$id='A21'">三氧化二砷(CAS No.1327-53-3)</xsl:if>
			<xsl:if test="$id='A22'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A23'">二丁基锡化合物(DBT)</xsl:if>
			<xsl:if test="$id='A24'">二辛基锡化合物(DOT)</xsl:if>
			<xsl:if test="$id='A25'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A26'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A27'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A28'">三取代有机锡化合物</xsl:if>
			<xsl:if test="$id='A29'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A30'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A31'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='B02'">聚溴联苯类(PBB类)</xsl:if>
			<xsl:if test="$id='B03'">溴联苯醚类(PBDE类)</xsl:if>
			<xsl:if test="$id='B05'">多氯联苯类(PCB类)及特定代替物质(参见JIG-101 Ed 2.0另表B)</xsl:if>
			<xsl:if test="$id='B06'">多氯化萘(氯原子数在3以上)</xsl:if>
			<xsl:if test="$id='B07'">聚氯乙烯(PVC)</xsl:if>
			<xsl:if test="$id='B08'">溴系阻燃剂(PBB类,PBDE类和HBCDD除外)</xsl:if>
			<xsl:if test="$id='B09'">短链型氯石蜡(C10-13) (CAS No.85535-84-8)</xsl:if>
			<xsl:if test="$id='B10'">氟族温室效应气体(HFC,PFC,SF6)</xsl:if>
			<xsl:if test="$id='B11'">六溴环十二烷(HBCDD)&#60;包括所有主要非对映异构体&#62;(CAS No.25637-99-4 及 CAS No.3194-55-6)(参见JIG-101)</xsl:if>
			<xsl:if test="$id='B12'">过氯酸盐</xsl:if>
			<xsl:if test="$id='B13'">全氟辛烷磺酸盐(PFOS)</xsl:if>
			<xsl:if test="$id='B14'">Deca-BDE(PBDE)(CAS No.1163-19-5)</xsl:if>
			<xsl:if test="$id='B15'">多氯三联苯类(PCT类)</xsl:if>
			<xsl:if test="$id='B16'">磷酸三硬脂精(2-氯二乙硫醚)(TCEP,CAS No.115-96-8)</xsl:if>
			<xsl:if test="$id='B17'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='B18'">氯系阻燃剂</xsl:if>
			<xsl:if test="$id='B19'">聚氯乙烯(PVC)和PVC共聚物</xsl:if>
			<xsl:if test="$id='B20'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C01'">石棉类</xsl:if>
			<xsl:if test="$id='C02'">生成部分芳香族胺的偶氮染料和颜料</xsl:if>
			<xsl:if test="$id='C04'">臭氧层破坏物质</xsl:if>
			<xsl:if test="$id='C06'">放射性物质</xsl:if>
			<xsl:if test="$id='C07'">甲醛</xsl:if>
			<xsl:if test="$id='C08'">酚,2-(2H-苯并三唑-2-yl)-4,6-双(1,1-二甲乙基)(CAS No.3846-71-7)</xsl:if>
			<xsl:if test="$id='C09'">酞酸酯类 第1组 (BBP, DBP, DEHP)</xsl:if>
			<xsl:if test="$id='C10'">酞酸酯类 第2组 (DIDP, DINP, DNOP)</xsl:if>
			<xsl:if test="$id='C11'">富马酸二甲酯</xsl:if>
			<xsl:if test="$id='C36'">邻苯二甲酸二异癸酯(DIDP) (CAS No.68515-49-1, 26761-40-0)</xsl:if>
			<xsl:if test="$id='C37'">邻苯二甲酸二已酯(DnHP) (CAS No.84-75-3)</xsl:if>
			<xsl:if test="$id='C12'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C13'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C14'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C15'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C16'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C17'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C18'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C19'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C20'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C21'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C22'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C23'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C24'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C25'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C26'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='J01'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A32'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A33'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A34'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A35'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A36'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A37'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A38'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A39'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A40'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A41'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A42'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A43'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A44'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A45'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A46'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A47'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='B21'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C27'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C28'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C29'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C30'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C31'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C32'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C33'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C34'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C35'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<!--Ver.4.31 追加分-->
			<xsl:if test="$id='B23'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A48'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C38'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A49'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C39'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C40'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A50'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A51'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A52'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A53'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C41'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C42'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A54'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A55'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C43'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A56'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C44'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C45'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C46'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A57'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A58'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A59'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A60'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A61'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A62'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='A63'">确定的REACH法规认可对象候补物质(SVHC)</xsl:if>
			<xsl:if test="$id='C47'">邻苯二甲酸二异癸酯(DIDP) (CAS No.68515-49-1, 26761-40-0)</xsl:if>
			<xsl:if test="$id='C48'">邻苯二甲酸二已酯(DnHP) (CAS No.84-75-3)</xsl:if>
		</xsl:if>
	</xsl:template>
<!--
##########################################################################################
	JGP第三階層内容取得関数
##########################################################################################
-->
	<xsl:template name="getJgpCAS">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='56-35-9'">トリブチルスズ=オキシド (TBTO)</xsl:if>
			<xsl:if test="$id='1303-28-2'">五酸化二ヒ素</xsl:if>
			<xsl:if test="$id='1327-53-3'">三酸化二ヒ素</xsl:if>
			<xsl:if test="$id='25637-99-4'">ヘキサブロモシクロドデカン(HBCDD)</xsl:if>
			<xsl:if test="$id='3194-55-6'">1,2,5,6,9,10-ヘキサブロモシクロドデカン</xsl:if>
			<xsl:if test="$id='134237-50-6'">&#945;-ヘキサブロモシクロドデカン</xsl:if>
			<xsl:if test="$id='134237-51-7'">&#946;-ヘキサブロモシクロドデカン</xsl:if>
			<xsl:if test="$id='134237-52-8'">&#947;-ヘキサブロモシクロドデカン</xsl:if>
			<xsl:if test="$id='85535-84-8'">短鎖型塩化パラフィン類(炭素数10~13)</xsl:if>
			<xsl:if test="$id='115-96-8'">リン酸トリス(2-クロロエチル) (TCEP)</xsl:if>
			<xsl:if test="$id='117-81-7'">フタル酸ビス(2-エチルヘキシル) (DEHP)</xsl:if>
			<xsl:if test="$id='84-74-2'">フタル酸ジブチル (DBP)</xsl:if>
			<xsl:if test="$id='85-68-7'">フタル酸ブチルベンジル (BBP)</xsl:if>
			<xsl:if test="$id='7646-79-9'">塩化コバルト(CoCl2)</xsl:if>
			<xsl:if test="$id='7758-97-6'">クロム酸鉛</xsl:if>
			<xsl:if test="$id='12656-85-8'">硫酸モリブデン酸クロム酸鉛<br/>(C.I. ピグメントレッド104)</xsl:if>
			<xsl:if test="$id='1344-37-2'">C.I. ピグメントイエロー34</xsl:if>
			<xsl:if test="$id='84-69-5'">フタル酸ジイソブチル (DIBP)</xsl:if>
			<xsl:if test="$id='C16-NA'">アルミノ珪酸塩,耐火セラミック繊維(JIG-101参照)</xsl:if>
			<xsl:if test="$id='C17-NA'">ジルコニアアルミノ珪酸塩,耐火セラミック繊維(JIG-101参照)</xsl:if>
			<xsl:if test="$id='10043-35-3'">ホウ酸</xsl:if>
			<xsl:if test="$id='11113-50-1'">ホウ酸</xsl:if>
			<xsl:if test="$id='1303-96-4'">四ホウ酸二ナトリウム10水和物(ほう砂)</xsl:if>
			<xsl:if test="$id='1330-43-4'">四ホウ酸二ナトリウム</xsl:if>
			<xsl:if test="$id='12179-04-3'">四ホウ酸二ナトリウム5水和物</xsl:if>
			<xsl:if test="$id='12267-73-1'">七酸化二ナトリウム四ホウ素水和物<br/>(四ホウ酸二ナトリウム水和物)</xsl:if>
			<xsl:if test="$id='71888-89-6'">1,2-ベンゼンジカルボン酸<br/>炭素数7を主成分とする炭素数6~8の分岐ジアルキルエステル類 (DIHP)</xsl:if>
			<xsl:if test="$id='68515-42-4'">1,2-ベンゼンジカルボン酸<br/>炭素数7~11の分岐および直鎖ジアルキルエステル類 (DHNUP)</xsl:if>
			<xsl:if test="$id='548-62-9'">C.I. ベイシックバイオレット3</xsl:if>
			<xsl:if test="$id='7789-06-2'">クロム酸鉛ストロンチウム</xsl:if>
			<xsl:if test="$id='101-14-4'">2,2'-ジクロロ-4,4'-メチレンジアニリン(MOCA)</xsl:if>
			<xsl:if test="$id='11103-86-9'">ヒドロキシオクタオキソ二亜鉛酸二クロム酸カリウム</xsl:if>
			<xsl:if test="$id='49663-84-5'">クロム酸八水酸化五亜鉛</xsl:if>
			<xsl:if test="$id='117-82-8'">フタル酸ビス(2-メトキシエチル)</xsl:if>
			<xsl:if test="$id='140-66-9'">4-(1,1,3,3-テトラメチルブチル)フェノール<br/>(4-tert-オクチルフェノール)</xsl:if>
			<xsl:if test="$id='111-96-6'">ビス(2-メトキシエチル)エーテル</xsl:if>
			<xsl:if test="$id='127-19-5'">N,N-ジメチルアセトアミド(DMAC)</xsl:if>
			<xsl:if test="$id='1163-19-5'">デカブロモジフェニルエーテル</xsl:if>
			<xsl:if test="$id='62229-08-7'">塩基性亜硫酸鉛</xsl:if>
			<xsl:if test="$id='112-49-2'">1,2-ビス(2-メトキシエトキシ)エタン(TEGDME;トリグライム)</xsl:if>
			<xsl:if test="$id='12141-20-7'">二塩基性リン酸鉛</xsl:if>
			<xsl:if test="$id='110-71-4'">1,2-ジメトキシエタン;エチレングリコールジメチルエーテル(EGDME)</xsl:if>
			<xsl:if test="$id='60-09-3'">4-アミノアゾベンゼン</xsl:if>
			<xsl:if test="$id='12202-17-4'">三塩基性硫酸鉛</xsl:if>
			<xsl:if test="$id='1314-41-6'">オレンジレッド(四酸化鉛)</xsl:if>
			<xsl:if test="$id='8012-00-8'">パイロクロア、C.I. ピグメントイエロー41</xsl:if>
			<xsl:if test="$id='12065-90-6'">四塩基性硫酸鉛</xsl:if>
			<xsl:if test="$id='629-14-1'">1,2-ジエトキシエタン</xsl:if>
			<xsl:if test="$id='1303-86-2'">三酸化ニホウ素</xsl:if>
			<xsl:if test="$id='683-18-1'">ジクロロジブチルスズ(DBTC)</xsl:if>
			<xsl:if test="$id='20837-86-9'">シアナミド鉛</xsl:if>
			<xsl:if test="$id='68-12-2'">N,N-ジメチルホルムアミド</xsl:if>
			<xsl:if test="$id='68784-75-8'">ケイ酸(H2Si2O5)バリウム塩(1:1)、鉛をドープ</xsl:if>
			<xsl:if test="$id='84777-06-0'">1,2-ベンゼンジカルボン酸、ジペンチルエステル、分岐および直鎖</xsl:if>
			<xsl:if test="$id='605-50-5'">フタル酸ジイソペンチル(DIPP)</xsl:if>
			<xsl:if test="$id='776297-69-9'">フタル酸n-ペンチル-イソペンチル</xsl:if>
			<xsl:if test="$id='12060-00-3'">三酸化チタン鉛、チタン酸鉛</xsl:if>
			<xsl:if test="$id='12626-81-2'">チタン酸ジルコニウム酸鉛</xsl:if>
			<xsl:if test="$id='12036-76-9'">オキシ硫酸鉛</xsl:if>
			<xsl:if test="$id='69011-06-9'">フタル酸ジオキソ三鉛</xsl:if>
			<xsl:if test="$id='12578-12-0'">ジオキソビス(ステアリン酸)三鉛</xsl:if>
			<xsl:if test="$id='91031-62-8'">脂肪酸鉛塩(炭素数16~18)</xsl:if>
			<xsl:if test="$id='10099-74-8'">二硝酸鉛、硝酸鉛(&#8545;)</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='7789-06-2'">Strontium chromate</xsl:if>
			<xsl:if test="$id='10043-35-3'">Boric acid</xsl:if>
			<xsl:if test="$id='101-14-4'">2,2'-dichloro-4,4'-methylenedianiline (MOCA)</xsl:if>
			<xsl:if test="$id='11103-86-9'">Potassium hydroxyoctaoxodizincate dichromate</xsl:if>
			<xsl:if test="$id='11113-50-1'">Boric acid</xsl:if>
			<xsl:if test="$id='111-96-6'">Bis(2-methoxyethyl) ether</xsl:if>
			<xsl:if test="$id='115-96-8'">Tris (2-chloroethyl)phosphate (TCEP)</xsl:if>
			<xsl:if test="$id='117-81-7'">Bis (2-ethylhexyl) phthalate (DEHP)</xsl:if>
			<xsl:if test="$id='117-82-8'">Bis(2-methoxyethyl) phthalate</xsl:if>
			<xsl:if test="$id='12179-04-3'">Disodium tetraborate, pentahydrate</xsl:if>
			<xsl:if test="$id='12267-73-1'">Tetraboron disodium heptaoxide, hydrate</xsl:if>
			<xsl:if test="$id='12656-85-8'">Lead chromate molybdate sulfate red</xsl:if>
			<xsl:if test="$id='127-19-5'">N,N-dimethylacetamide (DMAC)</xsl:if>
			<xsl:if test="$id='1303-28-2'">Diarsenic Pentoxide</xsl:if>
			<xsl:if test="$id='1303-96-4'">Disodium tetraborate decahydrate</xsl:if>
			<xsl:if test="$id='1327-53-3'">Diarsenic Trioxide</xsl:if>
			<xsl:if test="$id='1330-43-4'">Disodium tetraborate, anhydrous</xsl:if>
			<xsl:if test="$id='134237-50-6'">&#945;-Hexabromocyclododecane</xsl:if>
			<xsl:if test="$id='134237-51-7'">&#946;-Hexabromocyclododecane</xsl:if>
			<xsl:if test="$id='134237-52-8'">&#947;-Hexabromocyclododecane</xsl:if>
			<xsl:if test="$id='1344-37-2'">C.I.Pigment Yellow 34</xsl:if>
			<xsl:if test="$id='140-66-9'">4-(1,1,3,3-tetramethylbutyl)phenol, (4-tert-Octylphenol)</xsl:if>
			<xsl:if test="$id='25637-99-4'">Hexabromocyclododecane (HBCDD)</xsl:if>
			<xsl:if test="$id='3194-55-6'">1,2,5,6,9,10-Hexabromocyclododecane</xsl:if>
			<xsl:if test="$id='49663-84-5'">Pentazinc chromate octahydroxide</xsl:if>
			<xsl:if test="$id='548-62-9'">C.I. Basic Violet 3</xsl:if>
			<xsl:if test="$id='56-35-9'">Tributyl Tin Oxide</xsl:if>
			<xsl:if test="$id='68515-42-4'">1,2-Benzenedicarboxylic acid, di-C7-11-branched and linear alkyl esters (DHNUP)</xsl:if>
			<xsl:if test="$id='71888-89-6'">1,2-Benzenedicarboxylic acid, di-C6-8-branched alkyl esters, C7-rich (DIHP)</xsl:if>
			<xsl:if test="$id='7646-79-9'">Cobalt dichloride</xsl:if>
			<xsl:if test="$id='7758-97-6'">Lead chromate</xsl:if>
			<xsl:if test="$id='84-69-5'">Diisobutyl phthalate (DIBP)</xsl:if>
			<xsl:if test="$id='84-74-2'">Dibutylphthalate (DBP)</xsl:if>
			<xsl:if test="$id='85535-84-8'">Alkanes, C10-13, chloro (Short Chain Chlorinated Paraffins)</xsl:if>
			<xsl:if test="$id='85-68-7'">Butyl benzyl phthalate (BBP)</xsl:if>
			<xsl:if test="$id='C16-NA'">Aluminosilicate, Refractory Ceramic Fibres</xsl:if>
			<xsl:if test="$id='C17-NA'">Zirconia Aluminosilicate, Refractory Ceramic Fibres</xsl:if>
			<xsl:if test="$id='10043-35-3'">Boric acid</xsl:if>
			<xsl:if test="$id='11113-50-1'">Boric acid</xsl:if>
			<xsl:if test="$id='1303-96-4'">Disodium tetraborate decahydrate</xsl:if>
			<xsl:if test="$id='1330-43-4'">Disodium tetraborate, anhydrous </xsl:if>
			<xsl:if test="$id='12179-04-3'">Disodium tetraborate, pentahydrate</xsl:if>
			<xsl:if test="$id='12267-73-1'">Tetraboron disodium heptaoxide, hydrate  </xsl:if>
			<xsl:if test="$id='71888-89-6'">1,2-Benzenedicarboxylic acid, di-C6-8-branched alkyl esters, C7-rich (DIHP)</xsl:if>
			<xsl:if test="$id='68515-42-4'">1,2-Benzenedicarboxylic acid, di-C7-11-branched and linear alkyl esters (DHNUP)</xsl:if>
			<xsl:if test="$id='548-62-9'">4-[4,4'-bis(dimethylamino) benzhydrylidene] cyclohexa-2,5-dien-1-ylidene] dimethylammonium chloride (C.I. Basic Violet 3)</xsl:if>
			<xsl:if test="$id='7789-06-2'">Strontium chromate</xsl:if>
			<xsl:if test="$id='101-14-4'">2,2'-dichloro-4,4'-methylenedianiline (MOCA)</xsl:if>
			<xsl:if test="$id='11103-86-9'">Potassium hydroxyoctaoxodizincate dichromate</xsl:if>
			<xsl:if test="$id='49663-84-5'">Pentazinc chromate octahydroxide</xsl:if>
			<xsl:if test="$id='117-82-8'">Bis(2-methoxyethyl) phthalate</xsl:if>
			<xsl:if test="$id='140-66-9'">4-(1,1,3,3-tetramethylbutyl)phenol, (4-tert-Octylphenol)</xsl:if>
			<xsl:if test="$id='111-96-6'">Bis(2-methoxyethyl) ether</xsl:if>
			<xsl:if test="$id='127-19-5'">N,N-dimethylacetamide (DMAC)</xsl:if>
			<xsl:if test="$id='1163-19-5'">Decabromodiphenyl ether</xsl:if>
			<xsl:if test="$id='62229-08-7'">Sulfurous acid, lead salt, dibasic</xsl:if>
			<xsl:if test="$id='112-49-2'">1,2-bis(2-methoxyethoxy)ethane (TEGDME; triglyme)</xsl:if>
			<xsl:if test="$id='12141-20-7'">Trilead dioxide phosphonate</xsl:if>
			<xsl:if test="$id='110-71-4'">1,2-dimethoxyethane; ethylene glycol dimethyl ether (EGDME)</xsl:if>
			<xsl:if test="$id='60-09-3'">4-Aminoazobenzene</xsl:if>
			<xsl:if test="$id='12202-17-4'">Tetralead trioxide sulfate</xsl:if>
			<xsl:if test="$id='1314-41-6'">Orange lead (lead tetroxide)</xsl:if>
			<xsl:if test="$id='8012-00-8'">Pyrochlore, antimony lead yellow</xsl:if>
			<xsl:if test="$id='12065-90-6'">Pentalead tetraoxide sulphate</xsl:if>
			<xsl:if test="$id='629-14-1'">1,2-Diethoxyethane</xsl:if>
			<xsl:if test="$id='1303-86-2'">Diboron trioxide</xsl:if>
			<xsl:if test="$id='683-18-1'">Dibutyltin dichloride (DBTC)</xsl:if>
			<xsl:if test="$id='20837-86-9'">Lead cynamidate</xsl:if>
			<xsl:if test="$id='68-12-2'">N,N-dimethylformamide</xsl:if>
			<xsl:if test="$id='68784-75-8'">Silicic acid (H2Si2O5), barium salt (1:1), lead-doped </xsl:if>
			<xsl:if test="$id='84777-06-0'">1.2-Benzenedicarboxylic acid, dipentylester, branched and linear</xsl:if>
			<xsl:if test="$id='605-50-5'">Diisopentylphthalate (DIPP)</xsl:if>
			<xsl:if test="$id='776297-69-9'">N-pentyl-isopentylphthalate</xsl:if>
			<xsl:if test="$id='12060-00-3'">Lead titanium trioxide</xsl:if>
			<xsl:if test="$id='12626-81-2'">Lead titanium zirconium oxide</xsl:if>
			<xsl:if test="$id='12036-76-9'">Lead oxide sulfate</xsl:if>
			<xsl:if test="$id='69011-06-9'">[Phthalato(2-)]dioxotrilead</xsl:if>
			<xsl:if test="$id='12578-12-0'">Dioxobis(stearato)trilead</xsl:if>
			<xsl:if test="$id='91031-62-8'">Fatty acids, C16-18, lead salts</xsl:if>
			<xsl:if test="$id='10099-74-8'">Lead dinitrate</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='7789-06-2'">铬酸锶</xsl:if>
			<xsl:if test="$id='10043-35-3'">硼酸</xsl:if>
			<xsl:if test="$id='101-14-4'">2,2'-二氯-4,4'-亚甲基二苯胺 (MOCA)</xsl:if>
			<xsl:if test="$id='11103-86-9'">氢氧化铬酸锌钾</xsl:if>
			<xsl:if test="$id='11113-50-1'">硼酸</xsl:if>
			<xsl:if test="$id='111-96-6'">二乙二醇二甲醚</xsl:if>
			<xsl:if test="$id='115-96-8'">三(2-氯乙基)磷酸酯(TCEP)</xsl:if>
			<xsl:if test="$id='117-81-7'">邻苯二甲酸二酯(2-乙基己)(DEHP)</xsl:if>
			<xsl:if test="$id='117-82-8'">邻苯二甲酸二甲氧乙酯</xsl:if>
			<xsl:if test="$id='12179-04-3'">五水四硼酸钠</xsl:if>
			<xsl:if test="$id='12267-73-1'">七水合四硼酸钠</xsl:if>
			<xsl:if test="$id='12656-85-8'">钼铬红</xsl:if>
			<xsl:if test="$id='127-19-5'">N,N-二甲基乙酰胺(DMAC)</xsl:if>
			<xsl:if test="$id='1303-28-2'">五氧化二砷</xsl:if>
			<xsl:if test="$id='1303-96-4'">十水四硼酸钠(硼砂)</xsl:if>
			<xsl:if test="$id='1327-53-3'">三氧化二砷</xsl:if>
			<xsl:if test="$id='1330-43-4'">无水四硼酸钠</xsl:if>
			<xsl:if test="$id='134237-50-6'">&#945;-六溴环十二烷</xsl:if>
			<xsl:if test="$id='134237-51-7'">&#946;-六溴环十二烷</xsl:if>
			<xsl:if test="$id='134237-52-8'">&#947;-六溴环十二烷</xsl:if>
			<xsl:if test="$id='1344-37-2'">颜料黄34</xsl:if>
			<xsl:if test="$id='140-66-9'">对特辛基苯酚</xsl:if>
			<xsl:if test="$id='25637-99-4'">六溴环十二烷(HBCDD)</xsl:if>
			<xsl:if test="$id='3194-55-6'">1,2,5,6,9,10-六溴环十二烷</xsl:if>
			<xsl:if test="$id='49663-84-5'">锌黄</xsl:if>
			<xsl:if test="$id='548-62-9'">C.I.碱性紫3</xsl:if>
			<xsl:if test="$id='56-35-9'">氧化三丁基锡 (TBTO)</xsl:if>
			<xsl:if test="$id='68515-42-4'">邻苯二甲酸二 (C7-11支链与直链)烷基酯(DHNUP) </xsl:if>
			<xsl:if test="$id='71888-89-6'">邻苯二甲酸二 (C6-8支链)烷基酯,富C7 链 (DIHP) </xsl:if>
			<xsl:if test="$id='7646-79-9'">氯化钴(CoCl2)</xsl:if>
			<xsl:if test="$id='7758-97-6'">铬酸铅</xsl:if>
			<xsl:if test="$id='84-69-5'">邻苯二甲酸二异丁酯(DIBP)</xsl:if>
			<xsl:if test="$id='84-74-2'">邻苯二甲酸二丁酯(DBP)</xsl:if>
			<xsl:if test="$id='85535-84-8'">短链型氯石蜡(C10-13)</xsl:if>
			<xsl:if test="$id='85-68-7'">邻苯二甲酸丁苄酯(BBP)</xsl:if>
			<xsl:if test="$id='C16-NA'">铝硅酸盐､耐火陶瓷纤维 (参照JIG-101)</xsl:if>
			<xsl:if test="$id='C17-NA'">氧化锆硅酸铝､耐火陶瓷纤维 (参照JIG-101)</xsl:if>
			<xsl:if test="$id='10043-35-3'">硼酸</xsl:if>
			<xsl:if test="$id='11113-50-1'">硼酸</xsl:if>
			<xsl:if test="$id='1303-96-4'">十水四硼酸钠(硼砂)</xsl:if>
			<xsl:if test="$id='1330-43-4'">无水四硼酸钠</xsl:if>
			<xsl:if test="$id='12179-04-3'">五水四硼酸钠</xsl:if>
			<xsl:if test="$id='12267-73-1'">七水合四硼酸钠</xsl:if>
			<xsl:if test="$id='71888-89-6'">邻苯二甲酸二 (C6-8支链)烷基酯,富C7 链 (DIHP)</xsl:if>
			<xsl:if test="$id='68515-42-4'">邻苯二甲酸二 (C7-11支链与直链)烷基酯(DHNUP)</xsl:if>
			<xsl:if test="$id='548-62-9'">[4-{双(4-二甲基氨基苯基)亚甲基}-2,5-环己二烯-1-甲叉基]盐酸二甲胺<br/>(別名C.I.碱性紫3)</xsl:if>
			<xsl:if test="$id='7789-06-2'">铬酸锶</xsl:if>
			<xsl:if test="$id='101-14-4'">2,2'-二氯-4,4'-亚甲基二苯胺 (MOCA)</xsl:if>
			<xsl:if test="$id='11103-86-9'">氢氧化铬酸锌钾</xsl:if>
			<xsl:if test="$id='49663-84-5'">锌黄</xsl:if>
			<xsl:if test="$id='117-82-8'">邻苯二甲酸二甲氧乙酯</xsl:if>
			<xsl:if test="$id='140-66-9'">对特辛基苯酚</xsl:if>
			<xsl:if test="$id='111-96-6'">二乙二醇二甲醚</xsl:if>
			<xsl:if test="$id='127-19-5'">N,N-二甲基乙酰胺(DMAC)</xsl:if>
			<xsl:if test="$id='1163-19-5'">十溴二苯醚、十溴联苯醚</xsl:if>
			<xsl:if test="$id='62229-08-7'">亚硫酸铅</xsl:if>
			<xsl:if test="$id='112-49-2'">三甘醇二甲醚(TEGDME)</xsl:if>
			<xsl:if test="$id='12141-20-7'">磷酸氧化鉛</xsl:if>
			<xsl:if test="$id='110-71-4'">乙二醇二甲醚、1,2-二甲氧基乙烷(EGDME)</xsl:if>
			<xsl:if test="$id='60-09-3'">4-氨基偶氮苯</xsl:if>
			<xsl:if test="$id='12202-17-4'">三盐基硫酸铅</xsl:if>
			<xsl:if test="$id='1314-41-6'">铅丹(红丹)</xsl:if>
			<xsl:if test="$id='8012-00-8'">烧绿石、锑铅黃</xsl:if>
			<xsl:if test="$id='12065-90-6'">氧化铅与硫酸铅的复合物</xsl:if>
			<xsl:if test="$id='629-14-1'">乙二醇二乙醚</xsl:if>
			<xsl:if test="$id='1303-86-2'">三氧化二硼</xsl:if>
			<xsl:if test="$id='683-18-1'">二丁基二氯化锡(DBTC)</xsl:if>
			<xsl:if test="$id='20837-86-9'">氨基氰铅盐</xsl:if>
			<xsl:if test="$id='68-12-2'">N,N-二甲基甲酰胺</xsl:if>
			<xsl:if test="$id='68784-75-8'">含有铅的硅酸和钡盐</xsl:if>
			<xsl:if test="$id='84777-06-0'">支链和直链1,2-苯二羧二戊酯</xsl:if>
			<xsl:if test="$id='605-50-5'">邻苯二甲酸二异戊酯(DIPP)</xsl:if>
			<xsl:if test="$id='776297-69-9'">邻苯二甲酸正戊基异戊基酯</xsl:if>
			<xsl:if test="$id='12060-00-3'">钛酸铅</xsl:if>
			<xsl:if test="$id='12626-81-2'">钛酸铅锆</xsl:if>
			<xsl:if test="$id='12036-76-9'">碱式硫酸铅</xsl:if>
			<xsl:if test="$id='69011-06-9'">[1,2-苯二羧酸根合]二氧化三铅</xsl:if>
			<xsl:if test="$id='12578-12-0'">双(十八酸基)二氧代三铅</xsl:if>
			<xsl:if test="$id='91031-62-8'">C16-18-脂肪酸铅盐</xsl:if>
			<xsl:if test="$id='10099-74-8'">硝酸铅</xsl:if>
		</xsl:if>
	</xsl:template>
<!--
##########################################################################################
	JGP閾値/適用内容取得関数
##########################################################################################-->
	<xsl:template name="getJgpThreshold">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:param name="ver" />
		
		<xsl:if test="$lang='ja'">
			<xsl:if test="$ver=4">
				<xsl:if test="$id='A17-J-3'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-4'">A17-J-3を除く意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-98'">A17-J-3、A17-J-4以外の含有がある場合</xsl:if>
				<xsl:if test="$id='A18-J-3'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A18-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='A19-J-0'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A19-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A20-J-0'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A20-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A21-J-0'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A21-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-J-0'">均質材料単位あたり1000ppmを超えるPBBの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超えるPBBの含有</xsl:if>
				<xsl:if test="$id='B02-R-0'">均質材料単位あたり1000ppm以下のPBBの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-R-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下のPBBの含有</xsl:if>
				<xsl:if test="$id='B03-J-0'">均質材料単位あたり1000ppmを超えるPBDEの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B03-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超えるPBDEの含有</xsl:if>
				<xsl:if test="$id='B03-R-0'">均質材料単位あたり1000ppm以下のPBDEの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B03-R-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下のPBDEの含有</xsl:if>
				<xsl:if test="$id='B05-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B05-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B06-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B06-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B07-J-1'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B07-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-1'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B09-J-1'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B09-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B10-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B10-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B11-J-0'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B11-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B12-J-0'">調査単位あたりの重量比が6ppbを超える含有がある場合</xsl:if>
				<xsl:if test="$id='B12-J-98'">調査単位あたりの重量比が6ppb以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-0'">フォトリソグラフィ・プロセスのためのフォトレジストまたは反ミラー・コーティング中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-1'">フィルム、書類、または印刷版に使用される写真コーティング中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-2'">クロムめっき、クロム酸化処理、リバースエッチングで使用するミスト抑制剤中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-3'">無電解ニッケル-ポリテトラフルオロエチレン(ＰＴＦＥ)めっきで使用するミスト抑制剤中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-4'">金属皮膜前のプラスチック基材のエッチングで使用するミスト抑制剤中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-5'">物質、または調剤の構成成分として、B13-J-0,1,2,3,4の用途を除く0.005wt%以上のPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-6'">成形品の含有成分として、B13-J-0,1,2,3,4の用途を除く均質材料単位あたり0.1wt%以上のPFOSの意図的含有がある場合、もしくはテキスタイルまたはその他の被覆された材料について、B13-J-0,1,2,3,4の用途を除く、被覆材の 1 μg/m2以上の量でPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-7'">特定用途(B13-J-0,1,2,3,4,5,6)を除くPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-92'">フォトリソグラフィ・プロセスのためのフォトレジストまたは反ミラー・コーティング中に不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-93'">フィルム、書類、または印刷版に使用される写真コーティング中に不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-94'">クロムめっき、クロム酸化処理、リバースエッチングで使用するミスト抑制剤中の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-95'">無電解ニッケル-ポリテトラフルオロエチレン(ＰＴＦＥ)めっきで使用するミスト抑制剤中の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-96'">金属皮膜前のプラスチック基材のエッチングで使用するミスト抑制剤中の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-97'">物質、または調剤の構成成分として、B13-J-92,93,94,95,96の用途を除く0.005wt%以上の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-98'">特定用途(B13-J-92,93,94,95,96,97,99)を除くPFOSの不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-99'">成形品の含有成分として、B13-J-92,93,94,95,96の用途を除く均質材料単位あたり0.1wt%以上のPFOSの不純物の含有がある場合、もしくはテキスタイルまたはその他の被覆された材料について、B13-J-92,93,94,95,96の用途を除く、被覆材の 1 μg/m2以上の量でPFOSの不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B14-J-0'">テレビ及びコンピュータの外装材に意図的に添加されている場合</xsl:if>
				<xsl:if test="$id='B14-J-98'">B14-J-0以外の含有がある場合</xsl:if>
				<xsl:if test="$id='B15-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B15-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B16-J-0'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B16-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C01-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C01-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C02-J-2'">重量比が0.003%を超える特定の芳香族アミンを生成するアゾ染料・顔料を含有する皮革製品及び繊維製品の場合</xsl:if>
				<xsl:if test="$id='C02-J-98'">C02-J-2以外の含有がある場合</xsl:if>
				<xsl:if test="$id='C04-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C04-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C06-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C06-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-0'">重量比0.0075%を超える繊維製品への含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-1'">意図的添加の含有がある場合(C07-J-0を除く)</xsl:if>
				<xsl:if test="$id='C07-J-98'">不純物の含有がある場合(C07-J-0を除く)</xsl:if>
				<xsl:if test="$id='C08-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C08-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-0'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-0'">子供向け製品に使用されるアーティクルで、均質材料単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-98'">C10-J-0以外の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-B-1'">電池重量あたり5ppmを超えるカドミウムを含有する電池</xsl:if>
				<xsl:if test="$id='Cd-E-2'">均質材料単位あたり100ppmを超えるカドミウムを含む電気自動車のバッテリー</xsl:if>
				<xsl:if test="$id='Cd-J-0'">特定用途を除く均質材料単位あたり100ppmを超えるカドミウムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり100ppmを超えるカドミウムの含有</xsl:if>
				<xsl:if test="$id='Cd-R-0'">特定用途を除く均質材料単位あたり100ppm以下のカドミウムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-R-1'">均質材料単位あたり100ppmを超える、ＥＵ指令76/769/EECの改正指令91/338/EECに基づき禁止された用途を除く電気接点とめっき中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-2'">均質材料単位あたり100ppmを超えるカドミウムを含む光学ガラス及びフィルターガラス</xsl:if>
				<xsl:if test="$id='Cd-R-3'">均質材料単位あたり100ppmを超えるカドミウムを含むホウケイ酸ガラスへのエナメル塗布用印刷インキ</xsl:if>
				<xsl:if test="$id='Cd-R-4'">均質材料単位あたり100ppmを超える、音圧レベル100dB(A)以上の高耐入力スピーカの変換器のボイスコイルに直付けされる導電体の電気的/機械的なはんだ接合部分の合金中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-5'">均質材料単位あたり100ppmを超える、プロ向け音響機器に適用される光カプラーのためのフォトレジスタ中のカドミウム、2009年12月31日まで</xsl:if>
				<xsl:if test="$id='Cd-R-6'">均質材料単位あたり100ppmを超える、酸化ベリリウムと結合したアルミニウム上に使用される厚膜ペースト中のカドミウムおよび酸化カドミウム中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり100ppm以下のカドミウムの含有</xsl:if>
				<xsl:if test="$id='Cr-E-1'">均質材料単位あたり1000ppmを超える六価クロムを含む防錆コーティング(Cr-E-2以外)</xsl:if>
				<xsl:if test="$id='Cr-E-2'">均質材料単位あたり1000ppmを超える六価クロムを含む車体部ボルトナット組立て関係の防錆コーティング</xsl:if>
				<xsl:if test="$id='Cr-E-3'">均質材料単位あたり1000ppmを超える六価クロムを含むキャラバン車の(吸着)冷蔵庫</xsl:if>
				<xsl:if test="$id='Cr-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える六価クロムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cr-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える六価クロムの含有</xsl:if>
				<xsl:if test="$id='Cr-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の六価クロムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cr-R-1'">均質材料単位あたり1000ppmを超える、吸収型冷蔵庫中のカーボン･スチール冷却システムの防錆用の六価クロム</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の六価クロムの含有</xsl:if>
				<xsl:if test="$id='Hg-B-1'">電池重量あたり1ppmを超える水銀を含有する電池</xsl:if>
				<xsl:if test="$id='Hg-E-1'">均質材料単位あたり1000ppmを超える水銀を含むディスチャージランプ及び計器パネルディスプレイ</xsl:if>
				<xsl:if test="$id='Hg-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える水銀の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Hg-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える水銀の含有</xsl:if>
				<xsl:if test="$id='Hg-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の水銀の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Hg-R-1'">水銀が1本あたり5mgを超えないコンパクト蛍光ランプ</xsl:if>
				<xsl:if test="$id='Hg-R-2'">水銀が1本あたり以下の閾値を超えない一般照明用の直管形蛍光ランプ\nhalophosphate(白色の蛍光体)：10mg\ntriphosphate with normal lifetime(通常寿命を有する三波長蛍光体)：5mg\ntriphosphate with long lifetime(長寿命を有する三波長蛍光体)：8mg</xsl:if>
				<xsl:if test="$id='Hg-R-3'">均質材料単位あたり1000ppmを超える水銀を含む特殊用途用の直管形蛍光ランプ</xsl:if>
				<xsl:if test="$id='Hg-R-4'">均質材料単位あたり1000ppmを超える水銀を含むRoHS指令2002/95/ECの附属書に特に定めていないその他のランプ</xsl:if>
				<xsl:if test="$id='Hg-R-5'">ディスプレイあたり30mgまでの含有量のDCプラズマディスプレイ中の陰極スパッタリング反応抑制剤として使用される、均質材料単位あたり1000ppmを超える水銀、2010年7月1日まで</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の水銀の含有</xsl:if>
				<xsl:if test="$id='Ni-J-1'">長期間皮膚に接触する用途で、意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-98'">Ni-J-1以外の含有がある場合</xsl:if>
				<xsl:if test="$id='Pb-B-1'">電池重量あたり40ppmを超える鉛を含有する電池</xsl:if>
				<xsl:if test="$id='Pb-E-1'">機械加工目的のアルミニウム中の鉛 (0.4＜Pb≦1.5wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-10'">均質材料単位あたり1000ppmを超える鉛を含むバルブシート</xsl:if>
				<xsl:if test="$id='Pb-E-11'">均質材料単位あたり1000ppmを超える鉛を含む起爆剤</xsl:if>
				<xsl:if test="$id='Pb-E-2'">均質材料単位あたり1000ppmを超える鉛を含む機械加工目的のアルミニウム (Pb≦0.4wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-3'">均質材料単位あたり1000ppmを超える鉛を含むベアリングシェル/軸受(合金)</xsl:if>
				<xsl:if test="$id='Pb-E-4'">均質材料単位あたり1000ppmを超える鉛を含むバッテリー</xsl:if>
				<xsl:if test="$id='Pb-E-5'">均質材料単位あたり1000ppmを超える鉛を含む制振装置(バイブレーションダンパ)</xsl:if>
				<xsl:if test="$id='Pb-E-6'">均質材料単位あたり1000ppmを超える、0.5wt%以下の流体ハンドリング・パワートレーン用エラストマーの加硫剤及び安定剤中の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-7'">均質材料単位あたり1000ppmを超える、0.5wt%以下のパワートレーン用エラストマーの接着剤中の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-8'">均質材料単位あたり1000ppmを超える鉛を含む電子基板及びその他の電気部品のはんだ</xsl:if>
				<xsl:if test="$id='Pb-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える鉛の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Pb-J-1'">均質材料単位あたり300ppmを超える、電線及びコード類の被覆中の鉛</xsl:if>
				<xsl:if test="$id='Pb-J-2'">調査単位あたり300ppmを超える鉛を含む、12歳以下の子供用製品への使用</xsl:if>
				<xsl:if test="$id='Pb-J-3'">おもちゃ用途の部品・材料で、塗装などの表面処理層単位あたり0.009%を超える鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の鉛の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Pb-R-1'">均質材料単位あたり1000ppmを超えた、アルミニウム材料中の0.4wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-R-10'">均質材料単位あたり1000ppmを超える、ケイ酸塩(silicate)がコーティングされたバルブを有する直線状白熱電球の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-11'">均質材料単位あたり1000ppmを超える、プロフェッショナル向け複写用途に使用される高輝度放電(HID)ランプ中の放射媒体としてのハロゲン化鉛</xsl:if>
				<xsl:if test="$id='Pb-R-12'">均質材料単位あたり1000ppmを超える、BSP(BaSi2O5:Pb)等の蛍光体を含む日焼け用ランプとして、およびSMS((Sr,Ba)2MgSi2O7:Pb)等の蛍光体を含む、ジアゾ印刷複写、リソグラフィ、捕虫器、光化学、硬化処理用の専用ランプとして使用される放電ランプの蛍光体の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
				<xsl:if test="$id='Pb-R-13'">均質材料単位あたり1000ppmを超える、非常にコンパクトな省エネルギーランプ(ESL)における、主アマルガムとしての特定の組成物PbBiSn-HgおよびPbInSn-Hg、ならびに補助アマルガムとしてのPbSn-Hgの鉛</xsl:if>
				<xsl:if test="$id='Pb-R-14'">均質材料単位あたり1000ppmを超える、液晶ディスプレイ(LCD)に使用される平面蛍光ランプの前部および後部基板を接合するために使用されるガラスの中の鉛酸化物の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-15'">均質材料単位あたり1000ppmを超える鉛を含むホウケイ酸ガラスへのエナメル塗布用印刷インキ</xsl:if>
				<xsl:if test="$id='Pb-R-16'">均質材料単位あたり1000ppmを超える、光ファイバー通信システムに使用されるRIG(希土類鉄ガーネット)ファラデー回転子に不純物として含まれる鉛、2009年12月31日まで</xsl:if>
				<xsl:if test="$id='Pb-R-17'">均質材料単位あたり1000ppmを超える、ピッチが0.65mm以下でNiFeリードフレームを持つコネクタ以外の微細ピッチコンポーネントの仕上げ処理が施された部位に含まれる鉛、また、ピッチが0.65mm以下で銅リードフレームを持つコネクタ以外の微細ピッチコンポーネントの仕上げ処理が施された部位に含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-18'">均質材料単位あたり1000ppmを超える、機械加工通し穴付き円盤状および平面アレーセラミック多層コンデンサへのはんだ付け用はんだに含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-19'">均質材料単位あたり1000ppmを超える、構造要素に用いられるプラズマ表示盤(PDP)および表面伝導電子エミッタ表示盤(SED)に含まれる酸化鉛。特に、前後ガラス誘電体層、バス電極、ブラックストライプ、アドレス電極、バリアリブ、シールフリット、フリットリング、およびプリントペーストに含まれる鉛酸化物の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-2'">高融点はんだ中の鉛(85wt%を超える鉛を含む鉛合金)</xsl:if>
				<xsl:if test="$id='Pb-R-20'">均質材料単位あたり1000ppmを超える鉛を含むブラックライトブルー(BLB)ランプのガラス筐体に含まれる鉛酸化物</xsl:if>
				<xsl:if test="$id='Pb-R-21'">均質材料単位あたり1000ppmを超える、高出力(125dB SPL以上の音響パワーレベルで数時間作動すると規定されている)スピーカに使用されるトランスデューサ用はんだとして用いられる鉛合金中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-22'">均質材料単位あたり1000ppmを超える、理事会指令69/493/EECの付属書I(カテゴリ1、2、3および4)で定義されているクリスタルガラスに含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-23'">均質材料単位あたり1000ppmを超える、水銀を含有しない薄型蛍光ランプ(たとえば、液晶ディスプレイや、デザイン用または工業用照明に用いられるもの)に使用されるはんだ材の中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-24'">均質材料単位あたり1000ppmを超える、アルゴン・クリプトンレーザ管のウインドウ組立部品を形成するために用いられるシールフリット中の酸化鉛中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-25'">均質材料単位あたり1000ppmを超える、電力トランス中の、直径100 μm 以下の薄型銅線のはんだ用のはんだ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-26'">均質材料単位あたり1000ppmを超える、サーメットベースのトリマー電位差計の構成要素中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-27'">均質材料単位あたり1000ppmを超える、亜鉛ホウ酸塩処理ガラス(zinc borat glass)体ベース上の高圧ダイオードのめっき層中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-3'">均質材料単位あたり1000ppmを超える、サーバー,ストレージ及びストレージ･アレイ･システム、交換、シグナリング、伝送及び通信ネットワーク管理のためのネットワーク・インフラ機器用のはんだ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-4'">均質材料単位あたり1000ppmを超える鉛を含むコンプライアントピン・コネクタ</xsl:if>
				<xsl:if test="$id='Pb-R-5'">均質材料単位あたり1000ppmを超える鉛を含む熱伝導モジュールＣリング用コーティング材</xsl:if>
				<xsl:if test="$id='Pb-R-6'">均質材料単位あたり1000ppmを超える鉛を含む光学ガラス及びフィルターガラス</xsl:if>
				<xsl:if test="$id='Pb-R-7'">85wt%未満 80wt%を超える鉛を含むマイクロプロセッサのピンとパッケージ接合用の2種類を超える元素で構成されるはんだ</xsl:if>
				<xsl:if test="$id='Pb-R-8'">均質材料単位あたり1000ppmを超える、Flip Chip ICパッケージ内で半導体のダイとキャリアー接合用のはんだ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-9'">均質材料単位あたり1000ppmを超える鉛を含む鉛青銅製の軸受胴とブッシング</xsl:if>
				<xsl:if test="$id='Pb-RE-1'">均質材料単位あたり1000ppmを超える、CRT/電子部品/蛍光管に使用されるガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-2'">均質材料単位あたり1000ppmを超える、電子セラミック部品中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">均質材料単位あたり1000ppmを超えた、鋼材(亜鉛めっき、快削鋼を含む)中の0.35wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-RE-4'">均質材料単位あたり1000ppmを超えた、銅合金(真鍮、りん青銅等)中の4wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の鉛の含有</xsl:if>
			</xsl:if>
			<xsl:if test="$ver=4.1">
				<xsl:if test="$id='A17-J-4'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-97'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A19-J-0'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A19-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-0'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-98'">均質材料単位あたりのスズ含有率が、重量比で、0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A24-J-0'">・調査対象中に存在する織物/皮革部\n・2液性室温硬化モールディングキット(RTV-2シーラントモールディングキット)\nの使用で、均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A24-J-1'">製品用途不明で意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A24-J-98'">A24-J-0、A24-J-1以外の含有がある場合</xsl:if>
				<xsl:if test="$id='A28-J-4'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A28-J-97'">均質材料単位あたりのスズ含有率が、重量比で、0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-J-0'">均質材料単位あたり1000ppmを超えるPBBの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超えるPBBの含有</xsl:if>
				<xsl:if test="$id='B02-R-0'">均質材料単位あたり1000ppm以下のPBBの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-R-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下のPBBの含有</xsl:if>
				<xsl:if test="$id='B03-J-0'">均質材料単位あたり1000ppmを超えるPBDEの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B03-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超えるPBDEの含有</xsl:if>
				<xsl:if test="$id='B03-R-0'">均質材料単位あたり1000ppm以下のPBDEの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B03-R-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下のPBDEの含有</xsl:if>
				<xsl:if test="$id='B05-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B05-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B06-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B06-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B07-J-1'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B07-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-2'">25gを超えるプラスチック材料を有する部品で、そのプラスチック材料中に重量比で0.1%を超える含有がある場合(ただし、プリント配線基板ユニットを除く)</xsl:if>
				<xsl:if test="$id='B08-J-3'">積層プリント配線基板の用途で、臭素元素含有量が調査単位あたり重量比で0.09重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-4'">製品用途不明で臭素系難燃剤として意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-97'">B08-J-2、B08-J-3、B08-J-4以外の含有がある場合</xsl:if>
				<xsl:if test="$id='B10-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B10-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B12-J-0'">調査単位あたりの重量比が6ppbを超える含有がある場合</xsl:if>
				<xsl:if test="$id='B12-J-98'">調査単位あたりの重量比が6ppb以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-0'">フォトリソグラフィ・プロセスのためのフォトレジストまたは反ミラー・コーティング中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-1'">フィルム、書類、または印刷版に使用される写真コーティング中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-2'">クロムめっき、クロム酸化処理、リバースエッチングで使用するミスト抑制剤中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-3'">無電解ニッケル-ポリテトラフルオロエチレン(ＰＴＦＥ)めっきで使用するミスト抑制剤中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-4'">金属皮膜前のプラスチック基材のエッチングで使用するミスト抑制剤中に意図的に添加されたPFOS</xsl:if>
				<xsl:if test="$id='B13-J-5'">物質、または調剤の構成成分として、B13-J-0,1,2,3,4の用途を除く0.005wt%以上のPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-6'">成形品の含有成分として、B13-J-0,1,2,3,4の用途を除く均質材料単位あたり0.1wt%以上のPFOSの意図的含有がある場合、もしくはテキスタイルまたはその他の被覆された材料について、B13-J-0,1,2,3,4の用途を除く、被覆材の 1 μg/m2以上の量でPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-7'">特定用途(B13-J-0,1,2,3,4,5,6)を除くPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-92'">フォトリソグラフィ・プロセスのためのフォトレジストまたは反ミラー・コーティング中に不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-93'">フィルム、書類、または印刷版に使用される写真コーティング中に不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-94'">クロムめっき、クロム酸化処理、リバースエッチングで使用するミスト抑制剤中の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-95'">無電解ニッケル-ポリテトラフルオロエチレン(ＰＴＦＥ)めっきで使用するミスト抑制剤中の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-96'">金属皮膜前のプラスチック基材のエッチングで使用するミスト抑制剤中の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-97'">物質、または調剤の構成成分として、B13-J-92,93,94,95,96の用途を除く0.005wt%以上の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-98'">特定用途(B13-J-92,93,94,95,96,97,99)を除くPFOSの不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-99'">成形品の含有成分として、B13-J-92,93,94,95,96の用途を除く均質材料単位あたり0.1wt%以上のPFOSの不純物の含有がある場合、もしくはテキスタイルまたはその他の被覆された材料について、B13-J-92,93,94,95,96の用途を除く、被覆材の 1 μg/m2以上の量でPFOSの不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B15-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B15-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C01-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C01-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C02-J-2'">重量比が0.003%を超える特定の芳香族アミンを生成するアゾ染料・顔料を含有する皮革製品及び繊維製品の場合(皮革、織物を有する部位での使用)</xsl:if>
				<xsl:if test="$id='C02-J-3'">製品用途不明で意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C02-J-98'">C02-J-2, C02-J-3以外の含有がある場合</xsl:if>
				<xsl:if test="$id='C04-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C04-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C06-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C06-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-0'">重量比0.0075%を超える織物製品への含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-2'">調査対象に木材を有する場合で、木材中に意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-97'">C07-J-0、C07-J-2以外の含有がある場合</xsl:if>
				<xsl:if test="$id='C08-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C08-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-1'">玩具、または育児製品の用途で、可塑化した材料(均質材料単位)あたりの重量比が、BBP, DBP, DEHPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-2'">製品用途不明で、可塑化した材料(均質材料単位)あたりの重量比が、BBP, DBP, DEHPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-97'">C09-J-1、C09-J-2の用途以外で、可塑化した材料(均質材料単位)あたりの重量比が、BBP, DBP, DEHPの合計値0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-0'">子供の口に入る玩具、または育児製品の用途で、可塑化した材料(均質材料単位)あたりの重量比が、DIDP, DINP, DNOPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-1'">製品用途不明で、可塑化した材料(均質材料単位)あたりの重量比が、DIDP, DINP, DNOPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-98'">C10-J-0、C10-J-1の用途以外で、可塑化した材料(均質材料単位)あたりの重量比が、DIDP, DINP, DNOPの合計値で0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C11-J-0'">均質材料単位あたりの重量比が0.00001%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C11-J-98'">均質材料単位あたりの重量比が0.00001%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-B-1'">電池重量あたり5ppmを超えるカドミウムを含有する電池</xsl:if>
				<xsl:if test="$id='Cd-E-2'">均質材料単位あたり100ppmを超えるカドミウムを含む電気自動車のバッテリー</xsl:if>
				<xsl:if test="$id='Cd-J-0'">特定用途を除く均質材料単位あたり100ppmを超えるカドミウムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり100ppmを超えるカドミウムの含有</xsl:if>
				<xsl:if test="$id='Cd-R-0'">特定用途を除く均質材料単位あたり100ppm以下のカドミウムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-R-10'">均質材料単位あたり100ppmを超える、固体照明または表示システムで使用するための色変換II-VI LED中のカドミウム(光放出エリアミリ平方あたり&#60; 10 μg Cd)</xsl:if>
				<xsl:if test="$id='Cd-R-3'">均質材料単位あたり100ppmを超えるカドミウムを含むホウケイ酸ガラス、ソーダ石灰ガラス等へ使用するエナメル塗布用印刷インキ</xsl:if>
				<xsl:if test="$id='Cd-R-4'">均質材料単位あたり100ppmを超える、音圧レベル100dB(A)以上の高耐入力スピーカの変換器のボイスコイルに直付けされる導電体の電気的/機械的なはんだ接合部分の合金中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-6'">均質材料単位あたり100ppmを超える、酸化ベリリウムと結合したアルミニウム上に使用される厚膜ペースト中のカドミウムおよび酸化カドミウム中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-7'">均質材料単位あたり100ppmを超える、ワンショットぺレットタイプのサーマルカットオフ 中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-8'">均質材料単位あたり100ppmを超える、電気接点中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-9'">均質材料単位あたり100ppmを超える、フィルターガラスおよび反射基準(reflectance standards)に使用されるガラス中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり100ppm以下のカドミウムの含有</xsl:if>
				<xsl:if test="$id='Cr-E-1'">均質材料単位あたり1000ppmを超える六価クロムを含む防錆コーティング(下記Cr-E-2以外)</xsl:if>
				<xsl:if test="$id='Cr-E-2'">均質材料単位あたり1000ppmを超える六価クロムを含む車体部ボルトナット組立て関係の防錆コーティング</xsl:if>
				<xsl:if test="$id='Cr-E-3'">均質材料単位あたり1000ppmを超える六価クロムを含むキャラバン車の(吸着)冷蔵庫</xsl:if>
				<xsl:if test="$id='Cr-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える六価クロムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cr-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える六価クロムの含有</xsl:if>
				<xsl:if test="$id='Cr-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の六価クロムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cr-R-2'">均質材料単位あたり1000ppmを超える、吸収型冷蔵庫中のカーボン・スチール冷却システムの防錆剤としての0.75重量%までの六価クロム</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の六価クロムの含有</xsl:if>
				<xsl:if test="$id='Hg-B-1'">電池重量あたり1ppmを超える水銀を含有する電池</xsl:if>
				<xsl:if test="$id='Hg-E-1'">ディスチャージランプ及び計器パネルディスプレイ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える水銀の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Hg-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える水銀の含有</xsl:if>
				<xsl:if test="$id='Hg-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の水銀の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Hg-R-10'">Hg-R-6、Hg-R-7、Hg-R-8、Hg-R-9以外の低圧放電ランプ中の水銀(ランプごと)</xsl:if>
				<xsl:if test="$id='Hg-R-11'">改善された演色評価数(colour rendering index) Ra60超の一般照明目的の超高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-12'">一般照明目的用のその他(Hg-R-11)の超高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-13'">高圧水銀放電ランプ(HPMV)中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-14'">ハロゲン化金属ランプ(MH)中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-15'">2002/95/ECの附属書(or水銀の使用用途分類)で特に定めていない特殊目的のその他の放電ランプ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-6'">シングルキャップの蛍光ランプ中の、(バーナーあたり)下記を超えない水銀\n(a)30W未満の一般照明目的用：5mg\n(b)30W以上50W未満の一般照明目的用：5 mg\n(c)50W以上150W未満の一般照明目的用：5 mg\n(d)150W以上の一般照明目的用：15mg\n(e)環形または四角の構造形態で、管径17mm以下を有する一般照明目的用：7mg\n(f)特別目的用：5 mg</xsl:if>
				<xsl:if test="$id='Hg-R-7'">ダブルキャップの一般目的用の直管蛍光灯中(ランプ毎に)の下記を超えない水銀\n(a)通常寿命の管径9mm未満(例：T2)の三波長蛍光体：5mg\n(b)通常寿命の管径9mm以上17mm以下(例：T5)の三波長蛍光体:5mg\n(c)通常寿命の管径17mm超28mm以下(例：T8)の三波長蛍光体：5mg\n(d)通常寿命の管径28mm超(例：T12)の三波長蛍光体：5mg\n(e)長寿命(25,000時間以上)の三波長蛍光体： 8mg</xsl:if>
				<xsl:if test="$id='Hg-R-8'">ダブルキャップの一般目的用以外の蛍光灯中(ランプ毎に)の下記の水銀\n(a)管径28mm超の線形白色ランプ(e.g T10およびT12):10mgを超えない水銀\n(b)あらゆる径の非線形白色ランプ：15mgを超えない水銀\n(c)非線形三波長蛍光体ランプ管径 17mm超(例：T9)に含有する水銀\n(d)その他の一般照明目的および特別目的用(例：インダクションランプ)のためのランプに含有する水銀</xsl:if>
				<xsl:if test="$id='Hg-R-9'">特別目的の冷陰極線蛍光灯および外部電極蛍光ランプ(CCFLおよびEEFL)中の水銀</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の水銀の含有</xsl:if>
				<xsl:if test="$id='J01-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='J01-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-1'">長期間皮膚に接触する用途で、意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-2'">製品用途不明で意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-98'">Ni-J-1、Ni-J-2以外の含有がある場合(長時間皮膚に接触しない用途、または不純物)</xsl:if>
				<xsl:if test="$id='Pb-B-1'">電池重量あたり40ppmを超える鉛を含有する電池</xsl:if>
				<xsl:if test="$id='Pb-E-1'">アルミニウム中の鉛 (0.4＜Pb≦1.5wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-10'">均質材料単位あたり1000ppmを超える鉛を含むバルブシート</xsl:if>
				<xsl:if test="$id='Pb-E-11'">均質材料単位あたり1000ppmを超える鉛を含む起爆剤</xsl:if>
				<xsl:if test="$id='Pb-E-12'">均質材料単位あたり1000ppmを超える、電気用途のはんだの鉛(電子回路基板及びガラスへのはんだ付けを除く)</xsl:if>
				<xsl:if test="$id='Pb-E-13'">均質材料単位あたり1000ppmを超える、電気・電子部品の電子回路基板への取り付け及び部品終端用はんだの鉛(電解アルミコンデンサーを除く)</xsl:if>
				<xsl:if test="$id='Pb-E-14'">均質材料単位あたり1000ppmを超える、電解アルミニウムコンデンサーの終端の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-15'">均質材料単位あたり1000ppmを超える、エアマスセンサーのガラスへのはんだ付け用の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-16'">均質材料単位あたり1000ppmを超える、パワーセミコンダクターのヒートスプレッダーとヒートシンクの取り付けはんだの鉛(チップサイズが少なくとも1cm2で電流密度が少なくとも1A/mm2)</xsl:if>
				<xsl:if test="$id='Pb-E-17'">均質材料単位あたり1000ppmを超える、ガラスへの電気グレージング用途のはんだの鉛(ラミネートグレージングはんだ付けを除く)</xsl:if>
				<xsl:if test="$id='Pb-E-18'">均質材料単位あたり1000ppmを超える、ラミネートグレージング用途のはんだの鉛</xsl:if>
				<xsl:if test="$id='Pb-E-3'">均質材料単位あたり1000ppmを超える鉛を含むベアリングシェル/軸受(合金)</xsl:if>
				<xsl:if test="$id='Pb-E-4'">均質材料単位あたり1000ppmを超える鉛を含むバッテリー</xsl:if>
				<xsl:if test="$id='Pb-E-5'">均質材料単位あたり1000ppmを超える鉛を含む制振装置(バイブレーションダンパ)</xsl:if>
				<xsl:if test="$id='Pb-E-6'">均質材料単位あたり1000ppmを超える、0.5wt%以下の流体ハンドリング・パワートレーン用エラストマーの加硫剤及び安定剤中の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-7'">均質材料単位あたり1000ppmを超える、0.5wt%以下のパワートレーン用エラストマーの接着剤中の鉛</xsl:if>
				<xsl:if test="$id='Pb-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える鉛の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Pb-J-1'">均質材料単位あたり300ppmを超える、電線及びコード類の被覆中の鉛</xsl:if>
				<xsl:if test="$id='Pb-J-2'">調査単位あたり300ppmを超える鉛を含む、12歳以下の子供用製品への使用\n(ただし、本項目は、調査先から12歳以下の子供用製品で使用するという指示がある場合のみ選択すること)</xsl:if>
				<xsl:if test="$id='Pb-J-3'">おもちゃ用途の部品・材料で、塗装などの表面処理層単位あたり0.009%を超える鉛の含有\n(ただし、本項目は、調査先からおもちゃ用途で使用するという指示がある場合のみ選択すること)</xsl:if>
				<xsl:if test="$id='Pb-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の鉛の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Pb-R-1'">均質材料単位あたり1000ppmを超える、アルミニウム材料中の0.4wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-R-10'">均質材料単位あたり1000ppmを超える、ケイ酸塩(silicate)がコーティングされたバルブを有する直線状白熱電球の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-11'">均質材料単位あたり1000ppmを超える、プロフェッショナル向け複写用途に使用される高輝度放電(HID)ランプ中の放射媒体としてのハロゲン化鉛</xsl:if>
				<xsl:if test="$id='Pb-R-13'">均質材料単位あたり1000ppmを超える、非常にコンパクトな省エネルギーランプ(ESL)における、主アマルガムとしての特定の組成物PbBiSn-HgおよびPbInSn-Hg、ならびに補助アマルガムとしてのPbSn-Hgの鉛</xsl:if>
				<xsl:if test="$id='Pb-R-14'">均質材料単位あたり1000ppmを超える、液晶ディスプレイ(LCD)に使用される平面蛍光ランプの前部および後部基板を接合するために使用されるガラスの中の鉛酸化物の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-15'">均質材料単位あたり1000ppmを超える鉛を含むホウケイ酸ガラス、ソーダ石灰ガラス等へ使用するエナメル塗布用印刷インキ</xsl:if>
				<xsl:if test="$id='Pb-R-17'">均質材料単位あたり1000ppmを超える、ピッチが0.65mm以下のコネクタ以外の狭ピッチコンポーネントの仕上げ剤に含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-18'">均質材料単位あたり1000ppmを超える、機械加工通し穴付き円盤状および平面アレーセラミック多層コンデンサへのはんだ付け用はんだに含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-2'">高融点はんだ中の鉛(85wt%以上の鉛を含む鉛合金)</xsl:if>
				<xsl:if test="$id='Pb-R-20'">均質材料単位あたり1000ppmを超える鉛を含むブラックライトブルー(BLB)ランプのガラス筐体に含まれる鉛酸化物</xsl:if>
				<xsl:if test="$id='Pb-R-21'">均質材料単位あたり1000ppmを超える、高出力(125dB SPL以上の音響パワーレベルで数時間作動すると規定されている)スピーカに使用されるトランスデューサ用はんだとして用いられる鉛合金中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-22'">均質材料単位あたり1000ppmを超える、理事会指令69/493/EECの付属書I(カテゴリ1、2、3および4)で定義されているクリスタルガラスに含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-23'">均質材料単位あたり1000ppmを超える、水銀を含有しない薄型蛍光ランプ(たとえば、液晶ディスプレイや、デザイン用または工業用照明に用いられるもの)に使用されるはんだ材の中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-24'">均質材料単位あたり1000ppmを超える、アルゴン・クリプトンレーザ管のウインドウ組立部品を形成するために用いられるシールフリット中の酸化鉛中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-25'">均質材料単位あたり1000ppmを超える、電力トランス中の、直径100 μm 以下の薄型銅線のはんだ用のはんだ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-26'">均質材料単位あたり1000ppmを超えるサーメット型のトリマポテンショメータの素子に含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-27'">均質材料単位あたり1000ppmを超える、亜鉛ホウ酸塩処理ガラス(zinc borat glass)体ベース上の高圧ダイオードのめっき層中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-3'">均質材料単位あたり1000ppmを超える、サーバー、ストレージおよびストレージ・アレイ・システム、スイッチ切替、信号発信、転送ならびに電気通信用ネットワーク管理のためのネットワーク・インフラ装置用のハンダ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-30'">均質材料単位あたり1000ppmを超える鉛を含む光学用途に使用される白色ガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-31'">均質材料単位あたり1000ppmを超える鉛を含むフィルターガラスおよび反射基準(reflectance standards)に使用されるガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-32'">均質材料単位あたり1000ppmを超える、ヒーティング、換気、空調及び冷蔵、冷凍、換気(ヒーバックアンドアール：HVACR)用途の冷媒含有コンプレッサ用ベアリングのシェル(さや)およびブッシュ(穴の内面にはめこむ円筒部品)中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-33'">均質材料単位あたり1000ppmを超える、BSP (BaSi2O5:Pb)等の蛍光体を含む日焼け用ランプとして使用される放電ランプの蛍光パウダー中の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
				<xsl:if test="$id='Pb-R-34'">均質材料単位あたり1000ppmを超える、SMS((Sr,Ba)2MgSi2O7:Pb)等の蛍光体を含む、ジアゾ印刷複写、リソグラフィ、捕虫器、光化学、硬化処理用の専用ランプとして使用される放電ランプの蛍光体の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
				<xsl:if test="$id='Pb-R-35'">均質材料単位あたり1000ppmを超える、表面伝導型電子放出素子ディスプレイ(SED)の表面において、構造的要素中、特にシールフリットおよびフリットリングに使用される酸化鉛。</xsl:if>
				<xsl:if test="$id='Pb-R-5'">均質材料単位あたり1000ppmを超える鉛を含む熱伝導モジュールＣリング用コーティング材</xsl:if>
				<xsl:if test="$id='Pb-R-7'">85wt%未満 80wt%を超える鉛を含むマイクロプロセッサのピンとパッケージ接合用の2種類を超える元素で構成されるはんだ</xsl:if>
				<xsl:if test="$id='Pb-R-8'">均質材料単位あたり1000ppmを超える、Flip Chip ICパッケージ内で半導体のダイとキャリアー接合用のはんだ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-10'">均質材料単位あたり1000ppmを超える、Cプレスコンプライアント・ピン・コネクタ/システムに使用される鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-11'">均質材料単位あたり1000ppmを超える、Cプレス以外のコンプライアント・ピン・コネクタ/システムに使用される鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">均質材料単位あたり1000ppmを超える、鋼材(亜鉛めっき、快削鋼を含む)中の0.35wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-RE-4'">均質材料単位あたり1000ppmを超える、銅合金(真鍮、りん青銅等)中の4wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-RE-5'">均質材料単位あたり1000ppmを超える、陰極線管中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-6'">均質材料単位あたり1000ppmを超える、重量比0.2%までの蛍光管のガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-7'">均質材料単位あたり1000ppmを超える、ガラスまたはセラミック中、もしくはガラスまたはセラミックスマトリックス化合物中に鉛を含む、キャパシタ中の誘電セラミック以外の電気および電子コンポーネント中の鉛(例：ピエゾエレクトロニックデバイス)</xsl:if>
				<xsl:if test="$id='Pb-RE-8'">均質材料単位あたり1000ppmを超える、125V ACまたは250V DCまたはそれ以上の定格電圧のキャパシタに使用する誘電セラミック中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-9'">均質材料単位あたり1000ppmを超える、定格電圧が125V ACまたは250V DC未満のキャパシタ中の誘電セラミック中の鉛 </xsl:if>
				<xsl:if test="$id='Pb-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の鉛の含有</xsl:if>
				<xsl:if test="$id='A17-J-3'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A20-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A21-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A22-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A25-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A26-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A27-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B09-J-1'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B11-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B16-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C12-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C13-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C14-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C15-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C16-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C17-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C18-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C19-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C20-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A20-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A21-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A22-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A25-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A26-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A27-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B09-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B11-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B16-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C12-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C13-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C14-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C15-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C16-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C17-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C18-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C19-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C20-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
			</xsl:if>
			<xsl:if test="$ver=4.2">
				<xsl:if test="$id='A17-J-3'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-4'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-97'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='A19-J-0'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A19-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A20-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A20-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A21-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A21-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A22-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A22-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-1'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える、1コンポーネントよび2コンポーネント室温加硫シーラント(RTV-1RTV-2シーラント)および接着剤への含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-2'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える、成形品に塗布される場合の、DBT化合物を促進剤として含む塗料およびコーティングへの含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-3'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える、ソフト塩ビ自体であれ、硬質PVCとの同時押出であれ、ソフト塩ビ(PVC)プロフィールへの含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-4'">特定用途(A23-J-1,2,3)を除く、均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-98'">均質材料単位あたりのスズ含有率が、重量比で、0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A24-J-0'">・調査対象中に存在する織物/皮革部<br/>・2液性室温硬化モールディングキット(RTV-2シーラントモールディングキット)<br/>の使用で、均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A24-J-1'">製品用途不明で意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A24-J-98'">A24-J-0、A24-J-1以外の含有がある場合</xsl:if>
				<xsl:if test="$id='A25-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A25-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A26-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A26-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A27-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A27-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A28-J-4'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A28-J-5'">A28-J-4以外の用途で、意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A28-J-97'">均質材料単位あたりのスズ含有率が、重量比で、0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A29-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A29-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A30-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A30-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A31-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A31-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-J-0'">均質材料単位あたり1000ppmを超えるPBBの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超えるPBBの含有</xsl:if>
				<xsl:if test="$id='B02-R-0'">均質材料単位あたり1000ppm以下のPBBの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-R-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下のPBBの含有</xsl:if>
				<xsl:if test="$id='B03-J-0'">均質材料単位あたり1000ppmを超えるPBDEの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B03-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超えるPBDEの含有</xsl:if>
				<xsl:if test="$id='B03-R-0'">均質材料単位あたり1000ppm以下のPBDEの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B03-R-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下のPBDEの含有</xsl:if>
				<xsl:if test="$id='B05-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B05-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B06-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B06-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-3'">積層プリント配線基板の用途で、臭素元素含有量が調査単位あたり重量比で0.09重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-4'">製品用途不明で臭素系難燃剤として意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-5'">積層プリント配線基板中のものを除く、プラスチック材料中の臭素の含有合計で0.1重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-97'">B08-J-3、B08-J-4、B08-J-5以外の含有がある場合</xsl:if>
				<xsl:if test="$id='B09-J-1'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B09-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B10-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B10-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B11-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B11-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B12-J-0'">調査単位あたりの重量比が6ppbを超える含有がある場合</xsl:if>
				<xsl:if test="$id='B12-J-98'">調査単位あたりの重量比が6ppb以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-0'">フォトリソグラフィ・プロセスのためのフォトレジストまたは反射防止コーティング中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-1'">フィルム、書類、または印刷版に使用される写真コーティング中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-2'">クロムめっき、クロム酸化処理、リバースエッチングで使用するミスト抑制剤中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-3'">無電解ニッケル-ポリテトラフルオロエチレン(PTFE)めっきで使用するミスト抑制剤中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-4'">金属皮膜前のプラスチック基材のエッチングで使用するミスト抑制剤中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-6'">特定用途(B13-J-0,1,2,3,4)を除く、成形品の含有成分として、均質材料単位あたり0.1wt%以上のPFOSの意図的含有がある場合、もしくはテキスタイルまたはその他の被覆された材料について、被覆材の1μg/m2以上の量でPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-7'">特定用途(B13-J-0,1,2,3,4,6,8,9)を除く、PFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-8'">特定用途(B13-J-0,1,2,3,4,6,7,9)を除く、均質材料単位あたり0.1wt%以上のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-89'">特定用途(B13-J-92,93,94,95,96)を除く、物質または調剤の構成成分として、0.001wt%以下の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-9'">特定用途(B13-J-0,1,2,3,4,6,7,8)を除く、物質または調剤の構成成分として、0.001wt%を超えるPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-90'">特定用途(B13-J-92,93,94,95,96)を除く、成形品の含有成分として、均質材料単位あたり0.1wt%未満のPFOSの不純物としての含有がある場合、もしくはテキスタイルまたはその他の被覆された材料について、被覆材の1μg/m2未満の量でPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-91'">特定用途(B13-J-92,93,94,95,96,89,90)を除くPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-92'">フォトリソグラフィ・プロセスのためのフォトレジストまたは反射防止コーティング中に1μg/m2未満のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-93'">フィルム、書類、または印刷版に使用される写真コーティング中に1μg/m2未満のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-94'">クロムめっき、クロム酸化処理、リバースエッチングで使用するミスト抑制剤中に、0.001wt%以下のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-95'">無電解ニッケル-ポリテトラフルオロエチレン(PTFE)めっきで使用するミスト抑制剤中に、0.001wt%以下のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-96'">金属皮膜前のプラスチック基材のエッチングで使用するミスト抑制剤中に、0.001wt%以下のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B15-J-2'">均質材料単位あたりの重量比が0.005%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B15-J-97'">均質材料単位あたりの重量比が0.005%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B16-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B16-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B17-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B17-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B18-J-0'">積層プリント配線基板の用途で、塩素元素の含有量が調査単位あたり重量比で0.09重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B18-J-1'">積層プリント配線基板中のものを除く、プラスチック材料中の塩素の含有合計で0.1重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B18-J-2'">製品用途不明で塩素系難燃剤として意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B18-J-98'">B18-J-0、B18-J-1,B18-J-2以外の含有がある場合</xsl:if>
				<xsl:if test="$id='B19-J-0'">積層プリント配線基板中のものを除く、プラスチック材料中の塩素の含有合計で0.1重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B19-J-98'">積層プリント配線基板中のものを除く、プラスチック材料中の塩素の含有合計で0.1重量%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B20-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B20-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C01-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C01-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C02-J-2'">重量比が0.003%を超える特定の芳香族アミンを生成するアゾ染料・顔料を含有する皮革製品及び繊維製品の場合<br/>(皮革、織物を有する部位での使用)</xsl:if>
				<xsl:if test="$id='C02-J-3'">製品用途不明で意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C02-J-98'">C02-J-2,C02-J-3以外の含有がある場合</xsl:if>
				<xsl:if test="$id='C04-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C04-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C06-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C06-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-0'">重量比0.0075%を超える織物製品への含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-2'">調査対象に木材を有する場合で、木材中に意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-97'">C07-J-0、C07-J-2以外の含有がある場合</xsl:if>
				<xsl:if test="$id='C08-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C08-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-1'">玩具、または育児製品の用途で、可塑化した材料(均質材料単位)あたりの重量比が、BBP,DBP,DEHPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-2'">製品用途不明で、可塑化した材料(均質材料単位)あたりの重量比が、BBP,DBP,DEHPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-96'">C09-J-1の用途以外の製品に使用され、可塑化した材料(均質材料単位)あたりの重量比が、BBP,DBP,DEHPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-97'">C09-J-1、C09-J-2の用途以外で、可塑化した材料(均質材料単位)あたりの重量比が、BBP,DBP,DEHPの合計値0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-0'">子供の口に入る玩具、または育児製品の用途で、可塑化した材料(均質材料単位)あたりの重量比が、DIDP,DINP,DNOPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-1'">製品用途不明で、可塑化した材料(均質材料単位)あたりの重量比が、DIDP,DINP,DNOPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-97'">C10-J-0の用途以外の製品に使用され、可塑化した材料(均質材料単位)あたりの重量比が、DIDP,DINP,DNOPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-98'">C10-J-0、C10-J-1の用途以外で、可塑化した材料(均質材料単位)あたりの重量比が、DIDP,DINP,DNOPの合計値で0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C11-J-0'">均質材料単位あたりの重量比が0.00001%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C11-J-98'">均質材料単位あたりの重量比が0.00001%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C12-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C12-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C13-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C13-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C14-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C14-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C15-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C15-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C16-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C16-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C17-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C17-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C18-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C18-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C19-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C19-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C20-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C20-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C21-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C21-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C22-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C22-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C23-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C23-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C24-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C24-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C25-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C25-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C26-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C26-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-B-2'">電池重量あたり10ppmを超えるカドミウムを含有する電池</xsl:if>
				<xsl:if test="$id='Cd-E-2'">均質材料単位あたり100ppmを超えるカドミウムを含む電気自動車のバッテリー</xsl:if>
				<xsl:if test="$id='Cd-J-0'">特定用途を除く均質材料単位あたり100ppmを超えるカドミウムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり100ppmを超えるカドミウムの含有</xsl:if>
				<xsl:if test="$id='Cd-R-0'">特定用途を除く均質材料単位あたり100ppm以下のカドミウムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-R-10'">均質材料単位あたり100ppmを超える、固体照明または表示システムで使用するための色変換II-VILED中のカドミウム(光放出エリアミリ平方あたり＜10μgCd)</xsl:if>
				<xsl:if test="$id='Cd-R-11'">均質材料単位あたり100ppmを超える、プロ用音響機器に使用されるアナログ光カプラーのフォトレジスター中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-3'">均質材料単位あたり100ppmを超えるカドミウムを含むホウケイ酸ガラス、ソーダ石灰ガラス等へ使用するエナメル塗布用印刷インキ</xsl:if>
				<xsl:if test="$id='Cd-R-4'">均質材料単位あたり100ppmを超える、音圧レベル100dB(A)以上の高耐入力スピーカの変換器のボイスコイルに直付けされる導電体の電気的/機械的なはんだ接合部分の合金中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-6'">均質材料単位あたり100ppmを超える、酸化ベリリウムと結合したアルミニウム上に使用される厚膜ペースト中のカドミウムおよび酸化カドミウム中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-7'">均質材料単位あたり100ppmを超える、ワンショットぺレットタイプのサーマルカットオフ中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-8'">均質材料単位あたり100ppmを超える、電気接点中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-9'">均質材料単位あたり100ppmを超える、フィルターガラスおよび反射基準(reflectance standards)に使用されるガラス中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり100ppm以下のカドミウムの含有</xsl:if>
				<xsl:if test="$id='Cr-E-1'">均質材料単位あたり1000ppmを超える六価クロムを含む防錆コーティング(下記Cr-E-2以外)</xsl:if>
				<xsl:if test="$id='Cr-E-2'">均質材料単位あたり1000ppmを超える六価クロムを含む車体部ボルトナット組立て関係の防錆コーティング</xsl:if>
				<xsl:if test="$id='Cr-E-3'">均質材料単位あたり1000ppmを超える、0.75wt%以下の六価クロムを含むキャラバン車の(吸着)冷蔵庫</xsl:if>
				<xsl:if test="$id='Cr-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える六価クロムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cr-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える六価クロムの含有</xsl:if>
				<xsl:if test="$id='Cr-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の六価クロムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cr-R-2'">均質材料単位あたり1000ppmを超える、吸収型冷蔵庫中のカーボン・スチール冷却システムの防錆剤としての0.75重量%までの六価クロム</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の六価クロムの含有</xsl:if>
				<xsl:if test="$id='Hg-B-1'">意図的添加または電池重量あたり1ppmを超える水銀を含有する電池</xsl:if>
				<xsl:if test="$id='Hg-E-1'">ディスチャージランプ及び計器パネルディスプレイ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える水銀の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Hg-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える水銀の含有</xsl:if>
				<xsl:if test="$id='Hg-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の水銀の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Hg-R-11'">改善された演色評価数(colourrenderingindex)Ra60超の一般照明目的の超高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-12'">一般照明目的用のその他(Hg-R-11)の超高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-13'">高圧水銀放電ランプ(HPMV)中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-14'">ハロゲン化金属ランプ(MH)中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-15'">2011/65/EUの附属書(or水銀の使用用途分類)で特に定めていない特殊目的のその他の放電ランプ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-16'">シングルキャップの蛍光ランプ中の、(バーナーあたり)下記を超えない水銀<br/>(a)30W未満の一般照明目的用:3.5mg<br/>(b)30W以上50W未満の一般照明目的用:3.5mg<br/>(c)50W以上150W未満の一般照明目的用:5mg<br/>(d)150W以上の一般照明目的用:15mg<br/>(e)環形または四角の構造形態で、管径17mm以下を有する一般照明目的用:7mg<br/>(f)特別目的用:5mg</xsl:if>
				<xsl:if test="$id='Hg-R-17'">ダブルキャップの一般目的用の直管蛍光灯中(ランプ毎に)の下記を超えない水銀<br/>(a)通常寿命の管径9mm未満(例:T2)の三波長蛍光体:4mg<br/>(b)通常寿命の管径9mm以上17mm以下(例:T5)の三波長蛍光体:3mg<br/>(c)通常寿命の管径17mm超28mm以下(例:T8)の三波長蛍光体:3.5mg<br/>(d)通常寿命の管径28mm超(例:T12)の三波長蛍光体:3.5mg<br/>(e)長寿命(25,000時間以上)の三波長蛍光体:5mg</xsl:if>
				<xsl:if test="$id='Hg-R-18'">ダブルキャップの一般目的用以外の蛍光灯中(ランプ毎に)の下記の水銀<br/>(a)管径28mm超の線形白色ランプ(e.gT10およびT12):10mgを超えない水銀<br/>(b)あらゆる径の非線形白色ランプ:15mgを超えない水銀<br/>(c)非線形三波長蛍光体ランプ管径17mm超(例:T9)に含有する15mgを超えない水銀<br/>(d)その他の一般照明目的および特別目的用(例:インダクションランプ)のためのランプに含有する15mgを超えない水銀</xsl:if>
				<xsl:if test="$id='Hg-R-20'">Hg-R-16、Hg-R-17、Hg-R-18、Hg-R-9以外の低圧放電ランプ中の水銀(ランプごと)</xsl:if>
				<xsl:if test="$id='Hg-R-9'">特別目的の冷陰極線蛍光灯および外部電極蛍光ランプ(CCFLおよびEEFL)中の水銀</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の水銀の含有</xsl:if>
				<xsl:if test="$id='J01-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='J01-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-1'">長期間皮膚に接触する用途で、意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-2'">製品用途不明で意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-98'">Ni-J-1、Ni-J-2以外の含有がある場合(長時間皮膚に接触しない用途、または不純物)</xsl:if>
				<xsl:if test="$id='Pb-B-1'">電池重量あたり40ppmを超える鉛を含有する電池</xsl:if>
				<xsl:if test="$id='Pb-E-1'">アルミニウム中の鉛(0.4＜Pb≦1.5wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-10'">均質材料単位あたり1000ppmを超える鉛を含むバルブシート</xsl:if>
				<xsl:if test="$id='Pb-E-11'">均質材料単位あたり1000ppmを超える鉛を含む起爆剤</xsl:if>
				<xsl:if test="$id='Pb-E-12'">均質材料単位あたり1000ppmを超える、電気用途のはんだの鉛(電子回路基板及びガラスへのはんだ付けを除く)</xsl:if>
				<xsl:if test="$id='Pb-E-13'">均質材料単位あたり1000ppmを超える、電気・電子部品の電子回路基板への取り付け及び部品終端用はんだの鉛(電解アルミコンデンサーを除く)</xsl:if>
				<xsl:if test="$id='Pb-E-14'">均質材料単位あたり1000ppmを超える、電解アルミニウムコンデンサーの終端の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-15'">均質材料単位あたり1000ppmを超える、エアマスセンサーのガラスへのはんだ付け用の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-16'">均質材料単位あたり1000ppmを超える、パワーセミコンダクターのヒートスプレッダーとヒートシンクの取り付けはんだの鉛(チップサイズが少なくとも1cm2で電流密度が少なくとも1A/mm2)</xsl:if>
				<xsl:if test="$id='Pb-E-17'">均質材料単位あたり1000ppmを超える、ガラスへの電気グレージング用途のはんだの鉛(ラミネートグレージングはんだ付けを除く)</xsl:if>
				<xsl:if test="$id='Pb-E-18'">均質材料単位あたり1000ppmを超える、ラミネートグレージング用途のはんだの鉛</xsl:if>
				<xsl:if test="$id='Pb-E-19'">均質材料単位あたり1000ppmを超える、連続亜鉛めっきスチールシート中の0.35wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-E-20'">均質材料単位あたり1000ppmを超える、超音波ソナーのセンサーの一部であるキャパシタの誘電体セラミック中の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-21'">排熱の回収によるCO2排出量を削減する自動車電装用途における鉛含有熱電材料</xsl:if>
				<xsl:if test="$id='Pb-E-3'">均質材料単位あたり1000ppmを超える鉛を含むベアリングシェル/軸受(合金)</xsl:if>
				<xsl:if test="$id='Pb-E-4'">均質材料単位あたり1000ppmを超える鉛を含むバッテリー</xsl:if>
				<xsl:if test="$id='Pb-E-5'">均質材料単位あたり1000ppmを超える鉛を含む制振装置(バイブレーションダンパ)</xsl:if>
				<xsl:if test="$id='Pb-E-6'">均質材料単位あたり1000ppmを超える、0.5wt%以下の流体ハンドリング・パワートレーン用エラストマーの加硫剤及び安定剤中の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-7'">均質材料単位あたり1000ppmを超える、0.5wt%以下のパワートレーン用エラストマーの接着剤中の鉛</xsl:if>
				<xsl:if test="$id='Pb-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える鉛の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Pb-J-1'">均質材料単位あたり300ppmを超える、電線及びコード類の被覆中の鉛</xsl:if>
				<xsl:if test="$id='Pb-J-3'">おもちゃ用途の部品・材料で、塗装などの表面処理層単位あたり0.009%を超える鉛の含有<br/>(ただし、本項目は、調査先からおもちゃ用途で使用するという指示がある場合のみ選択すること)</xsl:if>
				<xsl:if test="$id='Pb-J-4'">調査単位あたり100ppmを超える鉛を含む、12歳以下の子供用製品への使用<br/>(ただし、本項目は、調査先から12歳以下の子供用製品で使用するという指示がある場合のみ選択すること)</xsl:if>
				<xsl:if test="$id='Pb-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の鉛の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Pb-R-1'">均質材料単位あたり1000ppmを超える、アルミニウム材料中の0.4wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-R-10'">均質材料単位あたり1000ppmを超える、ケイ酸塩(silicate)がコーティングされたバルブを有する直線状白熱電球の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-11'">均質材料単位あたり1000ppmを超える、プロフェッショナル向け複写用途に使用される高輝度放電(HID)ランプ中の放射媒体としてのハロゲン化鉛</xsl:if>
				<xsl:if test="$id='Pb-R-15'">均質材料単位あたり1000ppmを超える鉛を含むホウケイ酸ガラス、ソーダ石灰ガラス等へ使用するエナメル塗布用印刷インキ</xsl:if>
				<xsl:if test="$id='Pb-R-17'">均質材料単位あたり1000ppmを超える、ピッチが0.65mm以下のコネクタ以外の狭ピッチコンポーネントの仕上げ剤に含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-18'">均質材料単位あたり1000ppmを超える、機械加工通し穴付き円盤状および平面アレーセラミック多層コンデンサへのはんだ付け用はんだに含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-2'">高融点はんだ中の鉛(85wt%以上の鉛を含む鉛合金)</xsl:if>
				<xsl:if test="$id='Pb-R-22'">均質材料単位あたり1000ppmを超える、理事会指令69/493/EECの付属書I(カテゴリ1、2、3および4)で定義されているクリスタルガラスに含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-23'">均質材料単位あたり1000ppmを超える、水銀を含有しない薄型蛍光ランプ(たとえば、液晶ディスプレイや、デザイン用または工業用照明に用いられるもの)に使用されるはんだ材の中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-24'">均質材料単位あたり1000ppmを超える、アルゴン・クリプトンレーザ管のウインドウ組立部品を形成するために用いられるシールフリット中の酸化鉛中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-25'">均質材料単位あたり1000ppmを超える、電力トランス中の、直径100μm以下の薄型銅線のはんだ用のはんだ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-26'">均質材料単位あたり1000ppmを超えるサーメット型のトリマポテンショメータの素子に含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-27'">均質材料単位あたり1000ppmを超える、亜鉛ホウ酸塩処理ガラス(zincboratglass)体ベース上の高圧ダイオードのめっき層中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-3'">均質材料単位あたり1000ppmを超える、サーバー、ストレージおよびストレージ・アレイ・システム、スイッチ切替、信号発信、転送ならびに電気通信用ネットワーク管理のためのネットワーク・インフラ装置用のハンダ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-30'">均質材料単位あたり1000ppmを超える鉛を含む光学用途に使用される白色ガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-31'">均質材料単位あたり1000ppmを超える鉛を含むフィルターガラスおよび反射基準(reflectancestandards)に使用されるガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-32'">均質材料単位あたり1000ppmを超える、ヒーティング、換気、空調及び冷蔵、冷凍、換気(ヒーバックアンドアール:HVACR)用途の冷媒含有コンプレッサ用ベアリングのシェル(さや)およびブッシュ(穴の内面にはめこむ円筒部品)中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-33'">均質材料単位あたり1000ppmを超える、BSP(BaSi2O5:Pb)等の蛍光体を含む日焼け用ランプとして使用される放電ランプの蛍光パウダー中の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
				<xsl:if test="$id='Pb-R-34'">均質材料単位あたり1000ppmを超える、SMS((Sr,Ba)2MgSi2O7:Pb)等の蛍光体を含む、ジアゾ印刷複写、リソグラフィ、捕虫器、光化学、硬化処理用の専用ランプとして使用される放電ランプの蛍光体の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
				<xsl:if test="$id='Pb-R-35'">均質材料単位あたり1000ppmを超える、表面伝導型電子放出素子ディスプレイ(SED)の表面において、構造的要素中、特にシールフリットおよびフリットリングに使用される酸化鉛。</xsl:if>
				<xsl:if test="$id='Pb-R-5'">均質材料単位あたり1000ppmを超える鉛を含む熱伝導モジュールCリング用コーティング材</xsl:if>
				<xsl:if test="$id='Pb-R-7'">85wt%未満80wt%を超える鉛を含むマイクロプロセッサのピンとパッケージ接合用の2種類を超える元素で構成されるはんだ</xsl:if>
				<xsl:if test="$id='Pb-R-8'">均質材料単位あたり1000ppmを超える、FlipChipICパッケージ内で半導体のダイとキャリアー接合用のはんだ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-10'">均質材料単位あたり1000ppmを超える、Cプレスコンプライアント・ピン・コネクタ/システムに使用される鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-11'">均質材料単位あたり1000ppmを超える、Cプレス以外のコンプライアント・ピン・コネクタ/システムに使用される鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-12'">均質材料単位あたり1000ppmを超える、集積回路またはディスクリート半導体(単機能半導体)の一部であるキャパシターのPZT系誘電体セラミック材料中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">均質材料単位あたり1000ppmを超える、鋼材(バッチ式溶融亜鉛めっき、快削鋼を含む)中の0.35wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-RE-4'">均質材料単位あたり1000ppmを超える、銅合金(真鍮、りん青銅等)中の4wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-RE-5'">均質材料単位あたり1000ppmを超える、陰極線管中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-6'">均質材料単位あたり1000ppmを超える、重量比0.2%までの蛍光管のガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-7'">均質材料単位あたり1000ppmを超える、ガラスまたはセラミック中、もしくはガラスまたはセラミックスマトリックス化合物中に鉛を含む、キャパシタ中の誘電セラミック(例:ピエゾエレクトロニックデバイス)および自動車用バルブ、自動車用プラグ以外の電気および電子コンポーネント中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-8'">Pb-RE12、Pb-E-20の用途を除く、均質材料単位あたり1000ppmを超える、125VACまたは250VDCまたはそれ以上の定格電圧のキャパシタに使用する誘電セラミック中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-9'">Pb-RE12、Pb-E-20の用途を除く、均質材料単位あたり1000ppmを超える、定格電圧が125VACまたは250VDC未満のキャパシタ中の誘電セラミック中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の鉛の含有</xsl:if>
			</xsl:if>
			<xsl:if test="$ver=4.3">
				<xsl:if test="$id='A17-J-3'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-4'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='A17-J-97'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A19-J-0'">調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A19-J-98'">調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A20-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A20-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A21-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A21-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A22-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A22-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-1'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える、1コンポーネントよび2コンポーネント室温加硫シーラント(RTV-1 RTV-2シーラント)および接着剤への含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-2'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える、成形品に塗布される場合の、DBT化合物を促進剤として含む塗料およびコーティングへの含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-3'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える、ソフト塩ビ自体であれ、硬質PVCとの同時押出であれ、ソフト塩ビ(PVC)プロフィールへの含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-4'">特定用途(A23-J-1, 2, 3)を除く、均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A23-J-98'">均質材料単位あたりのスズ含有率が、重量比で、0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A24-J-0'">・調査対象中に存在する織物/皮革部<br/>・2液性室温硬化モールディングキット(RTV-2シーラントモールディングキット)<br/>の使用で、均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A24-J-1'">製品用途不明で意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A24-J-98'">A24-J-0、A24-J-1以外の含有がある場合</xsl:if>
				<xsl:if test="$id='A25-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A25-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A26-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A26-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A27-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A27-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A28-J-4'">均質材料単位あたりのスズ含有率が、重量比で、0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A28-J-5'">A28-J-4以外の用途で、意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='A28-J-97'">均質材料単位あたりのスズ含有率が、重量比で、0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A29-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A29-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A30-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A30-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A31-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A31-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A32-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A32-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A33-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A33-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A34-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A34-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A35-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A35-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A36-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A36-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A37-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A37-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A38-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A38-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A39-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A39-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A40-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A40-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A41-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A41-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A42-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A42-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A43-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A43-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A44-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A44-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A45-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A45-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A46-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A46-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A47-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A47-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-J-0'">均質材料単位あたり1000ppmを超えるPBBの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超えるPBBの含有</xsl:if>
				<xsl:if test="$id='B02-R-0'">均質材料単位あたり1000ppm以下のPBBの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B02-R-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下のPBBの含有</xsl:if>
				<xsl:if test="$id='B03-J-0'">均質材料単位あたり1000ppmを超えるPBDEの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B03-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超えるPBDEの含有</xsl:if>
				<xsl:if test="$id='B03-R-0'">均質材料単位あたり1000ppm以下のPBDEの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B03-R-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下のPBDEの含有</xsl:if>
				<xsl:if test="$id='B05-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B05-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B06-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B06-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-3'">積層プリント配線基板の用途で、臭素元素含有量が積層プリント配線基板あたりの重量比で0.09重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-4'">製品用途不明で臭素系難燃剤として意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-5'">積層プリント配線基板中のものを除く、プラスチック材料中の臭素の含有合計で0.1重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B08-J-97'">B08-J-3、B08-J-4、B08-J-5以外の含有がある場合</xsl:if>
				<xsl:if test="$id='B09-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B09-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B10-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B10-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='B11-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B11-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B12-J-0'">調査単位あたりの重量比が6ppbを超える含有がある場合</xsl:if>
				<xsl:if test="$id='B12-J-98'">調査単位あたりの重量比が6ppb以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-0'">フォトリソグラフィ・プロセスのためのフォトレジストまたは反射防止コーティング中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-1'">フィルム、書類、または印刷版に使用される写真コーティング中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-2'">クロムめっき、クロム酸化処理、リバースエッチングで使用するミスト抑制剤中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-3'">無電解ニッケル-ポリテトラフルオロエチレン(PTFE)めっきで使用するミスト抑制剤中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-4'">金属皮膜前のプラスチック基材のエッチングで使用するミスト抑制剤中にPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-6'">特定用途(B13-J-0,1,2,3,4)を除く、成形品の含有成分として、均質材料単位あたり0.1wt%以上のPFOSの意図的含有がある場合、もしくはテキスタイルまたはその他の被覆された材料について、被覆材の 1 &#181;g/m2以上の量でPFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-7'">特定用途(B13-J-0,1,2,3,4,6,8,9)を除く、PFOSの意図的含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-8'">特定用途(B13-J-0,1,2,3,4,6,7,9)を除く、均質材料単位あたり0.1wt%以上のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-89'">特定用途(B13-J-92,93,94,95,96)を除く、物質または調剤の構成成分として、0.001wt%以下の不純物としてのPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-9'">特定用途(B13-J-0,1,2,3,4,6,7,8)を除く、物質または調剤の構成成分として、0.001wt%を超えるPFOSの含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-90'">特定用途(B13-J-92,93,94,95,96)を除く、成形品の含有成分として、均質材料単位あたり0.1wt%未満のPFOSの不純物としての含有がある場合、<br/>もしくはテキスタイルまたはその他の被覆された材料について、被覆材の1&#181;g/m2未満の量でPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-91'">特定用途(B13-J-92,93,94,95,96,89,90)を除くPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-92'">フォトリソグラフィ・プロセスのためのフォトレジストまたは反射防止コーティング中に1&#181;g/m2未満のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-93'">フィルム、書類、または印刷版に使用される写真コーティング中に1&#181;g/m2未満のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-94'">クロムめっき、クロム酸化処理、リバースエッチングで使用するミスト抑制剤中に、0.001wt%以下のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-95'">無電解ニッケル-ポリテトラフルオロエチレン(PTFE)めっきで使用するミスト抑制剤中に、0.001wt%以下のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B13-J-96'">金属皮膜前のプラスチック基材のエッチングで使用するミスト抑制剤中に、0.001wt%以下のPFOSの不純物としての含有がある場合</xsl:if>
				<xsl:if test="$id='B15-J-2'">均質材料単位あたりの重量比が0.005%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B15-J-97'">均質材料単位あたりの重量比が0.005%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B16-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B16-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B17-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B17-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B18-J-0'">積層プリント配線基板の用途で、塩素元素の含有量が積層プリント配線基板あたりの重量比で0.09重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B18-J-1'">積層プリント配線基板中のものを除く、プラスチック材料中の塩素の含有合計で0.1重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B18-J-2'">製品用途不明で塩素系難燃剤として意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='B18-J-98'">B18-J-0、B18-J-1,B18-J-2 以外の含有がある場合</xsl:if>
				<xsl:if test="$id='B19-J-0'">積層プリント配線基板中のものを除く、プラスチック材料中の塩素の含有合計で0.1重量%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B19-J-98'">積層プリント配線基板中のものを除く、プラスチック材料中の塩素の含有合計で0.1重量%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B20-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B20-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='B21-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B21-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C01-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C01-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C02-J-2'">重量比が0.003%を超える特定の芳香族アミンを生成するアゾ染料・顔料を含有する皮革製品及び繊維製品の場合<br/>(皮革、織物を有する部位での使用)</xsl:if>
				<xsl:if test="$id='C02-J-3'">製品用途不明で意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C02-J-98'">C02-J-2, C02-J-3以外の含有がある場合</xsl:if>
				<xsl:if test="$id='C04-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C04-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C06-J-1'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C06-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-0'">重量比0.0075%を超える織物製品への含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-2'">調査対象に木材を有する場合で、木材中に意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C07-J-97'">C07-J-0、C07-J-2以外の含有がある場合</xsl:if>
				<xsl:if test="$id='C08-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C08-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-1'">玩具、または育児製品の用途で、可塑化した材料(均質材料単位)あたりの重量比が、BBP, DBP, DEHPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-2'">製品用途不明で、可塑化した材料(均質材料単位)あたりの重量比が、BBP, DBP, DEHPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-96'">C09-J-1の用途以外の製品に使用され、可塑化した材料(均質材料単位)あたりの重量比が、BBP, DBP, DEHPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C09-J-97'">C09-J-1、C09-J-2の用途以外で、可塑化した材料(均質材料単位)あたりの重量比が、BBP, DBP, DEHPの合計値0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-0'">子供の口に入る玩具、または育児製品の用途で、可塑化した材料(均質材料単位)あたりの重量比が、DIDP, DINP, DNOPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-1'">製品用途不明で、可塑化した材料(均質材料単位)あたりの重量比が、DIDP, DINP, DNOPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-97'">C10-J-0の用途以外の製品に使用され、可塑化した材料(均質材料単位)あたりの重量比が、DIDP, DINP, DNOPの合計値で0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C10-J-98'">C10-J-0、C10-J-1の用途以外で、可塑化した材料(均質材料単位)あたりの重量比が、DIDP, DINP, DNOPの合計値で0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C11-J-0'">均質材料単位あたりの重量比が0.00001%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C11-J-98'">均質材料単位あたりの重量比が0.00001%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C12-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C12-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C13-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C13-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C14-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C14-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C15-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C15-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C16-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C16-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C17-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C17-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C18-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C18-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C19-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C19-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C20-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C20-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C21-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C21-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C22-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C22-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C23-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C23-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C24-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C24-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C25-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C25-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C26-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C26-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C27-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C27-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C28-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C28-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C29-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C29-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C30-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C30-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C31-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C31-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C32-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C32-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C33-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C33-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C34-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C34-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C35-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C35-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C36-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C36-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C37-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C37-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-B-2'">電池重量あたり10ppmを超えるカドミウムを含有する電池</xsl:if>
				<xsl:if test="$id='Cd-E-2'">均質材料単位あたり100ppmを超えるカドミウムを含む電気自動車のバッテリー</xsl:if>
				<xsl:if test="$id='Cd-J-0'">特定用途を除く均質材料単位あたり100ppmを超えるカドミウムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり100ppmを超えるカドミウムの含有</xsl:if>
				<xsl:if test="$id='Cd-R-0'">特定用途を除く均質材料単位あたり100ppm以下のカドミウムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cd-R-10'">均質材料単位あたり100ppmを超える、固体照明または表示システムで使用するための色変換&#8545;-&#8549; LED中のカドミウム(光放出エリアミリ平方あたり&lt;10&#181;g Cd)</xsl:if>
				<xsl:if test="$id='Cd-R-11'">均質材料単位あたり100ppmを超える、プロ用音響機器に使用されるアナログ光カプラーのフォトレジスター中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-3'">均質材料単位あたり100ppmを超えるカドミウムを含むホウケイ酸ガラス、ソーダ石灰ガラス等へ使用するエナメル塗布用印刷インキ</xsl:if>
				<xsl:if test="$id='Cd-R-4'">均質材料単位あたり100ppmを超える、音圧レベル100dB(A)以上の高耐入力スピーカの変換器のボイスコイルに直付けされる導電体の電気的/機械的なはんだ接合部分の合金中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-6'">均質材料単位あたり100ppmを超える、酸化ベリリウムと結合したアルミニウム上に使用される厚膜ペースト中のカドミウムおよび酸化カドミウム中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-8'">均質材料単位あたり100ppmを超える、電気接点中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-R-9'">均質材料単位あたり100ppmを超える、フィルターガラスおよび反射基準(reflectance standards)に使用されるガラス中のカドミウム</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり100ppm以下のカドミウムの含有</xsl:if>
				<xsl:if test="$id='Cr-E-1'">均質材料単位あたり1000ppmを超える六価クロムを含む防錆コーティング(下記Cr-E-2以外)</xsl:if>
				<xsl:if test="$id='Cr-E-2'">均質材料単位あたり1000ppmを超える六価クロムを含む車体部ボルトナット組立て関係の防錆コーティング</xsl:if>
				<xsl:if test="$id='Cr-E-3'">均質材料単位あたり1000ppmを超える、0.75wt%以下の六価クロムを含むキャラバン車の(吸着)冷蔵庫</xsl:if>
				<xsl:if test="$id='Cr-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える六価クロムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cr-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える六価クロムの含有</xsl:if>
				<xsl:if test="$id='Cr-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の六価クロムの意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Cr-R-2'">均質材料単位あたり1000ppmを超える、吸収型冷蔵庫中のカーボン・スチール冷却システムの防錆剤としての0.75重量%までの六価クロム</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の六価クロムの含有</xsl:if>
				<xsl:if test="$id='Hg-B-1'">意図的添加または電池重量あたり1ppmを超える水銀を含有する電池</xsl:if>
				<xsl:if test="$id='Hg-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える水銀の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Hg-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える水銀の含有</xsl:if>
				<xsl:if test="$id='Hg-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の水銀の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Hg-R-11'">改善された演色評価数(colour rendering index) Ra60超の一般照明目的の超高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-12'">一般照明目的用のその他(Hg-R-11)の超高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-13'">高圧水銀放電ランプ(HPMV)中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-14'">ハロゲン化金属ランプ(MH)中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-15'">2011/65/EUの附属書(or水銀の使用用途分類)で特に定めていない特殊目的のその他の放電ランプ中の水銀</xsl:if>
				<xsl:if test="$id='Hg-R-17'">ダブルキャップの一般目的用の直管蛍光灯中(ランプ毎に)の下記を超えない水銀<br/>(a)通常寿命の管径9mm未満(例:T2)の三波長蛍光体:4mg<br/>(b)通常寿命の管径9mm以上17mm以下(例:T5)の三波長蛍光体:3mg<br/>(c)通常寿命の管径17mm超28mm以下(例:T8)の三波長蛍光体:3.5mg<br/>(d)通常寿命の管径28mm超(例:T12)の三波長蛍光体:3.5mg<br/>(e)長寿命(25,000時間以上)の三波長蛍光体: 5mg</xsl:if>
				<xsl:if test="$id='Hg-R-20'">Hg-R-26、Hg-R-17、Hg-R-28、Hg-R-9以外の低圧放電ランプ中の水銀(ランプごと)</xsl:if>
				<xsl:if test="$id='Hg-R-26'">シングルキャップの蛍光ランプ中の、(バーナーあたり)下記を超えない水銀<br/>(a)30W未満の一般照明目的用:2.5mg<br/>(b)30W以上50W未満の一般照明目的用:3.5 mg<br/>(c)50W以上150W未満の一般照明目的用:5 mg<br/>(d)150W以上の一般照明目的用:15mg<br/>(e)環形または四角の構造形態で、管径17mm以下を有する一般照明目的用:7mg<br/>(f)特別目的用:5 mg</xsl:if>
				<xsl:if test="$id='Hg-R-28'">ダブルキャップの一般目的用以外の蛍光灯中(ランプ毎に)の下記の水銀<br/>(b)あらゆる径の非線形白色ランプ:15mgを超えない水銀<br/>(c)非線形三波長蛍光体ランプ管径 17mm超(例:T9)に含有する15mgを超えない水銀<br/>(d)その他の一般照明目的および特別目的用(例:インダクションランプ)のためのランプに含有する15mgを超えない水銀</xsl:if>
				<xsl:if test="$id='Hg-R-9'">特別目的の冷陰極線蛍光灯および外部電極蛍光ランプ(CCFLおよびEEFL)中の水銀</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の水銀の含有</xsl:if>
				<xsl:if test="$id='J01-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='J01-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-1'">長期間皮膚に接触する用途で、意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-2'">製品用途不明で意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Ni-J-98'">Ni-J-1、Ni-J-2以外の含有がある場合(長時間皮膚に接触しない用途、または不純物)</xsl:if>
				<xsl:if test="$id='Pb-B-1'">電池重量あたり40ppmを超える鉛を含有する電池</xsl:if>
				<xsl:if test="$id='Pb-E-1'">アルミニウム中の鉛  (0.4&lt;Pb&#8804;1.5wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-10'">均質材料単位あたり1000ppmを超える鉛を含むバルブシート</xsl:if>
				<xsl:if test="$id='Pb-E-11'">均質材料単位あたり1000ppmを超える鉛を含む起爆剤</xsl:if>
				<xsl:if test="$id='Pb-E-12'">均質材料単位あたり1000ppmを超える、電気用途のはんだの鉛(電子回路基板及びガラスへのはんだ付けを除く)</xsl:if>
				<xsl:if test="$id='Pb-E-13'">均質材料単位あたり1000ppmを超える、電気・電子部品の電子回路基板への取り付け及び部品終端用はんだの鉛(電解アルミコンデンサーを除く)</xsl:if>
				<xsl:if test="$id='Pb-E-15'">均質材料単位あたり1000ppmを超える、エアマスセンサーのガラスへのはんだ付け用の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-16'">均質材料単位あたり1000ppmを超える、パワーセミコンダクターのヒートスプレッダーとヒートシンクの取り付けはんだの鉛(チップサイズが少なくとも1cm2で電流密度が少なくとも1A/mm2)</xsl:if>
				<xsl:if test="$id='Pb-E-17'">均質材料単位あたり1000ppmを超える、ガラスへの電気グレージング用途のはんだの鉛(ラミネートグレージングはんだ付けを除く)</xsl:if>
				<xsl:if test="$id='Pb-E-18'">均質材料単位あたり1000ppmを超える、ラミネートグレージング用途のはんだの鉛</xsl:if>
				<xsl:if test="$id='Pb-E-19'">均質材料単位あたり1000ppmを超える、連続亜鉛めっきスチールシート中の0.35wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-E-20'">均質材料単位あたり1000ppmを超える、超音波ソナーのセンサーの一部であるキャパシタの誘電体セラミック中の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-21'">排熱の回収によるCO2 排出量を削減する自動車電装用途における鉛含有熱電材料</xsl:if>
				<xsl:if test="$id='Pb-E-22'">Pb-RE12、Pb-E-20の用途を除く、均質材料単位あたり1000ppmを超える、定格電圧が125V ACまたは250V DC未満のキャパシタ中の誘電セラミック中の鉛 </xsl:if>
				<xsl:if test="$id='Pb-E-23'">均質材料単位あたり1000ppmを超える、コンプライアント・ピン・コネクタ/システムに使用される鉛</xsl:if>
				<xsl:if test="$id='Pb-E-3'">均質材料単位あたり1000ppmを超える鉛を含むベアリングシェル/軸受(合金)</xsl:if>
				<xsl:if test="$id='Pb-E-4'">均質材料単位あたり1000ppmを超える鉛を含むバッテリー</xsl:if>
				<xsl:if test="$id='Pb-E-5'">均質材料単位あたり1000ppmを超える鉛を含む制振装置(バイブレーションダンパ)</xsl:if>
				<xsl:if test="$id='Pb-E-6'">均質材料単位あたり1000ppmを超える、0.5wt%以下の流体ハンドリング・パワートレーン用エラストマーの加硫剤及び安定剤中の鉛</xsl:if>
				<xsl:if test="$id='Pb-E-7'">均質材料単位あたり1000ppmを超える、0.5wt%以下のパワートレーン用エラストマーの接着剤中の鉛</xsl:if>
				<xsl:if test="$id='Pb-J-0'">特定用途を除く均質材料単位あたり1000ppmを超える鉛の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Pb-J-1'">均質材料単位あたり300ppmを超える、電線及びコード類の被覆中の鉛</xsl:if>
				<xsl:if test="$id='Pb-J-3'">おもちゃ用途の部品・材料で、塗装などの表面処理層単位あたり0.009%を超える鉛の含有<br/>(ただし、本項目は、調査先からおもちゃ用途で使用するという指示がある場合のみ選択すること)</xsl:if>
				<xsl:if test="$id='Pb-J-4'">調査単位あたり100ppmを超える鉛を含む、12歳以下の子供用製品への使用<br/>(ただし、本項目は、調査先から12歳以下の子供用製品で使用するという指示がある場合のみ選択すること)</xsl:if>
				<xsl:if test="$id='Pb-J-99'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppmを超える鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-R-0'">特定用途を除く均質材料単位あたり1000ppm以下の鉛の意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='Pb-R-1'">均質材料単位あたり1000ppmを超える、アルミニウム材料中の0.4wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-R-10'">均質材料単位あたり1000ppmを超える、ケイ酸塩(silicate)がコーティングされたバルブを有する直線状白熱電球の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-11'">均質材料単位あたり1000ppmを超える、プロフェッショナル向け複写用途に使用される高輝度放電(HID)ランプ中の放射媒体としてのハロゲン化鉛</xsl:if>
				<xsl:if test="$id='Pb-R-15'">均質材料単位あたり1000ppmを超える鉛を含むホウケイ酸ガラス、ソーダ石灰ガラス等へ使用するエナメル塗布用印刷インキ</xsl:if>
				<xsl:if test="$id='Pb-R-17'">均質材料単位あたり1000ppmを超える、ピッチが0.65mm以下のコネクタ以外の狭ピッチコンポーネントの仕上げ剤に含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-18'">均質材料単位あたり1000ppmを超える、機械加工通し穴付き円盤状および平面アレーセラミック多層コンデンサへのはんだ付け用はんだに含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-2'">高融点はんだ中の鉛(85wt%以上の鉛を含む鉛合金)</xsl:if>
				<xsl:if test="$id='Pb-R-22'">均質材料単位あたり1000ppmを超える、理事会指令69/493/EECの付属書I(カテゴリ1、2、3および4)で定義されているクリスタルガラスに含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-23'">均質材料単位あたり1000ppmを超える、水銀を含有しない薄型蛍光ランプ(たとえば、液晶ディスプレイや、デザイン用または工業用照明に用いられるもの)に使用されるはんだ材の中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-24'">均質材料単位あたり1000ppmを超える、アルゴン・クリプトンレーザ管のウインドウ組立部品を形成するために用いられるシールフリット中の酸化鉛中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-25'">均質材料単位あたり1000ppmを超える、電力トランス中の、直径100 &#181;m 以下の薄型銅線のはんだ用のはんだ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-26'">均質材料単位あたり1000ppmを超えるサーメット型のトリマポテンショメータの素子に含まれる鉛</xsl:if>
				<xsl:if test="$id='Pb-R-27'">均質材料単位あたり1000ppmを超える、亜鉛ホウ酸塩処理ガラス(zinc borat glass)体ベース上の高圧ダイオードのめっき層中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-3'">均質材料単位あたり1000ppmを超える、サーバー、ストレージおよびストレージ・アレイ・システム、スイッチ切替、信号発信、転送ならびに電気通信用ネットワーク管理のためのネットワーク・インフラ装置用のハンダ中の鉛 </xsl:if>
				<xsl:if test="$id='Pb-R-30'">均質材料単位あたり1000ppmを超える鉛を含む光学用途に使用される白色ガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-31'">均質材料単位あたり1000ppmを超える鉛を含むフィルターガラスおよび反射基準(reflectance standards)に使用されるガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-32'">均質材料単位あたり1000ppmを超える、ヒーティング、換気、空調及び冷蔵、冷凍、換気(ヒーバックアンドアール:HVACR)用途の冷媒含有コンプレッサ用ベアリングのシェル(さや)およびブッシュ(穴の内面にはめこむ円筒部品)中の鉛</xsl:if>
				<xsl:if test="$id='Pb-R-33'">均質材料単位あたり1000ppmを超える、BSP (BaSi2O5:Pb)等の蛍光体を含む日焼け用ランプとして使用される放電ランプの蛍光パウダー中の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
				<xsl:if test="$id='Pb-R-34'">均質材料単位あたり1000ppmを超える、SMS((Sr,Ba)2MgSi2O7:Pb)等の蛍光体を含む、ジアゾ印刷複写、リソグラフィ、捕虫器、光化学、硬化処理用の専用ランプとして使用される放電ランプの蛍光体の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
				<xsl:if test="$id='Pb-R-35'">均質材料単位あたり1000ppmを超える、表面伝導型電子放出素子ディスプレイ(SED)の表面において、構造的要素中、特にシールフリットおよびフリットリングに使用される酸化鉛。</xsl:if>
				<xsl:if test="$id='Pb-R-5'">均質材料単位あたり1000ppmを超える鉛を含む熱伝導モジュールCリング用コーティング材</xsl:if>
				<xsl:if test="$id='Pb-R-8'">均質材料単位あたり1000ppmを超える、Flip Chip ICパッケージ内で半導体のダイとキャリアー接合用のはんだ中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-10'">均質材料単位あたり1000ppmを超える、Cプレスコンプライアント・ピン・コネクタ/システムに使用される鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-12'">均質材料単位あたり1000ppmを超える、集積回路またはディスクリート半導体(単機能半導体)の一部であるキャパシターのPZT系誘電体セラミック材料中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">均質材料単位あたり1000ppmを超える、鋼材(バッチ式溶融亜鉛めっき、快削鋼を含む)中の0.35wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-RE-4'">均質材料単位あたり1000ppmを超える、銅合金(真鍮、りん青銅等)中の4wt%以下の鉛の含有</xsl:if>
				<xsl:if test="$id='Pb-RE-5'">均質材料単位あたり1000ppmを超える、陰極線管中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-6'">均質材料単位あたり1000ppmを超える、重量比0.2%までの蛍光管のガラス中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-7'">均質材料単位あたり1000ppmを超える、ガラスまたはセラミック中、もしくはガラスまたはセラミックスマトリックス化合物中に鉛を含む、キャパシタ中の誘電セラミック(例:ピエゾエレクトロニックデバイス)および自動車用バルブ、自動車用プラグ以外の電気および電子コンポーネント中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-8'">Pb-RE12、Pb-E-20の用途を除く、均質材料単位あたり1000ppmを超える、125V ACまたは250V DCまたはそれ以上の定格電圧のキャパシタに使用する誘電セラミック中の鉛</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">不純物/リサイクル材料/コンタミネーションとして、均質材料単位あたり1000ppm以下の鉛の含有</xsl:if>
				<!--Ver.4.31追加分-->
				<xsl:if test="$id='B23-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='B23-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A48-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A48-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C38-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C38-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A49-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A49-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C39-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C39-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C40-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C40-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A50-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A50-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A51-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A51-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A52-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A52-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A53-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A53-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C41-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C41-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C42-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C42-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A54-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A54-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A55-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A55-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C43-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C43-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A56-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A56-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C44-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C44-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C45-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C45-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C46-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='C46-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A57-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A57-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A58-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A58-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A59-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A59-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A60-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A60-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A61-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A61-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A62-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A62-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='A63-J-0'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%を超える含有がある場合</xsl:if>
				<xsl:if test="$id='A63-J-98'">対象となる個々の物質単位で、調査単位あたりの重量比が0.1%以下の含有がある場合</xsl:if>
				<xsl:if test="$id='C47-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C47-J-98'">不純物の含有がある場合</xsl:if>
				<xsl:if test="$id='C48-J-0'">意図的添加の含有がある場合</xsl:if>
				<xsl:if test="$id='C48-J-98'">不純物の含有がある場合</xsl:if>
			</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$ver=4">
				<xsl:if test="$id='A17-J-3'">Cases containing above 0.1% TBTO by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A17-J-4'">Cases containing intentionally added TBTO, excluding A17-J-3.</xsl:if>
				<xsl:if test="$id='A17-J-98'">Cases containing TBTO other than A17-J-3 and A17-J-4. </xsl:if>
				<xsl:if test="$id='A18-J-3'">Cases containing intentionally addition of certain TBTs and TPTs.</xsl:if>
				<xsl:if test="$id='A18-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='A19-J-0'">Cases containing above 0.1% beryllium oxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A19-J-98'">Cases containing up to 0.1% beryllium oxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A20-J-0'">Cases containing above 0.1% diarsenic pentoxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A20-J-98'">Cases containing up to 0.1% diarsenic pentoxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A21-J-0'">Cases containing above 0.1% diarsenic trioxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A21-J-98'">Cases containing up to 0.1% diarsenic trioxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B02-J-0'">Cases containing intentionally added PBB exceeding 1000ppm in homogeneous material. </xsl:if>
				<xsl:if test="$id='B02-J-99'">Containing PBB above 1000ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B02-R-0'">Cases containing 1000ppm or less of intentionally added PBB in homogeneous material. </xsl:if>
				<xsl:if test="$id='B02-R-98'">Containing 1000ppm or less of PBB in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B03-J-0'">Cases containing intentionally added PBDE exceeding 1000ppm in homogeneous material. </xsl:if>
				<xsl:if test="$id='B03-J-99'">Containing PBDE above 1000ppm in homogeneous material. :Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B03-R-0'">Cases containing 1000ppm or less of intentionally added PBDE in homogeneous material. </xsl:if>
				<xsl:if test="$id='B03-R-98'">Containing 1000ppm or less of PBDE in homogeneous material. :Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B05-J-1'">Cases containing intentionally added PCBs and specific substitutes.</xsl:if>
				<xsl:if test="$id='B05-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B06-J-1'">Cases containing intentionally added polychlorinated naphthalenes.</xsl:if>
				<xsl:if test="$id='B06-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B07-J-1'">Cases containing above 0.1% PVC by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B07-J-98'">Cases containing up to 0.1% PVC by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B08-J-1'">Cases containing above 0.1% bromiated flame retardants (other than PBBs, PBDEs, or HBCDD) by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B08-J-98'">Cases containing up to 0.1% bromiated flame retardants (other than PBBs, PBDEs, or HBCDD) by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B09-J-1'">Cases containing above 0.1% shortchain chlorinated paraffins by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B09-J-98'">Cases containing up to 0.1% shortchain chlorinated paraffins by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B10-J-0'">Cases containing intentionally added fluorinated greenhouse gases.</xsl:if>
				<xsl:if test="$id='B10-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B11-J-0'">Cases containing above 0.1% HBCDD and all major diastereoisomers by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B11-J-98'">Cases containing up to 0.1% HBCDD and all major diastereoisomers by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B12-J-0'">Cases containing above 6ppb perchlorates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B12-J-98'">Cases containing up to 6ppb perchlorates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B13-J-0'">PFOS intentionally added to reflex mirror coating and photoresists for the photolithography process.</xsl:if>
				<xsl:if test="$id='B13-J-1'">PFOS intentionally added to photo coating used in printing plates, film, and documents.</xsl:if>
				<xsl:if test="$id='B13-J-2'">PFOS intentionally added to mist suppressants used in chrome plating, chrome oxidation processing, and reverse etching.</xsl:if>
				<xsl:if test="$id='B13-J-3'">PFOS intentionally added to mist suppressants used in electroless nickel-polytetrafluoroethylene (PTFE) plating.</xsl:if>
				<xsl:if test="$id='B13-J-4'">PFOS intentionally added to mist suppressants used in etching of plastic base materials before metallic coating.</xsl:if>
				<xsl:if test="$id='B13-J-5'">Cases intentionally containing above 0.005wt% of PFOS as a structural component of substances and compounds, excluding uses for B13-J-0, 1, 2, 3, and 4.</xsl:if>
				<xsl:if test="$id='B13-J-6'">Cases intentionally containing above 0.1wt% of PFOS in homogeneous material as a constituent of moldings, excluding uses for B13-J-0, 1, 2, 3, and 4; for textiles and other covered materials, cases intentionally containing above 1μg/m2 of PFOS in lag, e</xsl:if>
				<xsl:if test="$id='B13-J-7'">Cases intentionally containing PFOS, excluding specified uses (B13-J-0, 1, 2, 3, 4, 5, and 6).</xsl:if>
				<xsl:if test="$id='B13-J-92'">Cases containing PFOS as impurities in reflex mirror coating or photoresists for the photolithography process.</xsl:if>
				<xsl:if test="$id='B13-J-93'">Cases containing PFOS as impurities in photo coating used in printing plates, film, and documents.</xsl:if>
				<xsl:if test="$id='B13-J-94'">Cases containing PFOS as impurities in mist suppressants used in chrome plating, chrome oxidation processing, and reverse etching.</xsl:if>
				<xsl:if test="$id='B13-J-95'">Cases containing PFOS as impurities in mist suppressants used in electroless nickel-polytetrafluoroethylene (PTFE) plating.</xsl:if>
				<xsl:if test="$id='B13-J-96'">Cases containing PFOS as impurities in mist suppressants used in etching of plastic base materials before metallic coating.</xsl:if>
				<xsl:if test="$id='B13-J-97'">Cases containing above 0.005wt% of PFOS as impurities as a structural component of substances and compounds, excluding uses for B13-J-92, 93, 94, 95, and 96.</xsl:if>
				<xsl:if test="$id='B13-J-98'">Cases containing impurities of PFOS, excluding specified uses (B13-J-92, 93, 94, 95, 96, 97, and 99).</xsl:if>
				<xsl:if test="$id='B13-J-99'">Cases containing above 0.1wt% of PFOS as impurities in homogeneous material as a constituent of moldings, excluding uses for B13-J-92, 93, 94, 95, and 96; for textiles and other covered materials, cases containing above 1μg/m2 of PFOS as inpurities in la</xsl:if>
				<xsl:if test="$id='B14-J-0'">Cases where intentionally added to external models for televisions and computers.</xsl:if>
				<xsl:if test="$id='B14-J-98'">Cases containing Deca-BDE other than B14-J-0.</xsl:if>
				<xsl:if test="$id='B15-J-1'">Cases containing intentionally added PCTs.</xsl:if>
				<xsl:if test="$id='B15-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B16-J-0'">Cases containing above 0.1% tris (2-chloroethyl) phosphate by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B16-J-98'">Cases containing up to 0.1% tris (2-chloroethyl) phosphate by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='C01-J-1'">Cases containing intentionally added asbestos.</xsl:if>
				<xsl:if test="$id='C01-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C02-J-2'">Leather products and fiber products used with the intention of continued contact with the human body containing azocolourants and azodyes, which form 0.003% of certain aromatic amines by weight.</xsl:if>
				<xsl:if test="$id='C02-J-98'">Cases containing azocolourants and azodyes which form certain aromatic amines other than C02-J-2.</xsl:if>
				<xsl:if test="$id='C04-J-1'">Cases containing intentionally added ozone depleting substances.</xsl:if>
				<xsl:if test="$id='C04-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C06-J-1'">Cases containing intentionally added radioactive substances.</xsl:if>
				<xsl:if test="$id='C06-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C07-J-0'">Cases containing above 0.0075% formaldehyde by weight in fiber products.</xsl:if>
				<xsl:if test="$id='C07-J-1'">Cases containing intentionally added formaldehyde (excluding C07-J-0).</xsl:if>
				<xsl:if test="$id='C07-J-98'">Cases containing impurities (excluding C07-J-0).</xsl:if>
				<xsl:if test="$id='C08-J-0'">Cases containing intentionally added phenol,2-(2H-benzotriazol-2-yl)-4,6-bis(1,1-dimethylethyl).</xsl:if>
				<xsl:if test="$id='C08-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C09-J-0'">Cases containing above 0.1% phthalates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='C09-J-98'">Cases containing up to 0.1% phthalates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='C10-J-0'">Articles used in products for children that contain above 0.1% phthalates by weight in homogeneous material.</xsl:if>
				<xsl:if test="$id='C10-J-98'">Cases containing phthalates other than C10-J-0.</xsl:if>
				<xsl:if test="$id='Cd-B-1'">Batteries containing cadmium exceeding 5ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Cd-E-2'">Batteries for electric vehicles containing cadmium exceeding 100ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cd-J-0'">Cases containing intentionally added cadmium exceeding 100ppm in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Cd-J-99'">Containing cadmium above 100pmm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cd-R-0'">Cases containing 100ppm or less of intentionally added cadmium in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Cd-R-1'">Cadmium exceeding 100ppm in homogeneous material in Electric point and plating excluding uses banned by the amended EU Directive 76/769/EEC \"91/338/EEC\"</xsl:if>
				<xsl:if test="$id='Cd-R-2'">Optical glass and filter glass containing cadmium exceeding 100ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cd-R-3'">Printing inks for the application of enamels on borosilicate glass containing cadmium exceeding 100ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cd-R-4'">Cadmium exceeding in homogeneous material in alloys as electrical/mechanical solder joints to electrical conductors located directly on the voice coil in transducers used in high-powered loudspeakers with sound pressure levels of 100 dB (A) and more.</xsl:if>
				<xsl:if test="$id='Cd-R-5'">Cadmium, exceeding 100ppm in homogeneous material, in photoresistors for optocouplers applied in professional audio equipment until 31 December 2009.</xsl:if>
				<xsl:if test="$id='Cd-R-6'">Cadmium, exceeding 100ppm in homogeneous material, in cadmium oxide in thick film pastes used on aluminium bonded beryllium oxid.</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">Containing 100ppm or less of cadmium in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cr-E-1'">Anti-corrosion coatings containing hexavalent chromium exceeding 1000ppm in homogeneous material.(Other than Cr-E-2)</xsl:if>
				<xsl:if test="$id='Cr-E-2'">Corrosion preventive coating related to bolt and nut assembles for chassis applications, containing hexavalent chromium exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cr-E-3'">(Absorption) refrigerators in motor caravans containig hexavalent chromium exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cr-J-0'">Cases containing intentionally added hexavalent chromium exceeding 1000ppm in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Cr-J-99'">Containing hexavalent chromium above 1000ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cr-R-0'">Cases containing 1000ppm or less of intentionally added hexavalent chromium in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Cr-R-1'">Hexavalent chromium exceeding 1000ppm in homogeneous material, for the prevention of corrosion of carbon steel cooling system in absorption refrigerators.</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">Containing 1000ppm or less of hexavalent chromium in homogeneous material. : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Hg-B-1'">Batteries containing mercury exceeding 1ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Hg-E-1'">Discharge lamps, instrument panel displays containing mercury exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Hg-J-0'">Cases containing intentionally added mercury above 1000ppm in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Hg-J-99'">Containing mercury above 1000ppm in homogeneous material : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Hg-R-0'">Cases containing 1000ppm or less of intentionally added mercury in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Hg-R-1'">Mercury in compact fluorescent lamps not exceeding 5mg per lamp.</xsl:if>
				<xsl:if test="$id='Hg-R-2'">Mercury in straight fluorescent lamps for general purposes not exceeding:\n - halophosphate 10 mg\n - triphosphate with normal lifetime 5 mg\n - triphosphate with long lifetime 8 mg</xsl:if>
				<xsl:if test="$id='Hg-R-3'">Straight fluorescent lamps for special purposes, containing murcury exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Hg-R-4'">Containing mercury exceeding 1000ppm in homogeneous material, in other lamps not specifically mentioned in the Annex of Directive 2002/95/EC.</xsl:if>
				<xsl:if test="$id='Hg-R-5'">Mercury, exceeding 1000ppm in homogeneous material, used as a cathode sputtering inhibitor in DC plasma displays with a content up to 30 mg per display until 1 July 2010. </xsl:if>
				<xsl:if test="$id='Hg-RE-98'">Containing 1000ppm or less of mercury in homogeneous material. : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Ni-J-1'">Cases containing intentionally added nickel, for use consisting of long-term contact with skin.</xsl:if>
				<xsl:if test="$id='Ni-J-98'">Cases containing nickel other than Ni-J-1.</xsl:if>
				<xsl:if test="$id='Pb-B-1'">Batteries containing lead exceeding 40ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Pb-E-1'">Aluminum for machining purposes with a lead content up to 1.5% by weight</xsl:if>
				<xsl:if test="$id='Pb-E-10'">Valve seats containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-11'">Pyrotechnic initiators containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-2'">Aluminum for mechanical purposes with a lead content, exceeding 1000ppm in homogeneous material, up to 0.4% by weight</xsl:if>
				<xsl:if test="$id='Pb-E-3'">Lead, exceeding 1000ppm in homogeneous material, in bearing shells and bushes (alloy).</xsl:if>
				<xsl:if test="$id='Pb-E-4'">Batteries containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-5'">Vibration dampers containing lead, exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-6'">Lead, exceeding 1000ppm in homogeneous material, in vulcanising agents and stabilisers for elastomers in fluid handling and powertrain applications containing up to 0.5% lead by weight.</xsl:if>
				<xsl:if test="$id='Pb-E-7'">Lead, exceeding 1000ppm in homogeneous material, in bonding agents for elastomers in powertrain applications containing up to 0.5% lead by weight.</xsl:if>
				<xsl:if test="$id='Pb-E-8'">Solder containig lead, exceeding 1000ppm in homogeneous material, for electronic boards and other electric parts.</xsl:if>
				<xsl:if test="$id='Pb-J-0'">Cases containing intentionally added lead above 1000ppm in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Pb-J-1'">Containing lead above 300ppm in homogeneous material , for use in vinyl chloride wires.</xsl:if>
				<xsl:if test="$id='Pb-J-2'">Use in products for children 12 years old and younger, containing lead exceeding 300ppm per surveying unit.</xsl:if>
				<xsl:if test="$id='Pb-J-3'">Containing above 0.009% of lead per surface treatment layer such as coating in parts/material used in toys.</xsl:if>
				<xsl:if test="$id='Pb-J-99'">Containing lead above 1000ppm in homogeneous material : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Pb-R-0'">Cases containing 1000ppm or less of intentionally added lead in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Pb-R-1'">Aluminum materials containing 0.4% or less, exceeding 1000ppm in homogeneous material, of lead by weight</xsl:if>
				<xsl:if test="$id='Pb-R-10'">Lead, exceeding 1000ppm in homogeneous material, in linear incandescent lamps with silicate coated tubes.</xsl:if>
				<xsl:if test="$id='Pb-R-11'">Lead halide, containig lead exceeding 1000ppm in homogeneous material, as radiant agent in High Intensity Discharge(HID) lamps used for professinal reprography applications.</xsl:if>
				<xsl:if test="$id='Pb-R-12'">Lead, exceeding 1000ppm in homogeneous material, as activator in the fluorescent powder (1% lead by weight or less) of discharge lamps when used as sun tanning lamps containing phosphors such as BSP (BaSi2O5:Pb) as well as when used as speciality lamps fo</xsl:if>
				<xsl:if test="$id='Pb-R-13'">Lead, exceeding 1000ppm in homogeneous material, with PbBiSn-Hg and PbInSn-Hg in specific compositions as main amalgam and with PbSn-Hg as auxiliary amalgam in very compact Energy Saving lamps (ESL).</xsl:if>
				<xsl:if test="$id='Pb-R-14'">Lead, exceeding 1000ppm in homogeneous material, in lead oxide in glass used for bonding front and rear substrates of flat fluorescent lamps used for Liquid Crystal Displays (LCD).</xsl:if>
				<xsl:if test="$id='Pb-R-15'">Lead, exceeding 1000ppm in homogeneous material, in printing inks for the application of enamels on borosilicate glass.</xsl:if>
				<xsl:if test="$id='Pb-R-16'">Lead, exceeding 1000ppm in homogeneous material, as impurity in RIG (rare earth iron garnet) Faraday rotators used for fibre optic communications systems until 31 December 2009.</xsl:if>
				<xsl:if test="$id='Pb-R-17'">Lead, exceeding 1000ppm in homogeneous material, in finishes of fine pitch components other than connectors with a pitch of 0.65 mm or less with NiFe lead frames and lead in finishes of fine pitch components other than connectors with a pitch of 0.65 mm o</xsl:if>
				<xsl:if test="$id='Pb-R-18'">Lead, exceeding 1000ppm in homogeneous material, in solders for the soldering to machined through hole discoidal and planar array ceramic multilayer capacitors.</xsl:if>
				<xsl:if test="$id='Pb-R-19'">Lead, exceeding 1000ppm in homogeneous material, in lead oxide in plasma display panels (PDP) and surface conduction electron emitter displays (SED) used in structural elements; notably in the front and rear glass dielectric layer, the bus electrode, the </xsl:if>
				<xsl:if test="$id='Pb-R-2'">Lead in high-melting point solder (lead alloy containing above 85% of lead by weight)</xsl:if>
				<xsl:if test="$id='Pb-R-20'">Lead, exceeding 1000ppm in homogeneous material, in lead oxide in the glass envelope of Black Light Blue (BLB) lamps.</xsl:if>
				<xsl:if test="$id='Pb-R-21'">Lead, exceeding 1000ppm in homogeneous material, in lead alloys as solder for transducers used in high-powered (designated to operate for several hours at acoustic power levels of 125 dB SPL and above) loudspeakers.</xsl:if>
				<xsl:if test="$id='Pb-R-22'">Lead, exceeding 1000ppm in homogeneous material, in lead bound in crystal glass as defined in Annex I (Categories 1,2,3 and 4) of Council Directive 69/493/EEC.</xsl:if>
				<xsl:if test="$id='Pb-R-23'">Lead, exceeding 1000ppm in homogeneous material, in soldering materials in mercury free flat fluorescent lamps (which e.g. are used for liquid crystal displays, design or industrial lighting).</xsl:if>
				<xsl:if test="$id='Pb-R-24'">Lead, exceeding 1000ppm in homogeneous material, in lead oxide in seal frit used for making window assemblies for Argon and Krypton laser tubes.</xsl:if>
				<xsl:if test="$id='Pb-R-25'">Lead, exceeding 1000ppm in homogeneous material, in solders for the soldering of thin copper wires of 100 μm diameter and less in power transformers.</xsl:if>
				<xsl:if test="$id='Pb-R-26'">Lead, exceeding 1000ppm in homogeneous material, in cermet-based trimmer potentiometer elements.</xsl:if>
				<xsl:if test="$id='Pb-R-27'">Lead, exceeding 1000ppm in homogeneous material, in the plating layer of high voltage diodes on the basis of a zinc borate glass body.</xsl:if>
				<xsl:if test="$id='Pb-R-3'">Lead, exceeding 1000ppm in homogeneous material, in soldering for servers, storage and storage array systems, and network infrastructure equipment for switching, signaling, transmission and network management for telecommunication</xsl:if>
				<xsl:if test="$id='Pb-R-4'">Compliant pins/connectors containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-R-5'">Coating material for thermal conduction module C-rings, containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-R-6'">Optical glass and filter glass containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-R-7'">Solder consisting of more than two types of elements for connecting microprocessor pins and package containing less than 85wt% and more than 80wt% of lead.</xsl:if>
				<xsl:if test="$id='Pb-R-8'">Lead, exceeding 1000ppm in homogeneous material, in solder for connecting semiconductor dies and carriers in flip chip IC packages</xsl:if>
				<xsl:if test="$id='Pb-R-9'">Lead, exceeding 1000ppm in homogeneous material, in Lead-bronze bearing shells and bushes.</xsl:if>
				<xsl:if test="$id='Pb-RE-1'">Lead exceeding 1000ppm in homogeneous material in glass used in CRT, electronic parts, and fluorescent tubes</xsl:if>
				<xsl:if test="$id='Pb-RE-2'">Lead exceeding 1000ppm in homogeneous material in electronic ceramic parts</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">Steel materials containing 0.35% or less ,but exceeding 1000ppm in homogeneous material, of lead by weight (including zinc plating, free-machining steel)</xsl:if>
				<xsl:if test="$id='Pb-RE-4'">Copper alloy containing 4% or less, exceeding 1000ppm in homogeneous material, of lead by weight (e.g. brass, phosphor bronze)</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">Containing 1000ppm or less of lead in homogeneous material : Impurities/recycled materials/contamination.</xsl:if>
			</xsl:if>
			<xsl:if test="$ver=4.1">
				<xsl:if test="$id='A17-J-4'">Cases containing intentionally added TBTO.</xsl:if>
				<xsl:if test="$id='A17-J-97'">Cases containing up to 0.1% beryllium oxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A17-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='A19-J-0'">Cases containing above 0.1% beryllium oxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A19-J-98'">Cases containing up to 0.1% beryllium oxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A23-J-0'">In cases where tin content in homogeneous material is over 0.1% by weight</xsl:if>
				<xsl:if test="$id='A23-J-98'">In cases where tin content in homogeneous material is 0.1% or less by weight</xsl:if>
				<xsl:if test="$id='A24-J-0'">・A cloth/leather part included in a surveyed product\n・In cases where tin content in homogeneous material is over 0.1% by weight with a dual humoral room temperature curing molding kit (RTV-2 sealant molding kit) in use</xsl:if>
				<xsl:if test="$id='A24-J-1'">In cases where a product has an unclear purpose and DOT is intentionally added</xsl:if>
				<xsl:if test="$id='A24-J-98'">In cases where any dioctyl tin compound other than A24-J-0 and A24-J-1 is contained</xsl:if>
				<xsl:if test="$id='A28-J-4'">In cases where tin content in homogeneous material is over 0.1% by weight</xsl:if>
				<xsl:if test="$id='A28-J-97'">In cases where tin content in homogeneous material is 0.1% or less by weight</xsl:if>
				<xsl:if test="$id='B02-J-0'">Cases containing intentionally added PBB exceeding 1000ppm in homogeneous material. </xsl:if>
				<xsl:if test="$id='B02-J-99'">Containing PBB above 1000ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B02-R-0'">Cases containing 1000ppm or less of intentionally added PBB in homogeneous material. </xsl:if>
				<xsl:if test="$id='B02-R-98'">Containing 1000ppm or less of PBB in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B03-J-0'">Cases containing intentionally added PBDE exceeding 1000ppm in homogeneous material. </xsl:if>
				<xsl:if test="$id='B03-J-99'">Containing PBDE above 1000ppm in homogeneous material. :Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B03-R-0'">Cases containing 1000ppm or less of intentionally added PBDE in homogeneous material. </xsl:if>
				<xsl:if test="$id='B03-R-98'">Containing 1000ppm or less of PBDE in homogeneous material. :Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B05-J-1'">Cases containing intentionally added PCBs and specific substitutes.</xsl:if>
				<xsl:if test="$id='B05-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B06-J-1'">Cases containing intentionally added polychlorinated naphthalenes.</xsl:if>
				<xsl:if test="$id='B06-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B07-J-1'">Cases containing above 0.1% PVC by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B07-J-98'">Cases containing up to 0.1% PVC by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B08-J-2'">In cases where a component includes a plastic material of 25g or more while the content in the plastic material exceeds 0.1% weight \n(excluding printed wiring board assemblies )</xsl:if>
				<xsl:if test="$id='B08-J-3'">In cases where bromine element is used for a printed wiring board laminate and its content is 0.09% or more by weight in the survey unit</xsl:if>
				<xsl:if test="$id='B08-J-4'">In cases where a product has an unclear purpose and Brominated flame retardants is intentionally added</xsl:if>
				<xsl:if test="$id='B08-J-97'">In cases where any brominated flame retardant other than B08-J-2, B08-J-3 or B03-J-4 is contained</xsl:if>
				<xsl:if test="$id='B10-J-0'">Cases containing intentionally added fluorinated greenhouse gases.</xsl:if>
				<xsl:if test="$id='B10-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B12-J-0'">Cases containing above 6ppb perchlorates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B12-J-98'">Cases containing up to 6ppb perchlorates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B13-J-0'">PFOS intentionally added to reflex mirror coating and photoresists for the photolithography process.</xsl:if>
				<xsl:if test="$id='B13-J-1'">PFOS intentionally added to photo coating used in printing plates, film, and documents.</xsl:if>
				<xsl:if test="$id='B13-J-2'">PFOS intentionally added to mist suppressants used in chrome plating, chrome oxidation processing, and reverse etching.</xsl:if>
				<xsl:if test="$id='B13-J-3'">PFOS intentionally added to mist suppressants used in electroless nickel-polytetrafluoroethylene (PTFE) plating.</xsl:if>
				<xsl:if test="$id='B13-J-4'">PFOS intentionally added to mist suppressants used in etching of plastic base materials before metallic coating.</xsl:if>
				<xsl:if test="$id='B13-J-5'">Cases intentionally containing above 0.005wt% of PFOS as a structural component of substances and compounds, excluding uses for B13-J-0, 1, 2, 3, and 4.</xsl:if>
				<xsl:if test="$id='B13-J-6'">Cases intentionally containing above 0.1wt% of PFOS in homogeneous material as a constituent of moldings, \nexcluding uses for B13-J-0, 1, 2, 3, and 4; for textiles and other covered materials, cases intentionally \ncontaining above 1μg/m2 of PFOS in lag, excluding uses for B13-J-0, 1, 2, 3, and 4.</xsl:if>
				<xsl:if test="$id='B13-J-7'">Cases intentionally containing PFOS, excluding specified uses (B13-J-0, 1, 2, 3, 4, 5, and 6).</xsl:if>
				<xsl:if test="$id='B13-J-92'">Cases containing PFOS as impurities in reflex mirror coating or photoresists for the photolithography process.</xsl:if>
				<xsl:if test="$id='B13-J-93'">Cases containing PFOS as impurities in photo coating used in printing plates, film, and documents.</xsl:if>
				<xsl:if test="$id='B13-J-94'">Cases containing PFOS as impurities in mist suppressants used in chrome plating, chrome oxidation processing, and reverse etching.</xsl:if>
				<xsl:if test="$id='B13-J-95'">Cases containing PFOS as impurities in mist suppressants used in electroless nickel-polytetrafluoroethylene (PTFE) plating.</xsl:if>
				<xsl:if test="$id='B13-J-96'">Cases containing PFOS as impurities in mist suppressants used in etching of plastic base materials before metallic coating.</xsl:if>
				<xsl:if test="$id='B13-J-97'">Cases containing above 0.005wt% of PFOS as impurities as a structural component of substances and compounds, excluding uses for B13-J-92, 93, 94, 95, and 96.</xsl:if>
				<xsl:if test="$id='B13-J-98'">Cases containing impurities of PFOS, excluding specified uses (B13-J-92, 93, 94, 95, 96, 97, and 99).</xsl:if>
				<xsl:if test="$id='B13-J-99'">Cases containing above 0.1wt% of PFOS as impurities in homogeneous material as a constituent of moldings, \nexcluding uses for B13-J-92, 93, 94, 95, and 96; for textiles and other covered materials, cases containing above 1μg/m2 of PFOS as impurities in lag, excluding uses for B13-J-92, 93, 94, 95, and 96.</xsl:if>
				<xsl:if test="$id='B15-J-1'">Cases containing intentionally added PCTs.</xsl:if>
				<xsl:if test="$id='B15-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C01-J-1'">Cases containing intentionally added asbestos.</xsl:if>
				<xsl:if test="$id='C01-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C02-J-2'">Leather products and fiber products used with the intention of continued contact with the human body containing azocolourants and azodyes, which form 0.003% of certain aromatic amines by weight.(used for a part including leather and/or cloth)</xsl:if>
				<xsl:if test="$id='C02-J-3'">In cases where a product has an unclear purpose and \"Azocolourants and azodyes which form certain aromatic amines\" is intentionally added</xsl:if>
				<xsl:if test="$id='C02-J-98'">Cases containing azocolourants and azodyes which form certain aromatic amines other than C02-J-2 or C02-J-3.</xsl:if>
				<xsl:if test="$id='C04-J-1'">Cases containing intentionally added ozone depleting substances.</xsl:if>
				<xsl:if test="$id='C04-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C06-J-1'">Cases containing intentionally added radioactive substances.</xsl:if>
				<xsl:if test="$id='C06-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C07-J-0'">Cases containing above 0.0075% formaldehyde by weight in textile products.</xsl:if>
				<xsl:if test="$id='C07-J-2'">In cases where a surveyed product includes some wood and formaldehyde is intentionally added to the wood</xsl:if>
				<xsl:if test="$id='C07-J-97'">In cases where formaldehyde other than C07-J-0 or C07-J-2 is contained</xsl:if>
				<xsl:if test="$id='C08-J-0'">Cases containing intentionally added phenol,2-(2H-benzotriazol-2-yl)-4,6-bis(1,1-dimethylethyl).</xsl:if>
				<xsl:if test="$id='C08-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C09-J-1'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for use as a toy or child care article as the total of BBP, DBP and DEHP.</xsl:if>
				<xsl:if test="$id='C09-J-2'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for a product with an unclear purpose as the total of BBP, DBP and DEHP.</xsl:if>
				<xsl:if test="$id='C09-J-97'">Cases containing 0.1wt% or less of plasticized material (homogeneous material) as the total of BBP, DBP and DEHP, for uses other than C09-J-1 and C09-J-2.</xsl:if>
				<xsl:if test="$id='C10-J-0'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for use as a children's toy that can be placed in a child's mouth or child care article as the total of DIDP, DINP and DNOP.</xsl:if>
				<xsl:if test="$id='C10-J-1'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for a product with an unclear purpose as the total of DIDP, DINP and DNOP.</xsl:if>
				<xsl:if test="$id='C10-J-98'">Cases containing 0.1wt% or less of plasticized material (homogeneous material) as the total of DIDP, DINP and DNOP, for uses other than C10-J-0 and C10-J-1.</xsl:if>
				<xsl:if test="$id='C11-J-0'">In cases where the content in homogeneous material is over 0.00001% by weight</xsl:if>
				<xsl:if test="$id='C11-J-98'">In cases where the content in homogeneous material is 0.00001% or less by weight</xsl:if>
				<xsl:if test="$id='Cd-B-1'">Batteries containing cadmium exceeding 5ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Cd-E-2'">Batteries for electric vehicles containing cadmium exceeding 100ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cd-J-0'">Cases containing intentionally added cadmium exceeding 100ppm in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Cd-J-99'">Containing cadmium above 100pmm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cd-R-0'">Cases containing 100ppm or less of intentionally added cadmium in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Cd-R-10'">Cadmium in a color conversion II-VI family LED used for solid-state lighting or a display system that exceeds 100ppm in homogeneous material (\"cadmium per square millimeter in a light emission area\" &#60; 10μg Cd)</xsl:if>
				<xsl:if test="$id='Cd-R-3'">Printing inks for the application of enamels on glasses, such as borosilicate and soda lime glasses containing cadmium exceeding 100ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cd-R-4'">Cadmium exceeding in homogeneous material in alloys as electrical/mechanical solder joints to electrical conductors located directly on the voice coil in transducers used in high-powered loudspeakers with sound pressure levels of 100 dB (A) and more.</xsl:if>
				<xsl:if test="$id='Cd-R-6'">Cadmium, exceeding 100ppm in homogeneous material, in cadmium oxide in thick film pastes used on aluminium bonded beryllium oxide.</xsl:if>
				<xsl:if test="$id='Cd-R-7'">Cadmium in a thermal cutoff of a one shot pellet type that exceeds 100ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-R-8'">Cadmium in an electric point that exceeds 100ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-R-9'">Cadmium in glass used for a filter glass or reflectance standards that exceeds 100ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">Containing 100ppm or less of cadmium in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cr-E-1'">Anti-corrosion coatings containing hexavalent chromium exceeding 1000ppm in homogeneous material.(Other than below Cr-E-2)</xsl:if>
				<xsl:if test="$id='Cr-E-2'">Corrosion preventive coating related to bolt and nut assembles for chassis applications, containing hexavalent chromium exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cr-E-3'">(Absorption) refrigerators in motor caravans containing hexavalent chromium exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cr-J-0'">Cases containing intentionally added hexavalent chromium exceeding 1000ppm in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Cr-J-99'">Containing hexavalent chromium above 1000ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cr-R-0'">Cases containing 1000ppm or less of intentionally added hexavalent chromium in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Cr-R-2'">Hexavalent chromium up to 0.75% by weight as antirust for a carbon steel cooling system in an absorption refrigerator that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">Containing 1000ppm or less of hexavalent chromium in homogeneous material. : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Hg-B-1'">Batteries containing mercury exceeding 1ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Hg-E-1'">Mercury in a discharge lamp or instrument panel display</xsl:if>
				<xsl:if test="$id='Hg-J-0'">Cases containing intentionally added mercury above 1000ppm in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Hg-J-99'">Containing mercury above 1000ppm in homogeneous material : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Hg-R-0'">Cases containing 1000ppm or less of intentionally added mercury in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Hg-R-10'">Mercury in a low-pressure discharge lamp (each individual lamp) other than Hg-R-6, Hg-R-7, Hg-R-8, or Hg-R-9</xsl:if>
				<xsl:if test="$id='Hg-R-11'">Mercury in an extra-high voltage sodium (vapor) lamp for general illumination with an improved color rendering index over 60</xsl:if>
				<xsl:if test="$id='Hg-R-12'">Mercury in an extra-high voltage sodium (vapor) lamp for general illumination of any other type (Hg-R-11)</xsl:if>
				<xsl:if test="$id='Hg-R-13'">Mercury in a high-pressure mercury vapor lamp (HPMV)</xsl:if>
				<xsl:if test="$id='Hg-R-14'">Mercury in a metal halide lamp (MH)</xsl:if>
				<xsl:if test="$id='Hg-R-15'">Mercury in a vapor lamp for a specific purpose or of any other type that is not specifically mentioned in the Annex of Directive 2002/95/EC (or in the classification of intended use of mercury)</xsl:if>
				<xsl:if test="$id='Hg-R-6'">Mercury in a single-capped fluorescent lamp that does not exceed the following limitations (per burner):\n(a) For general illumination less than 30W: 5mg\n(b) For general illumination of 30W or higher and less than 50W: 5 mg\n(c) For general illumination of 50W or higher and less than 150W: 5 mg\n(d) For general illumination of 150W or higher: 15mg\n(e) Having a circular or square structure, 17mm or less in tube diameter, and for general illumination: 7mg\n(f) For a specific use: 5 mg</xsl:if>
				<xsl:if test="$id='Hg-R-7'">Mercury in a double-capped strip fluorescent lamp (in each individual lamp) for general purposes that does not exceed the following limitations:\n(a) A three-wavelength phosphor of less than 9mm in tube diameter (e.g., T2) with normal lifetime: 5mg\n(b) A three-wavelength phosphor of 9mm or larger and of 17mm or less in tube diameter (e.g., T5) with normal lifetime: 5mg\n(c) A three-wavelength phosphor of over 17mm and 28mm or less in tube diameter (e.g., T8) with normal lifetime: 5mg\n(d) A three-wavelength phosphor of over 28mm in tube diameter (e.g., T12) with normal lifetime: 5mg\n(e) A three-wavelength phosphor with long lifetime (> 25,000 h): 8mg</xsl:if>
				<xsl:if test="$id='Hg-R-8'">Mercury in a double-capped fluorescent lamp (in each individual lamp) not for general purposes under the following conditions:\n(a) A linear white lamp of 28mm in tube diameter (e.g., T10 and T12): mercury that does not exceed 10mg\n(b) Nonlinear white lamps of all shapes: mercury that does not exceed 15mg\n(c) Mercury contained in a nonlinear three-wavelength phosphor lamp of 17mm or larger (e.g., T9)\n(d) Mercury contained in a lamp for any other general illumination or specific purposes (e.g., induction lamps)</xsl:if>
				<xsl:if test="$id='Hg-R-9'">Mercury in a cold cathode ray fluorescent lamp or external electrode fluorescent lamp (CCFL or EEFL) for a specific purpose</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">Containing 1000ppm or less of mercury in homogeneous material. : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='J01-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='J01-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='Ni-J-1'">Cases containing intentionally added nickel, for use consisting of long-term contact with skin.</xsl:if>
				<xsl:if test="$id='Ni-J-2'">In cases where a product has an unclear purpose and nickel is intentionally added</xsl:if>
				<xsl:if test="$id='Ni-J-98'">Cases containing nickel other than Ni-J-1and Ni-J-2.(a product not staying in contact with skin for a considerable duration of time or containing impurities)</xsl:if>
				<xsl:if test="$id='Pb-B-1'">Batteries containing lead exceeding 40ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Pb-E-1'">Aluminum with a lead content up to 1.5% by weight</xsl:if>
				<xsl:if test="$id='Pb-E-10'">Valve seats containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-11'">Pyrotechnic initiators containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-12'">Lead in solder for electric use that exceeds 1000ppm in homogeneous material (excluding solder on electronic circuit boards and glass)</xsl:if>
				<xsl:if test="$id='Pb-E-13'">Lead in solder for installing an electric or electronic component on an electronic circuit board or for a component terminal that exceeds 1000ppm in homogeneous material (excluding electrolysis aluminum capacitors)</xsl:if>
				<xsl:if test="$id='Pb-E-14'">Lead on a terminal of an electrolysis aluminum capacitor that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-15'">Lead for soldering an air mass sensor on a glass surface that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-16'">Lead in solder for attaching a heat spreader and heat sink of a power semiconductor  that exceeds 1000ppm in homogeneous material (The chip size is 1cm2 at least. The electric current density is 1A/mm2 at least.)</xsl:if>
				<xsl:if test="$id='Pb-E-17'">Lead in solder for electric glazing on a glass surface that exceeds 1000ppm in homogeneous material (excluding solder for laminate glazing)</xsl:if>
				<xsl:if test="$id='Pb-E-18'">Lead in solder used for laminate glazing that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-3'">Lead, exceeding 1000ppm in homogeneous material, in bearing shells and bushes (alloy).</xsl:if>
				<xsl:if test="$id='Pb-E-4'">Batteries containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-5'">Vibration dampers containing lead, exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-6'">Lead, exceeding 1000ppm in homogeneous material, in vulcanising agents and stabilisers for elastomers in fluid handling and powertrain applications containing up to 0.5% lead by weight.</xsl:if>
				<xsl:if test="$id='Pb-E-7'">Lead, exceeding 1000ppm in homogeneous material, in bonding agents for elastomers in powertrain applications containing up to 0.5% lead by weight.</xsl:if>
				<xsl:if test="$id='Pb-J-0'">Cases containing intentionally added lead above 1000ppm in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Pb-J-1'">Containing lead above 300ppm in homogeneous material , for use in vinyl chloride wires.</xsl:if>
				<xsl:if test="$id='Pb-J-2'">Use in products for children 12 years old and younger, containing lead exceeding 300ppm per surveying unit.\n(Select this item only when the surveyor states that your product is used for a surveyor's product for children of twelve years of age or under.)</xsl:if>
				<xsl:if test="$id='Pb-J-3'">Containing above 0.009% of lead per surface treatment layer such as coating in parts/material used in toys.\n(Select this item only when the surveyor states that your product is used for a toy.)</xsl:if>
				<xsl:if test="$id='Pb-J-99'">Containing lead above 1000ppm in homogeneous material : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Pb-R-0'">Cases containing 1000ppm or less of intentionally added lead in homogeneous material, excluding specified uses. </xsl:if>
				<xsl:if test="$id='Pb-R-1'">Aluminum materials containing 0.4% or less, exceeding 1000ppm in homogeneous material, of lead by weight</xsl:if>
				<xsl:if test="$id='Pb-R-10'">Lead, exceeding 1000ppm in homogeneous material, in linear incandescent lamps with silicate coated tubes.</xsl:if>
				<xsl:if test="$id='Pb-R-11'">Lead halide, containing lead exceeding 1000ppm in homogeneous material, as radiant agent in High Intensity Discharge(HID) lamps used for professional reprography applications.</xsl:if>
				<xsl:if test="$id='Pb-R-13'">Lead, exceeding 1000ppm in homogeneous material, with PbBiSn-Hg and PbInSn-Hg in specific compositions as main amalgam and with PbSn-Hg as auxiliary amalgam in very compact Energy Saving lamps (ESL).</xsl:if>
				<xsl:if test="$id='Pb-R-14'">Lead, exceeding 1000ppm in homogeneous material, in lead oxide in glass used for bonding front and rear substrates of flat fluorescent lamps used for Liquid Crystal Displays (LCD).</xsl:if>
				<xsl:if test="$id='Pb-R-15'">Lead, exceeding 1000ppm in homogeneous material, in printing inks for the application of enamels on glasses, such as borosilicate and soda lime glasses</xsl:if>
				<xsl:if test="$id='Pb-R-17'">Lead contained in finishing agents of 0.65 mm or finer pitch components other than connectors, exceeding 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-18'">Lead, exceeding 1000ppm in homogeneous material, in solders for the soldering to machined through hole discoidal and planar array ceramic multilayer capacitors.</xsl:if>
				<xsl:if test="$id='Pb-R-2'">Lead in high-melting point solder (llead-based alloys containing 85 % by weight or more lead)</xsl:if>
				<xsl:if test="$id='Pb-R-20'">Lead, exceeding 1000ppm in homogeneous material, in lead oxide in the glass envelope of Black Light Blue (BLB) lamps.</xsl:if>
				<xsl:if test="$id='Pb-R-21'">Lead, exceeding 1000ppm in homogeneous material, in lead alloys as solder for transducers used in high-powered (designated to operate for several hours at acoustic power levels of 125 dB SPL and above) loudspeakers.</xsl:if>
				<xsl:if test="$id='Pb-R-22'">Lead, exceeding 1000ppm in homogeneous material, in lead bound in crystal glass as defined in Annex I (Categories 1,2,3 and 4) of Council Directive 69/493/EEC.</xsl:if>
				<xsl:if test="$id='Pb-R-23'">Lead, exceeding 1000ppm in homogeneous material, in soldering materials in mercury free flat fluorescent lamps (which e.g. are used for liquid crystal displays, design or industrial lighting).</xsl:if>
				<xsl:if test="$id='Pb-R-24'">Lead, exceeding 1000ppm in homogeneous material, in lead oxide in seal frit used for making window assemblies for Argon and Krypton laser tubes.</xsl:if>
				<xsl:if test="$id='Pb-R-25'">Lead, exceeding 1000ppm in homogeneous material, in solders for the soldering of thin copper wires of 100 μm diameter and less in power transformers.</xsl:if>
				<xsl:if test="$id='Pb-R-26'">Lead, exceeding 1000ppm in homogeneous material, in cermet-based trimmer potentiometer elements.</xsl:if>
				<xsl:if test="$id='Pb-R-27'">Lead, exceeding 1000ppm in homogeneous material, in the plating layer of high voltage diodes on the basis of a zinc borate glass body.</xsl:if>
				<xsl:if test="$id='Pb-R-3'">Lead, exceeding 1000ppm in homogeneous material, in soldering for servers, storage and storage array systems, and network infrastructure equipment for switching, signaling, transmission and network management for telecommunication</xsl:if>
				<xsl:if test="$id='Pb-R-30'">Lead in white glass used for an optical purpose containing lead that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-31'">Lead in glass used for a filter glass or reflectance standards containing lead that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-32'">Lead in a shell (exterior casing) or bushing (a cylindrical component fitted inside a hole) of a bearing for a compressor containing coolant for heating, ventilation, air-conditioning, refrigeration, chilling, and HVACR, exceeding 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-33'">Lead (lead of 1% or less by weight) as activator in fluorescent powder of a discharge lamp used as a suntan lamp containing phosphor such as BPS (BaSi2O5:Pb) that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-34'">Lead, exceeding 1000ppm in homogeneous material, as activator in the fluorescent powder (1% lead by weight or less) of discharge lamps when used as sun tanning lamps containing phosphors such as BSP (BaSi2O5:Pb) as well as when used as speciality lamps for diazo-printing reprography, lithography, insect traps, photochemical and curing processes containing phosphors such as SMS ((Sr, Ba)2MgSi2O7:Pb).</xsl:if>
				<xsl:if test="$id='Pb-R-35'">Lead oxide, exceeding 1000ppm per unit of homogeneous material, used for structural elements on the surfaces of surface conduction electron emitter displays (SED), notably seal frit and frit ring.</xsl:if>
				<xsl:if test="$id='Pb-R-5'">Coating material for thermal conduction module C-rings, containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-R-7'">Solder consisting of more than two types of elements for connecting microprocessor pins and package containing less than 85wt% and more than 80wt% of lead.</xsl:if>
				<xsl:if test="$id='Pb-R-8'">Lead, exceeding 1000ppm in homogeneous material, in solder for connecting semiconductor dies and carriers in flip chip IC packages</xsl:if>
				<xsl:if test="$id='Pb-RE-10'">Lead used for a C-press compliant pin connector/system that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-11'">Lead used for a compliant pin connector/system other than C-press that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">Steel materials containing 0.35% or less ,but exceeding 1000ppm in homogeneous material, of lead by weight (including zinc plating, free-machining steel)</xsl:if>
				<xsl:if test="$id='Pb-RE-4'">Copper alloy containing 4% or less, exceeding 1000ppm in homogeneous material, of lead by weight (e.g. brass, phosphor bronze)</xsl:if>
				<xsl:if test="$id='Pb-RE-5'">Lead in a cathode ray tube that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-6'">Lead up to 0.2% by weight in glass of a fluorescent tube that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-7'">An electricity or electronic component of other than dielectric ceramics in a capacitor that contains lead in glass, ceramic, or glass/ceramic matrix compounds, exceeding 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-8'">Lead in a dielectric ceramic used in a capacitor with rated voltage of 125V AC or 250V DC or larger that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-9'">Lead in a dielectric ceramic used in a capacitor with rated voltage less than 125V AC or 250V DC that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">Containing 1000ppm or less of lead in homogeneous material : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='A17-J-3'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A20-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A21-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A22-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A25-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A26-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A27-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B09-J-1'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B11-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B16-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C12-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C13-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C14-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C15-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C16-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C17-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C18-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C19-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C20-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A20-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A21-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A22-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A25-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A26-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A27-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B09-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B11-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B16-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C12-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C13-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C14-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C15-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C16-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C17-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C18-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C19-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C20-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
			</xsl:if>
			<xsl:if test="$ver=4.2">
				<xsl:if test="$id='J01-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='J01-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='Cd-R-3'">Printing inks for the application of enamels on glasses, such as borosilicate and soda lime glasses containing cadmium exceeding 100ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cd-R-4'">Cadmium exceeding 100ppm in homogeneous material in alloys as electrical/mechanical solder joints to electrical conductors located directly on the voice coil in transducers used in high-powered loudspeakers with sound pressure levels of 100 dB (A) and more.</xsl:if>
				<xsl:if test="$id='Cd-R-6'">Cadmium, exceeding 100ppm in homogeneous material, in cadmium oxide in thick film pastes used on aluminium bonded beryllium oxide.</xsl:if>
				<xsl:if test="$id='Cd-R-7'">Cadmium in a thermal cutoff of a one shot pellet type that exceeds 100ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-R-8'">Cadmium in an electric point that exceeds 100ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-R-9'">Cadmium in glass used for a filter glass or reflectance standards that exceeds 100ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-R-10'">Cadmium in a color conversion II-VI family LED used for solid-state lighting or a display system that exceeds 100ppm in homogeneous material ("cadmium per square millimeter in a light emission area" ＜ 10μg Cd)</xsl:if>
				<xsl:if test="$id='Cd-R-11'">Cadmium in photoresistor of an analog optical coupler used for professional audio equipment that exceeds 100 ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-E-2'">Batteries for electric vehicles containing cadmium exceeding 100ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cd-B-2'">Batteries containing cadmium exceeding 10ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Cd-J-0'">Cases containing intentionally added cadmium exceeding 100ppm in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Cd-J-99'">Containing cadmium above 100ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cd-R-0'">Cases containing 100ppm or less of intentionally added cadmium in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">Containing 100ppm or less of cadmium in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cr-R-2'">Hexavalent chromium up to 0.75% by weight as antirust for a carbon steel cooling system in an absorption refrigerator that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cr-E-1'">Anti-corrosion coatings containing hexavalent chromium exceeding 1000ppm in homogeneous material.(Other than below Cr-E-2)</xsl:if>
				<xsl:if test="$id='Cr-E-2'">Corrosion preventive coating related to bolt and nut assembles for chassis applications, containing hexavalent chromium exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cr-E-3'">(Absorption) refrigerators in motor caravans containing hexavalent chromium up to 0.75% by weight, exceeding 1000 ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cr-J-0'">Cases containing intentionally added hexavalent chromium exceeding 1000ppm in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Cr-J-99'">Containing hexavalent chromium above 1000ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cr-R-0'">Cases containing 1000ppm or less of intentionally added hexavalent chromium in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">Containing 1000ppm or less of hexavalent chromium in homogeneous material. : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">Steel materials (including batch type molten zinc plating, free-machining steel) containing up to 0.35% of lead by weight, exceeding 1000 ppm in homogeneous material </xsl:if>
				<xsl:if test="$id='Pb-RE-4'">Copper alloy containing 4% or less, exceeding 1000ppm in homogeneous material, of lead by weight (e.g. brass, phosphor bronze)</xsl:if>
				<xsl:if test="$id='Pb-RE-5'">Lead in a cathode ray tube that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-6'">Lead up to 0.2% by weight in glass of a fluorescent tube that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-7'">An electricity or electronic component of other than dielectric ceramics (e.g., piezoelectric device), automobile valves, and automobile plugs in a capacitor that contains lead in glass, ceramic, or glass/ceramic matrix compounds, exceeding 1000 ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-8'">Lead in dielectric ceramic materials used in capacitors with a rated voltage of 125V AC or 250V DC or higher, exceeding 1000ppm in homogeneous material and excluding the intended uses indicated in Pb-RE-12 and Pb-E-20.</xsl:if>
				<xsl:if test="$id='Pb-RE-9'">Lead in dielectric ceramic materials used in capacitors with a rated voltage of 125V AC or 250V DC or lower, exceeding 1000ppm in homogeneous material and excluding the intended uses indicated in Pb-RE-12 and Pb-E-20.</xsl:if>
				<xsl:if test="$id='Pb-RE-12'">Lead in PTZ-based dielectric ceramic materials in a capacitor part of an IC chip or a discrete semiconductor (single function semiconductor), exceeding 1000 ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-20'">Lead in a dielectric ceramic for a capacitor part of ultrasonic sonar sensor, exceeding 1000 ppm in homogenous material</xsl:if>
				<xsl:if test="$id='Pb-RE-10'">Lead used for a C-press compliant pin connector/system that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-11'">Lead used for a compliant pin connector/system other than C-press that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-1'">Aluminum materials containing 0.4% or less, exceeding 1000ppm in homogeneous material, of lead by weight</xsl:if>
				<xsl:if test="$id='Pb-R-2'">Lead in high-melting point solder (lead-based alloys containing 85 % by weight or more lead)</xsl:if>
				<xsl:if test="$id='Pb-R-3'">Lead, exceeding 1000ppm in homogeneous material, in soldering for servers, storage and storage array systems, and network infrastructure equipment for switching, signaling, transmission and network management for telecommunication</xsl:if>
				<xsl:if test="$id='Pb-R-5'">Coating material for thermal conduction module C-rings, containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-R-7'">Solder consisting of more than two types of elements for connecting microprocessor pins and package containing less than 85wt% and more than 80wt% of lead.</xsl:if>
				<xsl:if test="$id='Pb-R-8'">Lead, exceeding 1000ppm in homogeneous material, in solder for connecting semiconductor dies and carriers in flip chip IC packages</xsl:if>
				<xsl:if test="$id='Pb-R-10'">Lead, exceeding 1000ppm in homogeneous material, in linear incandescent lamps with silicate coated tubes.</xsl:if>
				<xsl:if test="$id='Pb-R-11'">Lead halide, containing lead exceeding 1000ppm in homogeneous material, as radiant agent in High Intensity Discharge(HID) lamps used for professional reprography applications.</xsl:if>
				<xsl:if test="$id='Pb-R-15'">Lead, exceeding 1000ppm in homogeneous material, in printing inks for the application of enamels on glasses, such as borosilicate and soda lime glasses</xsl:if>
				<xsl:if test="$id='Pb-R-17'">Lead contained in finishing agents of 0.65 mm or finer pitch components other than connectors, exceeding 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-18'">Lead, exceeding 1000ppm in homogeneous material, in solders for the soldering to machined through hole discoidal and planar array ceramic multilayer capacitors.</xsl:if>
				<xsl:if test="$id='Pb-R-22'">Lead, exceeding 1000ppm in homogeneous material, in lead bound in crystal glass as defined in Annex I (Categories 1,2,3 and 4) of Council Directive 69/493/EEC.</xsl:if>
				<xsl:if test="$id='Pb-R-23'">Lead, exceeding 1000ppm in homogeneous material, in soldering materials in mercury free flat fluorescent lamps (which e.g. are used for liquid crystal displays, design or industrial lighting).</xsl:if>
				<xsl:if test="$id='Pb-R-24'">Lead, exceeding 1000ppm in homogeneous material, in lead oxide in seal frit used for making window assemblies for Argon and Krypton laser tubes.</xsl:if>
				<xsl:if test="$id='Pb-R-25'">Lead, exceeding 1000ppm in homogeneous material, in solders for the soldering of thin copper wires of 100 μm diameter and less in power transformers.</xsl:if>
				<xsl:if test="$id='Pb-R-26'">Lead, exceeding 1000ppm in homogeneous material, in cermet-based trimmer potentiometer elements.</xsl:if>
				<xsl:if test="$id='Pb-R-27'">Lead, exceeding 1000ppm in homogeneous material, in the plating layer of high voltage diodes on the basis of a zinc borate glass body.</xsl:if>
				<xsl:if test="$id='Pb-R-30'">Lead in white glass used for an optical purpose containing lead that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-31'">Lead in glass used for a filter glass or reflectance standards containing lead that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-32'">Lead in a shell (exterior casing) or bushing (a cylindrical component fitted inside a hole) of a bearing for a compressor containing coolant for heating, ventilation, air-conditioning, refrigeration, chilling, and HVACR, exceeding 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-33'">Lead (lead of 1% or less by weight) as activator in fluorescent powder of a discharge lamp used as a suntan lamp containing phosphor such as BPS (BaSi2O5:Pb) that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-34'">Lead, exceeding 1000ppm in homogeneous material, as activator in the fluorescent powder (1% lead by weight or less) of discharge lamps when used as sun tanning lamps containing phosphors such as BSP (BaSi2O5:Pb) as well as when used as speciality lamps for diazo-printing reprography, lithography, insect traps, photochemical and curing processes containing phosphors such as SMS ((Sr, Ba)2MgSi2O7:Pb).</xsl:if>
				<xsl:if test="$id='Pb-R-35'">Lead oxide, exceeding 1000ppm per unit of homogeneous material, used for structural elements on the surfaces of surface conduction electron emitter displays (SED), notably seal frit and frit ring.</xsl:if>
				<xsl:if test="$id='Pb-E-1'">Aluminum　with a lead content up to 1.5% by weight  (0.4＜Pb≦1.5wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-3'">Lead, exceeding 1000ppm in homogeneous material, in bearing shells and bushes (alloy).</xsl:if>
				<xsl:if test="$id='Pb-E-4'">Batteries containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-5'">Vibration dampers containing lead, exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-6'">Lead, exceeding 1000ppm in homogeneous material, in vulcanising agents and stabilisers for elastomers in fluid handling and powertrain applications containing up to 0.5% lead by weight.</xsl:if>
				<xsl:if test="$id='Pb-E-7'">Lead, exceeding 1000ppm in homogeneous material, in bonding agents for elastomers in powertrain applications containing up to 0.5% lead by weight.</xsl:if>
				<xsl:if test="$id='Pb-E-10'">Valve seats containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-11'">Pyrotechnic initiators containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-12'">Lead in solder for electric use that exceeds 1000ppm in homogeneous material (excluding solder on electronic circuit boards and glass)</xsl:if>
				<xsl:if test="$id='Pb-E-13'">Lead in solder for installing an electric or electronic component on an electronic circuit board or for a component terminal that exceeds 1000ppm in homogeneous material (excluding electrolysis aluminum capacitors)</xsl:if>
				<xsl:if test="$id='Pb-E-14'">Lead on a terminal of an electrolysis aluminum capacitor that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-15'">Lead for soldering an air mass sensor on a glass surface that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-16'">Lead in solder for attaching a heat spreader and heat sink of a power semiconductor   that exceeds 1000ppm in homogeneous material (The chip size is 1cm2 at least. The electric current density is 1A/mm2 at least.)</xsl:if>
				<xsl:if test="$id='Pb-E-17'">Lead in solder for electric glazing on a glass surface that exceeds 1000ppm in homogeneous material (excluding solder for laminate glazing)</xsl:if>
				<xsl:if test="$id='Pb-E-18'">Lead in solder used for laminate glazing that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-19'">Lead content in a zincked serial steel sheet of up to 0.35% by weight, exceeding 1000 ppm in homogenous material</xsl:if>
				<xsl:if test="$id='Pb-E-21'">Lead-containing thermoelectric material used for automobile electrical equipment that reduces CO2 emission by exhaust heat exchange</xsl:if>
				<xsl:if test="$id='Pb-J-1'">Containing lead above 300ppm in homogeneous material , for use in vinyl chloride wires.</xsl:if>
				<xsl:if test="$id='Pb-J-3'">Containing above 0.009% of lead per surface treatment layer such as coating in parts/material used in toys.<br/>(Select this item only when the surveyor states that your product is used for a toy.)</xsl:if>
				<xsl:if test="$id='Pb-J-4'">Use in products for children 12 years old and younger, containing lead exceeding 100ppm per surveying unit.<br/>(Select this item only when the surveyor states that your product is used for a surveyor's product for children of twelve years of age or under.)</xsl:if>
				<xsl:if test="$id='Pb-B-1'">Batteries containing lead exceeding 40ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Pb-J-0'">Cases containing intentionally added lead above 1000ppm in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Pb-J-99'">Containing lead above 1000ppm in homogeneous material : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Pb-R-0'">Cases containing 1000ppm or less of intentionally added lead in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">Containing 1000ppm or less of  lead in homogeneous material : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Hg-R-16'">Mercury in a single-capped fluorescent lamp that does not exceed the following limitations (per burner):<br/>(a) For general illumination less than 30W: 3.5mg<br/>(b) For general illumination of 30W or higher and less than 50W: 3.5 mg<br/>(c) For general illumination of 50W or higher and less than 150W: 5 mg<br/>(d) For general illumination of 150W or higher: 15mg<br/>(e) Having a circular or square structure, 17mm or less in tube diameter, and for general illumination: 7mg<br/>(f) For a specific use: 5 mg</xsl:if>
				<xsl:if test="$id='Hg-R-17'">Mercury in a double-capped strip fluorescent lamp (in each individual lamp) for general purposes that does not exceed the following limitations:<br/>(a) A three-wavelength phosphor of less than 9mm in tube diameter (e.g., T2) with normal lifetime: 4mg<br/>(b) A three-wavelength phosphor of 9mm or larger and of 17mm or less in tube diameter (e.g., T5) with normal lifetime: 3mg<br/>(c) A three-wavelength phosphor of over 17mm and 28mm or less in tube diameter (e.g., T8) with normal lifetime: 3.5mg<br/>(d) A three-wavelength phosphor of over 28mm in tube diameter (e.g., T12) with normal lifetime: 3.5mg<br/>(e) A three-wavelength phosphor with long lifetime (> 25,000 h): 5mg</xsl:if>
				<xsl:if test="$id='Hg-R-18'">Mercury in a double-capped fluorescent lamp (in each individual lamp) not for general purposes under the following conditions:<br/>(a) A linear white lamp of over 28 mm in tube diameter (e.g., T10 and T12): mercury that does not exceed 10 mg<br/>(b) Nonlinear white lamps of all tube diameter: mercury that does not exceed 15mg<br/>(c) Mercury content not exceeding 15 mg in a nonlinear three-wavelength phosphor lamp of over 17 mm tube diameter (e.g., T9)<br/>(d) Mercury content not exceeding 15 mg in a lamp for any other general illumination or specific purposes (e.g., induction lamps)</xsl:if>
				<xsl:if test="$id='Hg-R-9'">Mercury in a cold cathode ray fluorescent lamp or external electrode fluorescent lamp (CCFL or EEFL) for a specific purpose</xsl:if>
				<xsl:if test="$id='Hg-R-20'">Mercury in a low-pressure discharge lamp (each individual lamp) other than Hg-R-16, Hg-R-17, Hg-R-18, or Hg-R-9</xsl:if>
				<xsl:if test="$id='Hg-R-11'">Mercury in an extra-high pressure sodium (vapor) lamp for general illumination with an improved color rendering index Ra over 60</xsl:if>
				<xsl:if test="$id='Hg-R-12'">Mercury in an extra-high voltage sodium (vapor) lamp for general illumination of any other type (Hg-R-11)</xsl:if>
				<xsl:if test="$id='Hg-R-13'">Mercury in a high-pressure mercury vapor lamp (HPMV)</xsl:if>
				<xsl:if test="$id='Hg-R-14'">Mercury in a metal halide lamp (MH)</xsl:if>
				<xsl:if test="$id='Hg-R-15'">Mercury in a vapor lamp for a specific purpose or of any other type that is not specifically mentioned in the Annex of Directive 2011/65/EU (or in the classification of intended use of mercury)</xsl:if>
				<xsl:if test="$id='Hg-E-1'">Mercury in a discharge lamp or instrument panel display</xsl:if>
				<xsl:if test="$id='Hg-B-1'">Containing intentionally added or 0.0001% by weight (1ppm) of mercury in of the battery</xsl:if>
				<xsl:if test="$id='Hg-J-0'">Cases containing intentionally added mercury above 1000ppm in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Hg-J-99'">Containing mercury above 1000ppm in homogeneous material : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Hg-R-0'">Cases containing 1000ppm or less of intentionally added mercury in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">Containing 1000ppm or less of mercury in homogeneous material. : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Ni-J-1'">Cases containing intentionally added nickel, for use consisting of long-term contact with skin.</xsl:if>
				<xsl:if test="$id='Ni-J-2'">In cases where a product has an unclear purpose and nickel is intentionally added</xsl:if>
				<xsl:if test="$id='Ni-J-98'">Cases containing nickel other than Ni-J-1and Ni-J-2.(a product not staying in contact with skin for a considerable duration of time or containing impurities)</xsl:if>
				<xsl:if test="$id='A17-J-4'">Cases containing intentionally added TBTO.</xsl:if>
				<xsl:if test="$id='A17-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='A28-J-4'">In cases where tin content in homogeneous material is over 0.1% by weight</xsl:if>
				<xsl:if test="$id='A28-J-5'">Cases intentionally added and contained for uses other than A28-J-4</xsl:if>
				<xsl:if test="$id='A28-J-97'">In cases where tin content in homogeneous material is 0.1% or less by weight</xsl:if>
				<xsl:if test="$id='A23-J-1'">In cases where tin content in 1-component or 2-component room temperature vulcanized sealant (RTV-1/RTV-2 sealant) and adhesives exceeds 0.1% by weight per homogeneous material </xsl:if>
				<xsl:if test="$id='A23-J-2'">In cases where tin content exceeds 0.1% by weight in homogeneous material, and DBT compound is added to paint or coating for a molded item as accelerator</xsl:if>
				<xsl:if test="$id='A23-J-3'">In cases where tin in soft PVC profile exceeds 0.1% by weight, regardless of soft PVC itself or co-extrusion with hard PVC</xsl:if>
				<xsl:if test="$id='A23-J-4'">In cases where tin content per homogeneous material exceeds 0.1% by weight, excluding special uses (A23-J-1, 2, 3)</xsl:if>
				<xsl:if test="$id='A23-J-98'">In cases where tin content in homogeneous material is 0.1% or less by weight</xsl:if>
				<xsl:if test="$id='A24-J-0'">・A cloth/leather part included in a surveyed product<br/>・In cases where tin content in homogeneous material is over 0.1% by weight with a dual humoral room temperature curing molding kit (RTV-2 sealant molding kit) in use</xsl:if>
				<xsl:if test="$id='A24-J-1'">In cases where a product has an unclear purpose and DOT is intentionally added</xsl:if>
				<xsl:if test="$id='A24-J-98'">In cases where any dioctyl tin compound other than A24-J-0 and A24-J-1 is contained</xsl:if>
				<xsl:if test="$id='A19-J-0'">Cases containing above 0.1% beryllium oxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A19-J-98'">Cases containing up to 0.1% beryllium oxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B02-J-0'">Cases containing intentionally added PBB exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='B02-J-99'">Containing PBB above 1000ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B02-R-0'">Cases containing 1000ppm or less of intentionally added PBB in homogeneous material.</xsl:if>
				<xsl:if test="$id='B02-R-98'">Containing 1000ppm or less of PBB in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B03-J-0'">Cases containing intentionally added PBDE exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='B03-J-99'">Containing PBDE above 1000ppm in homogeneous material. :Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B03-R-0'">Cases containing 1000ppm or less of intentionally added PBDE in homogeneous material.</xsl:if>
				<xsl:if test="$id='B03-R-98'">Containing 1000ppm or less of PBDE in homogeneous material. :Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B08-J-3'">In cases where bromine element is used for a printed wiring board laminate and its content is above 0.09% by weight in the survey unit</xsl:if>
				<xsl:if test="$id='B08-J-5'">In cases where total bromine content exceeds 0.1% by weight for the use of plastic material.</xsl:if>
				<xsl:if test="$id='B08-J-4'">In cases where a product has an unclear purpose and Brominated flame retardants is intentionally added</xsl:if>
				<xsl:if test="$id='B08-J-97'">In cases where any brominated flame retardant other than B08-J-3, B08-J-4 or B08-J-5 is contained</xsl:if>
				<xsl:if test="$id='B18-J-0'">In cases where the chlorine element contained exceeds 0.09% by weight per surveying unit, for the use of printed wiring board laminate</xsl:if>
				<xsl:if test="$id='B18-J-1'">In cases where total chlorine content exceeds 0.1% by weight for the use of plastic material.</xsl:if>
				<xsl:if test="$id='B18-J-2'">In cases where chlorine content is intentionally added as chlorinated flame retardant although the product's application is unclear</xsl:if>
				<xsl:if test="$id='B18-J-98'">In cases where any Chlorinated flame retardants other than B18-J-0, B18-J-1 or B18-J-2 is contained</xsl:if>
				<xsl:if test="$id='B05-J-1'">Cases containing intentionally added PCBs and specific substitutes.</xsl:if>
				<xsl:if test="$id='B05-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B15-J-2'">Cases containing above 0.005% PCTs by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B15-J-97'">Cases containing up to 0.005% PCTs by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B06-J-1'">Cases containing intentionally added polychlorinated naphthalenes.</xsl:if>
				<xsl:if test="$id='B06-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B12-J-0'">Cases containing above 6ppb perchlorates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B12-J-98'">Cases containing up to 6ppb perchlorates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B13-J-0'">Cases intentionally containing PFOS in photoresist or anti-reflective coatings for the photolithography process</xsl:if>
				<xsl:if test="$id='B13-J-1'">Cases intentionally containing PFOS in photo coating used in films, documents, and printing plates</xsl:if>
				<xsl:if test="$id='B13-J-2'">Cases intentionally containing PFOS in mist suppressants used in chrome plating, chromium oxidation treatment, and reverse etching</xsl:if>
				<xsl:if test="$id='B13-J-3'">Cases intentionally containing PFOS in mist suppressants used in electroless nickel-polytetrafluoroethylene (PTFE) plating</xsl:if>
				<xsl:if test="$id='B13-J-4'">Cases intentionally containing PFOS in mist suppressants used in etching of plastic base materials in front of metallic films</xsl:if>
				<xsl:if test="$id='B13-J-6'">Cases intentionally containing above 0.1wt% of PFOS in homogeneous material as a component of molding, or cases intentionally containing above 1μg/m2 of PFOS in cladding for textiles or other coated material, excluding specified uses (B13-J-0, 1, 2, 3, 4)</xsl:if>
				<xsl:if test="$id='B13-J-7'">Cases intentionally containing PFOS, excluding specified uses (B13-J-0, 1, 2, 3, 4, 6, 8, 9)</xsl:if>
				<xsl:if test="$id='B13-J-8'">Cases containing above 0.1wt% of PFOS in homogeneous material as an impurity, excluding specified uses (B13-J-0, 1, 2, 3, 4, 6, 7, 9)</xsl:if>
				<xsl:if test="$id='B13-J-9'">Cases containing PFOS exceeding 0.001wt% as a component of a drug or substance, excluding specified uses (B13-J-0, 1, 2, 3, 4, 6, 7, 8)</xsl:if>
				<xsl:if test="$id='B13-J-92'">Cases containing less than 1μg/m2 of PFOS as an impurity in photoresist or anti-reflective coatings for the photolithography process</xsl:if>
				<xsl:if test="$id='B13-J-93'">Cases containing less than 1μg/m2 of PFOS as an impurity in photo coating used in film, documents, or printing plates</xsl:if>
				<xsl:if test="$id='B13-J-94'">Cases containing less than 0.001wt% of PFOS as an impurity in mist suppressants used in chrome plating, chromium oxidation treatment, and reverse etching</xsl:if>
				<xsl:if test="$id='B13-J-95'">Cases containing less than 0.001wt% of PFOS as an impurity in mist suppressants used in electroless nickel-polytetrafluoroethylene (PTFE) plating</xsl:if>
				<xsl:if test="$id='B13-J-96'">Cases containing less than 0.001wt% of PFOS as an impurity in mist suppressants used in etching of plastic base materials in front of metallic films</xsl:if>
				<xsl:if test="$id='B13-J-89'">Cases containing less than 0.001wt% of PFOS as an impurity and as a component of a drug or substance, excluding specified uses (B13-J-92, 93, 94, 95, 96)</xsl:if>
				<xsl:if test="$id='B13-J-90'">Cases containing less than 0.1wt% of PFOS in homogeneous material as an impurity and as a component of molding, or cases containing less than 1μg/m2 of PFOS as an impurity in cladding for textiles or other coated material, excluding specified uses (B13-J-92, 93, 94, 95, 96)</xsl:if>
				<xsl:if test="$id='B13-J-91'">Cases containing PFOS as in impurity, excluding specified uses (B13-J-92, 93, 94, 95, 96, 89, 90)</xsl:if>
				<xsl:if test="$id='B10-J-0'">Cases containing intentionally added fluorinated greenhouse gases.</xsl:if>
				<xsl:if test="$id='B10-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B19-J-0'">Cases containing a total chlorine content of over 0.1% by weight for the use of plastic material.</xsl:if>
				<xsl:if test="$id='B19-J-98'">Cases containing up to 0.1% of total chlorine by weight for the use of plastic material.</xsl:if>
				<xsl:if test="$id='C01-J-1'">Cases containing intentionally added asbestos.</xsl:if>
				<xsl:if test="$id='C01-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C02-J-2'">Leather products and fiber products used with the intention of continued contact with the human body containing azocolourants and azodyes, which form more than 0.003% of certain aromatic amines by weight.(used for a part including leather and/or cloth)</xsl:if>
				<xsl:if test="$id='C02-J-3'">In cases where a product has an unclear purpose and "Azocolourants and azodyes which form certain aromatic amines" is intentionally added</xsl:if>
				<xsl:if test="$id='C02-J-98'">Cases containing azocolourants and azodyes which form certain aromatic amines other than C02-J-2 or C02-J-3.</xsl:if>
				<xsl:if test="$id='C04-J-1'">Cases containing intentionally added ozone depleting substances.</xsl:if>
				<xsl:if test="$id='C04-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C06-J-1'">Cases containing intentionally added radioactive substances.</xsl:if>
				<xsl:if test="$id='C06-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C07-J-0'">Cases containing above 0.0075% formaldehyde by weight in textile products.</xsl:if>
				<xsl:if test="$id='C07-J-2'">In cases where a surveyed product includes some wood and formaldehyde is intentionally added to the wood</xsl:if>
				<xsl:if test="$id='C07-J-97'">In cases where formaldehyde other than C07-J-0 or C07-J-2 is contained</xsl:if>
				<xsl:if test="$id='C08-J-0'">Cases containing intentionally added phenol,2-(2H-benzotriazol-2-yl)-4,6-bis(1,1-dimethylethyl).</xsl:if>
				<xsl:if test="$id='C08-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C09-J-1'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for use as a toy or child care article as the total of BBP, DBP and DEHP.</xsl:if>
				<xsl:if test="$id='C09-J-2'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for a product with an unclear purpose as the total of BBP, DBP and DEHP.</xsl:if>
				<xsl:if test="$id='C09-J-96'">Cases containing over 0.1% of BBP, DBP and DEHP as combined total by weight in plasticized material (homogeneous material) that is used for products other than the uses in C09-J-1</xsl:if>
				<xsl:if test="$id='C09-J-97'">Cases containing 0.1wt% or less of plasticized material (homogeneous material) as the total of BBP, DBP and DEHP, for uses other than C09-J-1 and C09-J-2.</xsl:if>
				<xsl:if test="$id='C10-J-0'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for use as a children's toy that can be placed in a child's mouth or child care article as the total of DIDP, DINP and DNOP.</xsl:if>
				<xsl:if test="$id='C10-J-1'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for a product with an unclear purpose as the total of DIDP, DINP and DNOP.</xsl:if>
				<xsl:if test="$id='C10-J-97'">Cases containing over 0.1% of DIDP, DINP and DNOP as a combined total by weight in plasticized material (homogeneous material) that is used in products other than uses in C10-J-0</xsl:if>
				<xsl:if test="$id='C10-J-98'">Cases containing 0.1wt% or less of plasticized material (homogeneous material) as the total of DIDP, DINP and DNOP, for uses other than C10-J-0 and C10-J-1.</xsl:if>
				<xsl:if test="$id='C11-J-0'">In cases where the content in homogeneous material is over 0.00001% by weight</xsl:if>
				<xsl:if test="$id='C11-J-98'">In cases where the content in homogeneous material is 0.00001% or less by weight</xsl:if>
				<xsl:if test="$id='A17-J-3'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A20-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A21-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A22-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A25-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A26-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A27-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A29-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A30-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A31-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B09-J-1'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B11-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B16-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B17-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B20-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C12-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C13-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C14-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C15-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C16-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C17-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C18-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C19-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C20-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C21-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C22-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C23-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C24-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C25-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C26-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A17-J-97'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A20-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A21-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A22-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A25-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A26-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A27-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A29-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A30-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A31-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B09-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B11-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B16-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B17-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B20-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C12-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C13-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C14-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C15-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C16-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C17-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C18-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C19-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C20-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C21-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C22-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C23-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C24-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C25-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C26-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
			</xsl:if>
			<xsl:if test="$ver=4.3">
				<xsl:if test="$id='A17-J-3'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A17-J-4'">Cases containing intentionally added TBTO.</xsl:if>
				<xsl:if test="$id='A17-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='A17-J-97'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A19-J-0'">Cases containing above 0.1% beryllium oxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A19-J-98'">Cases containing up to 0.1% beryllium oxide by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='A20-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A20-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A21-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A21-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A22-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A22-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A23-J-1'">In cases where tin content in 1-component or 2-component room temperature vulcanized sealant (RTV-1/RTV-2 sealant) and adhesives exceeds 0.1% by weight per homogeneous material </xsl:if>
				<xsl:if test="$id='A23-J-2'">In cases where tin content exceeds 0.1% by weight in homogeneous material, and DBT compound is added to paint or coating for a molded item as accelerator</xsl:if>
				<xsl:if test="$id='A23-J-3'">In cases where tin in soft PVC profile exceeds 0.1% by weight, regardless of soft PVC itself or co-extrusion with hard PVC</xsl:if>
				<xsl:if test="$id='A23-J-4'">In cases where tin content per homogeneous material exceeds 0.1% by weight, excluding special uses (A23-J-1, 2, 3)</xsl:if>
				<xsl:if test="$id='A23-J-98'">In cases where tin content in homogeneous material is 0.1% or less by weight</xsl:if>
				<xsl:if test="$id='A24-J-0'">・A cloth/leather part included in a surveyed product<br/>・In cases where tin content in homogeneous material is over 0.1% by weight with a dual humoral room temperature curing molding kit (RTV-2 sealant molding kit) in use</xsl:if>
				<xsl:if test="$id='A24-J-1'">In cases where a product has an unclear purpose and DOT is intentionally added</xsl:if>
				<xsl:if test="$id='A24-J-98'">In cases where any dioctyl tin compound other than A24-J-0 and A24-J-1 is contained</xsl:if>
				<xsl:if test="$id='A25-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A25-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A26-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A26-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A27-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A27-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A28-J-4'">In cases where tin content in homogeneous material is over 0.1% by weight</xsl:if>
				<xsl:if test="$id='A28-J-5'">Cases intentionally added and contained for uses other than A28-J-4</xsl:if>
				<xsl:if test="$id='A28-J-97'">In cases where tin content in homogeneous material is 0.1% or less by weight</xsl:if>
				<xsl:if test="$id='A29-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A29-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A30-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A30-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A31-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A31-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A32-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A32-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A33-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A33-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A34-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A34-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A35-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A35-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A36-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A36-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A37-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A37-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A38-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A38-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A39-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A39-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A40-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A40-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A41-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A41-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A42-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A42-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A43-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A43-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A44-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A44-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A45-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A45-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A46-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A46-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A47-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A47-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B02-J-0'">Cases containing intentionally added PBB exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='B02-J-99'">Containing PBB above 1000ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B02-R-0'">Cases containing 1000ppm or less of intentionally added PBB in homogeneous material.</xsl:if>
				<xsl:if test="$id='B02-R-98'">Containing 1000ppm or less of PBB in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B03-J-0'">Cases containing intentionally added PBDE exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='B03-J-99'">Containing PBDE above 1000ppm in homogeneous material. :Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B03-R-0'">Cases containing 1000ppm or less of intentionally added PBDE in homogeneous material.</xsl:if>
				<xsl:if test="$id='B03-R-98'">Containing 1000ppm or less of PBDE in homogeneous material. :Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='B05-J-1'">Cases containing intentionally added PCBs and specific substitutes.</xsl:if>
				<xsl:if test="$id='B05-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B06-J-1'">Cases containing intentionally added polychlorinated naphthalenes.</xsl:if>
				<xsl:if test="$id='B06-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B08-J-3'">In cases where bromine element is used for a printed wiring board laminate and its content is above 0.09% by weight in the printed wiring board laminate</xsl:if>
				<xsl:if test="$id='B08-J-4'">In cases where a product has an unclear purpose and Brominated flame retardants is intentionally added</xsl:if>
				<xsl:if test="$id='B08-J-5'">In cases where total bromine content exceeds 0.1% by weight for the use of plastic material.</xsl:if>
				<xsl:if test="$id='B08-J-97'">In cases where any brominated flame retardant other than B08-J-3, B08-J-4 or B08-J-5 is contained</xsl:if>
				<xsl:if test="$id='B09-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B09-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B10-J-0'">Cases containing intentionally added fluorinated greenhouse gases.</xsl:if>
				<xsl:if test="$id='B10-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='B11-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B11-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B12-J-0'">Cases containing above 6ppb perchlorates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B12-J-98'">Cases containing up to 6ppb perchlorates by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B13-J-0'">Cases intentionally containing PFOS in photoresist or anti-reflective coatings for the photolithography process</xsl:if>
				<xsl:if test="$id='B13-J-1'">Cases intentionally containing PFOS in photo coating used in films, documents, and printing plates</xsl:if>
				<xsl:if test="$id='B13-J-2'">Cases intentionally containing PFOS in mist suppressants used in chrome plating, chromium oxidation treatment, and reverse etching</xsl:if>
				<xsl:if test="$id='B13-J-3'">Cases intentionally containing PFOS in mist suppressants used in electroless nickel-polytetrafluoroethylene (PTFE) plating</xsl:if>
				<xsl:if test="$id='B13-J-4'">Cases intentionally containing PFOS in mist suppressants used in etching of plastic base materials in front of metallic films</xsl:if>
				<xsl:if test="$id='B13-J-6'">Cases intentionally containing above 0.1wt% of PFOS in homogeneous material as a component of molding, or cases intentionally containing above 1&#181;g/m2 of PFOS in cladding for textiles or other coated material, excluding specified uses (B13-J-0, 1, 2, 3, 4)</xsl:if>
				<xsl:if test="$id='B13-J-7'">Cases intentionally containing PFOS, excluding specified uses (B13-J-0, 1, 2, 3, 4, 6, 8, 9)</xsl:if>
				<xsl:if test="$id='B13-J-8'">Cases containing above 0.1wt% of PFOS in homogeneous material as an impurity, excluding specified uses (B13-J-0, 1, 2, 3, 4, 6, 7, 9)</xsl:if>
				<xsl:if test="$id='B13-J-89'">Cases containing less than 0.001wt% of PFOS as an impurity and as a component of a drug or substance, excluding specified uses (B13-J-92, 93, 94, 95, 96)</xsl:if>
				<xsl:if test="$id='B13-J-9'">Cases containing PFOS exceeding 0.001wt% as a component of a drug or substance, excluding specified uses (B13-J-0, 1, 2, 3, 4, 6, 7, 8)</xsl:if>
				<xsl:if test="$id='B13-J-90'">Cases containing less than 0.1wt% of PFOS in homogeneous material as an impurity and as a component of molding,<br/>or cases containing less than 1&#181;g/m2 of PFOS as an impurity in cladding for textiles or other coated material, excluding specified uses (B13-J-92, 93, 94, 95, 96)</xsl:if>
				<xsl:if test="$id='B13-J-91'">Cases containing PFOS as in impurity, excluding specified uses (B13-J-92, 93, 94, 95, 96, 89, 90)</xsl:if>
				<xsl:if test="$id='B13-J-92'">Cases containing less than 1&#181;g/m2 of PFOS as an impurity in photoresist or anti-reflective coatings for the photolithography process</xsl:if>
				<xsl:if test="$id='B13-J-93'">Cases containing less than 1&#181;g/m2 of PFOS as an impurity in photo coating used in film, documents, or printing plates</xsl:if>
				<xsl:if test="$id='B13-J-94'">Cases containing less than 0.001wt% of PFOS as an impurity in mist suppressants used in chrome plating, chromium oxidation treatment, and reverse etching</xsl:if>
				<xsl:if test="$id='B13-J-95'">Cases containing less than 0.001wt% of PFOS as an impurity in mist suppressants used in electroless nickel-polytetrafluoroethylene (PTFE) plating</xsl:if>
				<xsl:if test="$id='B13-J-96'">Cases containing less than 0.001wt% of PFOS as an impurity in mist suppressants used in etching of plastic base materials in front of metallic films</xsl:if>
				<xsl:if test="$id='B15-J-2'">Cases containing above 0.005% PCTs by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B15-J-97'">Cases containing up to 0.005% PCTs by weight per surveying unit.</xsl:if>
				<xsl:if test="$id='B16-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B16-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B17-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B17-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B18-J-0'">In cases where the chlorine element contained exceeds 0.09% by weight per the printed wiring board laminate, for the use of printed wiring board laminate</xsl:if>
				<xsl:if test="$id='B18-J-1'">In cases where total chlorine content exceeds 0.1% by weight for the use of plastic material.</xsl:if>
				<xsl:if test="$id='B18-J-2'">In cases where chlorine content is intentionally added as chlorinated flame retardant although the product's application is unclear</xsl:if>
				<xsl:if test="$id='B18-J-98'">In cases where any Chlorinated flame retardants other than B18-J-0, B18-J-1 or B18-J-2 is contained</xsl:if>
				<xsl:if test="$id='B19-J-0'">Cases containing a total chlorine content of over 0.1% by weight for the use of plastic material.</xsl:if>
				<xsl:if test="$id='B19-J-98'">Cases containing up to 0.1% of total chlorine by weight for the use of plastic material.</xsl:if>
				<xsl:if test="$id='B20-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B20-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B21-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B21-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C01-J-1'">Cases containing intentionally added asbestos.</xsl:if>
				<xsl:if test="$id='C01-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C02-J-2'">Leather products and fiber products used with the intention of continued contact with the human body containing azocolourants and azodyes, which form more than 0.003% of certain aromatic amines by weight.(used for a part including leather and/or cloth)</xsl:if>
				<xsl:if test="$id='C02-J-3'">In cases where a product has an unclear purpose and &quot;Azocolourants and azodyes which form certain aromatic amines&quot; is intentionally added</xsl:if>
				<xsl:if test="$id='C02-J-98'">Cases containing azocolourants and azodyes which form certain aromatic amines other than C02-J-2 or C02-J-3.</xsl:if>
				<xsl:if test="$id='C04-J-1'">Cases containing intentionally added ozone depleting substances.</xsl:if>
				<xsl:if test="$id='C04-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C06-J-1'">Cases containing intentionally added radioactive substances.</xsl:if>
				<xsl:if test="$id='C06-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C07-J-0'">Cases containing above 0.0075% formaldehyde by weight in textile products.</xsl:if>
				<xsl:if test="$id='C07-J-2'">In cases where a surveyed product includes some wood and formaldehyde is intentionally added to the wood</xsl:if>
				<xsl:if test="$id='C07-J-97'">In cases where formaldehyde other than C07-J-0 or C07-J-2 is contained</xsl:if>
				<xsl:if test="$id='C08-J-0'">Cases containing intentionally added phenol,2-(2H-benzotriazol-2-yl)-4,6-bis(1,1-dimethylethyl).</xsl:if>
				<xsl:if test="$id='C08-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C09-J-1'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for use as a toy or child care article as the total of BBP, DBP and DEHP.</xsl:if>
				<xsl:if test="$id='C09-J-2'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for a product with an unclear purpose as the total of BBP, DBP and DEHP.</xsl:if>
				<xsl:if test="$id='C09-J-96'">Cases containing over 0.1% of BBP, DBP and DEHP as combined total by weight in plasticized material (homogeneous material) that is used for products other than the uses in C09-J-1</xsl:if>
				<xsl:if test="$id='C09-J-97'">Cases containing 0.1wt% or less of plasticized material (homogeneous material) as the total of BBP, DBP and DEHP, for uses other than C09-J-1 and C09-J-2.</xsl:if>
				<xsl:if test="$id='C10-J-0'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for use as a children's toy that can be placed in a child's mouth or child care article as the total of DIDP, DINP and DNOP.</xsl:if>
				<xsl:if test="$id='C10-J-1'">Cases containing above 0.1wt% of plasticized material (homogeneous material) for a product with an unclear purpose as the total of DIDP, DINP and DNOP.</xsl:if>
				<xsl:if test="$id='C10-J-97'">Cases containing over 0.1% of DIDP, DINP and DNOP as a combined total by weight in plasticized material (homogeneous material) that is used in products other than uses in C10-J-0</xsl:if>
				<xsl:if test="$id='C10-J-98'">Cases containing 0.1wt% or less of plasticized material (homogeneous material) as the total of DIDP, DINP and DNOP, for uses other than C10-J-0 and C10-J-1.</xsl:if>
				<xsl:if test="$id='C11-J-0'">In cases where the content in homogeneous material is over 0.00001% by weight</xsl:if>
				<xsl:if test="$id='C11-J-98'">In cases where the content in homogeneous material is 0.00001% or less by weight</xsl:if>
				<xsl:if test="$id='C12-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C12-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C13-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C13-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C14-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C14-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C15-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C15-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C16-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C16-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C17-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C17-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C18-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C18-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C19-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C19-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C20-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C20-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C21-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C21-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C22-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C22-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C23-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C23-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C24-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C24-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C25-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C25-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C26-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C26-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C27-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C27-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C28-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C28-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C29-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C29-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C30-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C30-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C31-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C31-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C32-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C32-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C33-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C33-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C34-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C34-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C35-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C35-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C36-J-0'">Cases containing intentionally added Di-isodecyl phthalate (DIDP).</xsl:if>
				<xsl:if test="$id='C36-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C37-J-0'">Cases containing intentionally added Di-n-hexyl Phthalate.</xsl:if>
				<xsl:if test="$id='C37-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='Cd-B-2'">Batteries containing cadmium exceeding 10ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Cd-E-2'">Batteries for electric vehicles containing cadmium exceeding 100ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cd-J-0'">Cases containing intentionally added cadmium exceeding 100ppm in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Cd-J-99'">Containing cadmium above 100ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cd-R-0'">Cases containing 100ppm or less of intentionally added cadmium in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Cd-R-10'">Cadmium in a color conversion &#8545;-&#8549; family LED used for solid-state lighting or a display system that exceeds 100ppm in homogeneous material (&quot;cadmium per square millimeter in a light emission area&quot;&lt;10&#181;g Cd)</xsl:if>
				<xsl:if test="$id='Cd-R-11'">Cadmium in photoresistor of an analog optical coupler used for professional audio equipment that exceeds 100 ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-R-3'">Printing inks for the application of enamels on glasses, such as borosilicate and soda lime glasses containing cadmium exceeding 100ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cd-R-4'">Cadmium exceeding 100ppm in homogeneous material in alloys as electrical/mechanical solder joints to electrical conductors located directly on the voice coil in transducers used in high-powered loudspeakers with sound pressure levels of 100 dB (A) and more.</xsl:if>
				<xsl:if test="$id='Cd-R-6'">Cadmium, exceeding 100ppm in homogeneous material, in cadmium oxide in thick film pastes used on aluminium bonded beryllium oxide.</xsl:if>
				<xsl:if test="$id='Cd-R-8'">Cadmium in an electric point that exceeds 100ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-R-9'">Cadmium in glass used for a filter glass or reflectance standards that exceeds 100ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">Containing 100ppm or less of cadmium in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cr-E-1'">Anti-corrosion coatings containing hexavalent chromium exceeding 1000ppm in homogeneous material.(Other than below Cr-E-2)</xsl:if>
				<xsl:if test="$id='Cr-E-2'">Corrosion preventive coating related to bolt and nut assembles for chassis applications, containing hexavalent chromium exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Cr-E-3'">(Absorption) refrigerators in motor caravans containing hexavalent chromium up to 0.75% by weight, exceeding 1000 ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cr-J-0'">Cases containing intentionally added hexavalent chromium exceeding 1000ppm in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Cr-J-99'">Containing hexavalent chromium above 1000ppm in homogeneous material. : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Cr-R-0'">Cases containing 1000ppm or less of intentionally added hexavalent chromium in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Cr-R-2'">Hexavalent chromium up to 0.75% by weight as antirust for a carbon steel cooling system in an absorption refrigerator that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">Containing 1000ppm or less of hexavalent chromium in homogeneous material. : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Hg-B-1'">Containing intentionally added or 0.0001% by weight (1ppm) of mercury in of the battery</xsl:if>
				<xsl:if test="$id='Hg-J-0'">Cases containing intentionally added mercury above 1000ppm in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Hg-J-99'">Containing mercury above 1000ppm in homogeneous material : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='Hg-R-0'">Cases containing 1000ppm or less of intentionally added mercury in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Hg-R-11'">Mercury in an extra-high pressure sodium (vapor) lamp for general illumination with an improved color rendering index Ra over 60</xsl:if>
				<xsl:if test="$id='Hg-R-12'">Mercury in an extra-high voltage sodium (vapor) lamp for general illumination of any other type (Hg-R-11)</xsl:if>
				<xsl:if test="$id='Hg-R-13'">Mercury in a high-pressure mercury vapor lamp (HPMV)</xsl:if>
				<xsl:if test="$id='Hg-R-14'">Mercury in a metal halide lamp (MH)</xsl:if>
				<xsl:if test="$id='Hg-R-15'">Mercury in a vapor lamp for a specific purpose or of any other type that is not specifically mentioned in the Annex of Directive 2011/65/EU (or in the classification of intended use of mercury)</xsl:if>
				<xsl:if test="$id='Hg-R-17'">Mercury in a double-capped strip fluorescent lamp (in each individual lamp) for general purposes that does not exceed the following limitations:<br/>(a) A three-wavelength phosphor of less than 9mm in tube diameter (e.g., T2) with normal lifetime: 4mg<br/>(b) A three-wavelength phosphor of 9mm or larger and of 17mm or less in tube diameter (e.g., T5) with normal lifetime: 3mg<br/>(c) A three-wavelength phosphor of over 17mm and 28mm or less in tube diameter (e.g., T8) with normal lifetime: 3.5mg<br/>(d) A three-wavelength phosphor of over 28mm in tube diameter (e.g., T12) with normal lifetime: 3.5mg<br/>(e) A three-wavelength phosphor with long lifetime (&gt; 25,000 h): 5mg</xsl:if>
				<xsl:if test="$id='Hg-R-20'">Mercury in a low-pressure discharge lamp (each individual lamp) other than Hg-R-26, Hg-R-17, Hg-R-28, or Hg-R-9</xsl:if>
				<xsl:if test="$id='Hg-R-26'">Mercury in a single-capped fluorescent lamp that does not exceed the following limitations (per burner):<br/>(a) For general illumination less than 30W: 2.5mg<br/>(b) For general illumination of 30W or higher and less than 50W: 3.5 mg<br/>(c) For general illumination of 50W or higher and less than 150W: 5 mg<br/>(d) For general illumination of 150W or higher: 15mg<br/>(e) Having a circular or square structure, 17mm or less in tube diameter, and for general illumination: 7mg<br/>(f) For a specific use: 5 mg</xsl:if>
				<xsl:if test="$id='Hg-R-28'">Mercury in a double-capped fluorescent lamp (in each individual lamp) not for general purposes under the following conditions:<br/>(b) Nonlinear white lamps of all tube diameter: mercury that does not exceed 15mg<br/>(c) Mercury content not exceeding 15 mg in a nonlinear three-wavelength phosphor lamp of over 17 mm tube diameter (e.g., T9)<br/>(d) Mercury content not exceeding 15 mg in a lamp for any other general illumination or specific purposes (e.g., induction lamps)</xsl:if>
				<xsl:if test="$id='Hg-R-9'">Mercury in a cold cathode ray fluorescent lamp or external electrode fluorescent lamp (CCFL or EEFL) for a specific purpose</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">Containing 1000ppm or less of mercury in homogeneous material. : Impurities/recycled materials/contamination.</xsl:if>
				<xsl:if test="$id='J01-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='J01-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='Ni-J-1'">Cases containing intentionally added nickel, for use consisting of long-term contact with skin.</xsl:if>
				<xsl:if test="$id='Ni-J-2'">In cases where a product has an unclear purpose and nickel is intentionally added</xsl:if>
				<xsl:if test="$id='Ni-J-98'">Cases containing nickel other than Ni-J-1and Ni-J-2.(a product not staying in contact with skin for a considerable duration of time or containing impurities)</xsl:if>
				<xsl:if test="$id='Pb-B-1'">Batteries containing lead exceeding 40ppm by weight of the battery.</xsl:if>
				<xsl:if test="$id='Pb-E-1'">Aluminum　with a lead content up to 1.5% by weight  (0.4&lt;Pb&#8804;1.5wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-10'">Valve seats containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-11'">Pyrotechnic initiators containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-12'">Lead in solder for electric use that exceeds 1000ppm in homogeneous material (excluding solder on electronic circuit boards and glass)</xsl:if>
				<xsl:if test="$id='Pb-E-13'">Lead in solder for installing an electric or electronic component on an electronic circuit board or for a component terminal that exceeds 1000ppm in homogeneous material (excluding electrolysis aluminum capacitors)</xsl:if>
				<xsl:if test="$id='Pb-E-15'">Lead for soldering an air mass sensor on a glass surface that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-16'">Lead in solder for attaching a heat spreader and heat sink of a power semiconductor   that exceeds 1000ppm in homogeneous material (The chip size is 1cm2 at least. The electric current density is 1A/mm2 at least.)</xsl:if>
				<xsl:if test="$id='Pb-E-17'">Lead in solder for electric glazing on a glass surface that exceeds 1000ppm in homogeneous material (excluding solder for laminate glazing)</xsl:if>
				<xsl:if test="$id='Pb-E-18'">Lead in solder used for laminate glazing that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-19'">Lead content in a zincked serial steel sheet of up to 0.35% by weight, exceeding 1000 ppm in homogenous material</xsl:if>
				<xsl:if test="$id='Pb-E-20'">Lead in a dielectric ceramic for a capacitor part of ultrasonic sonar sensor, exceeding 1000 ppm in homogenous material</xsl:if>
				<xsl:if test="$id='Pb-E-21'">Lead-containing thermoelectric material used for automobile electrical equipment that reduces CO2 emission by exhaust heat exchange</xsl:if>
				<xsl:if test="$id='Pb-E-22'">Lead in dielectric ceramic materials used in capacitors with a rated voltage of 125V AC or 250V DC or lower, exceeding 1000ppm in homogeneous material and excluding the intended uses indicated in Pb-RE-12 and Pb-E-20.</xsl:if>
				<xsl:if test="$id='Pb-E-23'">Lead used for a compliant pin connector/system that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-E-3'">Lead, exceeding 1000ppm in homogeneous material, in bearing shells and bushes (alloy).</xsl:if>
				<xsl:if test="$id='Pb-E-4'">Batteries containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-5'">Vibration dampers containing lead, exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-E-6'">Lead, exceeding 1000ppm in homogeneous material, in vulcanising agents and stabilisers for elastomers in fluid handling and powertrain applications containing up to 0.5% lead by weight.</xsl:if>
				<xsl:if test="$id='Pb-E-7'">Lead, exceeding 1000ppm in homogeneous material, in bonding agents for elastomers in powertrain applications containing up to 0.5% lead by weight.</xsl:if>
				<xsl:if test="$id='Pb-J-0'">Cases containing intentionally added lead above 1000ppm in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Pb-J-1'">Containing lead above 300ppm in homogeneous material , for use in vinyl chloride wires.</xsl:if>
				<xsl:if test="$id='Pb-J-3'">Containing above 0.009% of lead per surface treatment layer such as coating in parts/material used in toys.<br/>(Select this item only when the surveyor states that your product is used for a toy.)</xsl:if>
				<xsl:if test="$id='Pb-J-4'">Use in products for children 12 years old and younger, containing lead exceeding 100ppm per surveying unit.<br/>(Select this item only when the surveyor states that your product is used for a surveyor's product for children of twelve years of age or under.)</xsl:if>
				<xsl:if test="$id='Pb-J-99'">Containing lead above 1000ppm in homogeneous material : Impurities/recycled materials/contamination</xsl:if>
				<xsl:if test="$id='Pb-R-0'">Cases containing 1000ppm or less of intentionally added lead in homogeneous material, excluding specified uses.</xsl:if>
				<xsl:if test="$id='Pb-R-1'">Aluminum materials containing 0.4% or less, exceeding 1000ppm in homogeneous material, of lead by weight</xsl:if>
				<xsl:if test="$id='Pb-R-10'">Lead, exceeding 1000ppm in homogeneous material, in linear incandescent lamps with silicate coated tubes.</xsl:if>
				<xsl:if test="$id='Pb-R-11'">Lead halide, containing lead exceeding 1000ppm in homogeneous material, as radiant agent in High Intensity Discharge(HID) lamps used for professional reprography applications.</xsl:if>
				<xsl:if test="$id='Pb-R-15'">Lead, exceeding 1000ppm in homogeneous material, in printing inks for the application of enamels on glasses, such as borosilicate and soda lime glasses</xsl:if>
				<xsl:if test="$id='Pb-R-17'">Lead contained in finishing agents of 0.65 mm or finer pitch components other than connectors, exceeding 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-18'">Lead, exceeding 1000ppm in homogeneous material, in solders for the soldering to machined through hole discoidal and planar array ceramic multilayer capacitors.</xsl:if>
				<xsl:if test="$id='Pb-R-2'">Lead in high-melting point solder (lead-based alloys containing 85 % by weight or more lead)</xsl:if>
				<xsl:if test="$id='Pb-R-22'">Lead, exceeding 1000ppm in homogeneous material, in lead bound in crystal glass as defined in Annex I (Categories 1,2,3 and 4) of Council Directive 69/493/EEC.</xsl:if>
				<xsl:if test="$id='Pb-R-23'">Lead, exceeding 1000ppm in homogeneous material, in soldering materials in mercury free flat fluorescent lamps (which e.g. are used for liquid crystal displays, design or industrial lighting).</xsl:if>
				<xsl:if test="$id='Pb-R-24'">Lead, exceeding 1000ppm in homogeneous material, in lead oxide in seal frit used for making window assemblies for Argon and Krypton laser tubes.</xsl:if>
				<xsl:if test="$id='Pb-R-25'">Lead, exceeding 1000ppm in homogeneous material, in solders for the soldering of thin copper wires of 100 &#181;m diameter and less in power transformers.</xsl:if>
				<xsl:if test="$id='Pb-R-26'">Lead, exceeding 1000ppm in homogeneous material, in cermet-based trimmer potentiometer elements.</xsl:if>
				<xsl:if test="$id='Pb-R-27'">Lead, exceeding 1000ppm in homogeneous material, in the plating layer of high voltage diodes on the basis of a zinc borate glass body.</xsl:if>
				<xsl:if test="$id='Pb-R-3'">Lead, exceeding 1000ppm in homogeneous material, in soldering for servers, storage and storage array systems, and network infrastructure equipment for switching, signaling, transmission and network management for telecommunication</xsl:if>
				<xsl:if test="$id='Pb-R-30'">Lead in white glass used for an optical purpose containing lead that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-31'">Lead in glass used for a filter glass or reflectance standards containing lead that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-32'">Lead in a shell (exterior casing) or bushing (a cylindrical component fitted inside a hole) of a bearing for a compressor containing coolant for heating, ventilation, air-conditioning, refrigeration, chilling, and HVACR, exceeding 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-33'">Lead (lead of 1% or less by weight) as activator in fluorescent powder of a discharge lamp used as a suntan lamp containing phosphor such as BPS (BaSi2O5:Pb) that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-R-34'">Lead, exceeding 1000ppm in homogeneous material, as activator in the fluorescent powder (1% lead by weight or less) of discharge lamps when used as sun tanning lamps containing phosphors such as BSP (BaSi2O5:Pb) as well as when used as speciality lamps for diazo-printing reprography, lithography, insect traps, photochemical and curing processes containing phosphors such as SMS ((Sr, Ba)2MgSi2O7:Pb).</xsl:if>
				<xsl:if test="$id='Pb-R-35'">Lead oxide, exceeding 1000ppm per unit of homogeneous material, used for structural elements on the surfaces of surface conduction electron emitter displays (SED), notably seal frit and frit ring.</xsl:if>
				<xsl:if test="$id='Pb-R-5'">Coating material for thermal conduction module C-rings, containing lead exceeding 1000ppm in homogeneous material.</xsl:if>
				<xsl:if test="$id='Pb-R-8'">Lead, exceeding 1000ppm in homogeneous material, in solder for connecting semiconductor dies and carriers in flip chip IC packages</xsl:if>
				<xsl:if test="$id='Pb-RE-10'">Lead used for a C-press compliant pin connector/system that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-12'">Lead in PTZ-based dielectric ceramic materials in a capacitor part of an IC chip or a discrete semiconductor (single function semiconductor), exceeding 1000 ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">Steel materials (including batch type molten zinc plating, free-machining steel) containing up to 0.35% of lead by weight, exceeding 1000 ppm in homogeneous material </xsl:if>
				<xsl:if test="$id='Pb-RE-4'">Copper alloy containing 4% or less, exceeding 1000ppm in homogeneous material, of lead by weight (e.g. brass, phosphor bronze)</xsl:if>
				<xsl:if test="$id='Pb-RE-5'">Lead in a cathode ray tube that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-6'">Lead up to 0.2% by weight in glass of a fluorescent tube that exceeds 1000ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-7'">An electricity or electronic component of other than dielectric ceramics (e.g., piezoelectric device), automobile valves, and automobile plugs in a capacitor that contains lead in glass, ceramic, or glass/ceramic matrix compounds, exceeding 1000 ppm in homogeneous material</xsl:if>
				<xsl:if test="$id='Pb-RE-8'">Lead in dielectric ceramic materials used in capacitors with a rated voltage of 125V AC or 250V DC or higher, exceeding 1000ppm in homogeneous material and excluding the intended uses indicated in Pb-RE-12 and Pb-E-20.</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">Containing 1000ppm or less of  lead in homogeneous material : Impurities/recycled materials/contamination.</xsl:if>
				<!--Ver.4.31追加分-->
				<xsl:if test="$id='B23-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='B23-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A48-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A48-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C38-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C38-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A49-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A49-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C39-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C39-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C40-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C40-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A50-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A50-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A51-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A51-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A52-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A52-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A53-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A53-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C41-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C41-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C42-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C42-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A54-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A54-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A55-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A55-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C43-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C43-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A56-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A56-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C44-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C44-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C45-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C45-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C46-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C46-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A57-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A57-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A58-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A58-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A59-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A59-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A60-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A60-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A61-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A61-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A62-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A62-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A63-J-0'">In cases where an individual substance(SVHC) exceeds 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='A63-J-98'">In cases where an individual substance(SVHC) does not exceed 0.1% by weight of a survey unit</xsl:if>
				<xsl:if test="$id='C47-J-0'">Cases containing intentionally added Di-isodecyl phthalate (DIDP).</xsl:if>
				<xsl:if test="$id='C47-J-98'">Cases containing impurities.</xsl:if>
				<xsl:if test="$id='C48-J-0'">Cases containing intentionally added Di-n-hexyl Phthalate.</xsl:if>
				<xsl:if test="$id='C48-J-98'">Cases containing impurities.</xsl:if>
			</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$ver=4.0">
				<xsl:if test="$id='A17-J-3'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A17-J-4'">除A17-J-3外,如有意图添加含有量时</xsl:if>
				<xsl:if test="$id='A17-J-98'">除A17-J-3,A17-J-4外,如有含有量时</xsl:if>
				<xsl:if test="$id='A18-J-3'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='A18-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='A19-J-0'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A19-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A20-J-0'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A20-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A21-J-0'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A21-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B02-J-0'">如有均质材料每单位含有意图添加PBB超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B02-J-99'">作为杂质,回收利用材料,污染物,均质材料每单位超过1000ppm的PBB含有量</xsl:if>
				<xsl:if test="$id='B02-R-0'">如有均质材料每单位含有意图添加PBB不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B02-R-98'">作为杂质,回收利用材料,污染物,均质材料每单位不超过1000ppm的PBB含有量</xsl:if>
				<xsl:if test="$id='B03-J-0'">如有均质材料每单位含有意图添加PBDE超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B03-J-99'">作为杂质,回收利用材料,污染物,均质材料每单位超过1000ppm的PBDE含有量</xsl:if>
				<xsl:if test="$id='B03-R-0'">如有均质材料每单位含有意图添加PBDE不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B03-R-98'">作为杂质,回收利用材料,污染物,均质材料每单位不超过1000ppm的PBDE含有量</xsl:if>
				<xsl:if test="$id='B05-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B05-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B06-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B06-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B07-J-1'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B07-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B08-J-1'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B08-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B09-J-1'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B09-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B10-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B10-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B11-J-0'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B11-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B12-J-0'">每调查单位的重量比如有超过6ppb的含有量时</xsl:if>
				<xsl:if test="$id='B12-J-98'">每调查单位的重量比如有不超过6ppb的含有量时</xsl:if>
				<xsl:if test="$id='B13-J-0'">在光刻平版印刷过程的光保护层或反镜面涂层中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-1'">用于胶片,文件或印刷版的照片涂层中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-2'">在镀铬,铬氧化处理,反转蚀刻中使用的喷雾抑制剂中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-3'">在无电解镍-聚四氟乙烯(PTFE)电镀中使用的喷雾抑制剂中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-4'">在金属被膜前的塑料基材蚀刻中使用的喷雾抑制剂中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-5'">作为物质,或者调剂组成成分,除B13-J-0,1,2,3,4的用途外,如有意图含有PFOS超过0.005wt%时</xsl:if>
				<xsl:if test="$id='B13-J-6'">作为模塑品的含有成分,除B13-J-0,1,2,3,4的用途外,如有意图含有PFOS的均质材料每单位超过0.1wt%时,或者纺织原料或其它被覆材料,除B13-J-0,1,2,3,4的用途外,被覆材料如有意图含有PFOS超过 1 μg/m2的含量时</xsl:if>
				<xsl:if test="$id='B13-J-7'">除特定用途(B13-J-0,1,2,3,4,5,6)外,如有意图含有PFOS时</xsl:if>
				<xsl:if test="$id='B13-J-92'">在光刻平版印刷过程的光保护层或反镜面涂层中,作为杂质如含有PFOS时</xsl:if>
				<xsl:if test="$id='B13-J-93'">用于胶片,文件或印刷版的照片涂层中,作为杂质如含有PFOS时</xsl:if>
				<xsl:if test="$id='B13-J-94'">在镀铬,铬氧化处理,反转蚀刻中使用的喷雾抑制剂中,作为杂质如含有PFOS时</xsl:if>
				<xsl:if test="$id='B13-J-95'">在无电解镍-聚四氟乙烯(PTFE)电镀中使用的喷雾抑制剂中,作为杂质如含有PFOS时</xsl:if>
				<xsl:if test="$id='B13-J-96'">在金属被膜前的塑料基材蚀刻中使用的喷雾抑制剂中,作为杂质如含有PFOS时</xsl:if>
				<xsl:if test="$id='B13-J-97'">作为物质,或者调剂组成成分,除B13-J-92,93,94,95,96的用途外,作为杂质如含有PFOS超过0.005wt%时</xsl:if>
				<xsl:if test="$id='B13-J-98'">除特定用途(B13-J-92,93,94,95,96,97,99)外,如含有PFOS杂质时</xsl:if>
				<xsl:if test="$id='B13-J-99'">作为模塑品的含有成分, 除B13-J-92,93,94,95,96的用途外,含有均质材料每单位0.1wt%以上的PFOS杂质时,或者纺织原料或其它被覆材料,除B13-J-92,93,94,95,96的用途外,被覆材料含有1μg/m2以上的PFOS杂质时</xsl:if>
				<xsl:if test="$id='B14-J-0'">在电视机及计算机的外装饰材料中有意图添加时</xsl:if>
				<xsl:if test="$id='B14-J-98'">如含有B14-J-0以外的时</xsl:if>
				<xsl:if test="$id='B15-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B15-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B16-J-0'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B16-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='C01-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C01-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C02-J-2'">其中含有的偶氮染料和颜料所还原出的特定芳香族重量比超过0.003%的皮革产品及纤维产品</xsl:if>
				<xsl:if test="$id='C02-J-98'">如含有C02-J-2以外的时</xsl:if>
				<xsl:if test="$id='C04-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C04-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C06-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C06-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C07-J-0'">纤维产品如含有重量比超过0.0075%时</xsl:if>
				<xsl:if test="$id='C07-J-1'">如含有意图添加时(C07-J-0除外)</xsl:if>
				<xsl:if test="$id='C07-J-98'">如含有杂质时(C07-J-0除外)</xsl:if>
				<xsl:if test="$id='C08-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C08-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C09-J-0'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='C09-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='C10-J-0'">用于儿童产品品目中,均质材料每单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='C10-J-98'">如含有C10-J-0以外的时</xsl:if>
				<xsl:if test="$id='Cd-B-1'">电池每重量超过5ppm的含镉电池</xsl:if>
				<xsl:if test="$id='Cd-E-2'">用于电气汽车电瓶的,均质材料每单位超过100ppm的含镉量</xsl:if>
				<xsl:if test="$id='Cd-J-0'">除特定用途外,如有均质材料每单位含有意图添加镉超过100ppm的情况时</xsl:if>
				<xsl:if test="$id='Cd-J-99'">作为杂质,回收利用材料,污染物,均质材料每单位超过100ppm的含镉量</xsl:if>
				<xsl:if test="$id='Cd-R-0'">除特定用途外,如有均质材料每单位含有意图添加镉不超过100ppm的情况时</xsl:if>
				<xsl:if test="$id='Cd-R-1'">除根据EU指令76/769/EEC的修改指令91/338/EEC已禁止的用途外,均质材料每单位超过100ppm的电气接点和电镀中的含镉量</xsl:if>
				<xsl:if test="$id='Cd-R-2'">光学玻璃及滤波玻璃的均质材料每单位超过100ppm的含镉量</xsl:if>
				<xsl:if test="$id='Cd-R-3'">用于硼硅玻璃珐琅涂层的印刷油墨,均质材料每单位超过100ppm的含镉量</xsl:if>
				<xsl:if test="$id='Cd-R-4'">直接连接在声压等级100dB(A)以上的高耐输入扬声器变换器音圈上的导体电气及机械性焊锡焊接部分合金中,均质材料每单位超过100ppm的含镉量</xsl:if>
				<xsl:if test="$id='Cd-R-5'">均质材料每单位超过100ppm的,专业音响机器中适用的光学耦合器用光敏电阻中的含镉量至2009年12月31日</xsl:if>
				<xsl:if test="$id='Cd-R-6'">均质材料每单位超过100ppm的,与氧化铍结合的铝上用到的厚膜焊锡膏中的含镉量及氧化镉中的含镉量</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">作为杂质,回收利用材料,污染物,均质材料每单位不超过100ppm的含镉量</xsl:if>
				<xsl:if test="$id='Cr-E-1'">均质材料每单位超过1000ppm的含六价铬防锈涂层(Cr-E-2以外)</xsl:if>
				<xsl:if test="$id='Cr-E-2'">用于车体部螺栓螺母组装部位的,均质材料每单位超过1000ppm的含六价铬防锈涂层</xsl:if>
				<xsl:if test="$id='Cr-E-3'">旅游车(吸附)冰箱的均质材料每单位超过1000ppm的含六价铬量</xsl:if>
				<xsl:if test="$id='Cr-J-0'">除特定用途外,如有均质材料每单位含有意图添加六价铬超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Cr-J-99'">作为杂质,回收利用材料,污染物,均质材料每单位超过1000ppm的含六价铬量</xsl:if>
				<xsl:if test="$id='Cr-R-0'">除特定用途外,如有均质材料每单位含有意图六价铬不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Cr-R-1'">用于冰箱中吸收型碳钢冷却系统的,均质材料每单位超过1000ppm的防锈六价铬</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">作为杂质,回收利用材料,污染物,均质材料每单位不超过1000ppm的含六价铬量</xsl:if>
				<xsl:if test="$id='Hg-B-1'">电池每重量超过1ppm的含汞量</xsl:if>
				<xsl:if test="$id='Hg-E-1'">放电灯及仪器盘显示屏中的均质材料每单位超过1000ppm的含汞量</xsl:if>
				<xsl:if test="$id='Hg-J-0'">除特定用途外,如有均质材料每单位含有意图添加汞超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Hg-J-99'">作为杂质,回收利用材料,污染物,均质材料每单位超过1000ppm的含汞量</xsl:if>
				<xsl:if test="$id='Hg-R-0'">除特定用途外,如有均质材料每单位含有意图添加汞不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Hg-R-1'">汞每1根不超过5mg的小荧光灯</xsl:if>
				<xsl:if test="$id='Hg-R-2'">汞每1根不超过以下限值的一般照明用直管形荧光灯\nhalophosphate(白色荧光体):10mg\ntriphosphate with normal lifetime(具有一般使用寿命的三波长荧光体):5mg\ntriphosphate with long lifetime(具有较长使用寿命的三波长荧光体):8mg</xsl:if>
				<xsl:if test="$id='Hg-R-3'">特殊用途的直管形荧光灯的均质材料每单位超过1000ppm的含汞量</xsl:if>
				<xsl:if test="$id='Hg-R-4'">在RoHS指令2002/95/EC的附属书中无特别规定的其它灯中的均质材料每单位超过1000ppm的含汞量</xsl:if>
				<xsl:if test="$id='Hg-R-5'">每个显示器中允许最多含有30mg的,作为抑制DC等离子显示器中发生阴极溅射反应的抑制剂使用到的,均质材料每单位超过1000ppm的汞含有量至2010年7月1日</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">作为杂质,回收利用材料,污染物,均质材料每单位不超过1000ppm的含汞量</xsl:if>
				<xsl:if test="$id='Ni-J-1'">在长期接触皮肤的用途中,如有含有意图添加的情况时,</xsl:if>
				<xsl:if test="$id='Ni-J-98'">如含有Ni-J-1以外的时</xsl:if>
				<xsl:if test="$id='Pb-B-1'">电池中每重量超过40ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-1'">机械加工用铝中的含铅量 (0.4&#60;Pb≦1.5wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-10'">阀座中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-11'">起爆剂中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-2'">机械加工用铝中的均质材料每单位超过1000ppm的含铅量 (Pb≦0.4wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-3'">轴承壳体/轴承(合金)中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-4'">蓄电池中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-5'">控制装置(减振器)中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-6'">不超过0.5wt%的流体元件,动力机车用弹性材料加硫剂及稳定剂中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-7'">不超过0.5wt%的动力机车用弹性材料粘结剂中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-8'">电子电路板及其它电气部件焊锡中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-J-0'">除特定用途外,如有均质材料每单位含有意图添加铅超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Pb-J-1'">电线及导线类被覆中的均质材料每单位超过300ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-J-2'">用于12岁以下儿童产品中的每调查单位超过300ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-J-3'">玩具用途的部件和材料,涂饰等表面处理层每单位超过0.009%的含铅量</xsl:if>
				<xsl:if test="$id='Pb-J-99'">作为杂质,回收利用材料,污染物,均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-0'">除特定用途外,如有均质材料每单位含有意图添加铅不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Pb-R-1'">均质材料每单位超过1000ppm的,铝材料中不超过0.4wt%的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-10'">具有硅酸盐(silicate)涂层的真空管的直线状白炽灯灯泡的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-11'">作为专业复印用高亮度放电(HID)灯中的放射介质,均质材料每单位超过1000ppm的卤化铅</xsl:if>
				<xsl:if test="$id='Pb-R-12'">作为包括BSP(BaSi2O5:Pb)等荧光体的晒黑用灯,以及作为包括SMS((Sr,Ba)2MgSi2O7:Pb)等荧光体的重氮印刷复印,光刻法,捕虫器,光化学,硬化处理专用放电灯荧光体的惰性剂,均质材料每单位超过1000ppm的含铅量(重量比1%以下的铅)</xsl:if>
				<xsl:if test="$id='Pb-R-13'">极其精小节能灯(ESL)作为主汞齐的特定组成物PbBiSn-Hg和PbInSn-Hg,以及作为辅助汞齐的PbSn-Hg的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-14'">用于粘结液晶显示器(LCD)的平面荧光灯前部和后部电路板的玻璃中,均质材料每单位超过1000ppm的铅氧化物的铅含量</xsl:if>
				<xsl:if test="$id='Pb-R-15'">用于硼硅玻璃珐琅涂层的印刷油墨,均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-16'">用于光纤通信系统的RIG(稀土族铁石榴石)法拉第转子中作为杂质,均质材料每单位超过1000ppm的含铅量至2009年12月31日</xsl:if>
				<xsl:if test="$id='Pb-R-17'">均质材料每单位超过1000ppm的,在节距不超过0.65mm,具有NiFe引线框接插器以外的细微节距元件经精加工处理部位的含铅量,以及在节距不超过0.65mm,具有铜引线框接插器以外的细微节距元件经精加工处理部位的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-18'">用于机械加工带穿孔圆盘状和平面阵列陶瓷多层电容器焊锡的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-19'">用于结构要素的等离子体显示盘(PDP)和表面传导电子发射显示盘(SED)的均质材料每单位超过1000ppm的含氧化铅特别是在前后玻璃电介质层,总线电极,黑带,地址电极,屏蔽接地,密封熔合,熔合环以及印刷电路板焊锡膏中含有的铅氧化物</xsl:if>
				<xsl:if test="$id='Pb-R-2'">高融点焊锡中的含铅量(包括超过85wt%的含铅量的铅合金)</xsl:if>
				<xsl:if test="$id='Pb-R-20'">黑光(BLB)灯玻璃框体中含有的铅氧化物的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-21'">作为用于高输出功率(规定在125dB SPL以上的音响功率电平下作几小时动作)扬声器的转换器焊锡铅合金中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-22'">在理事会指令69/493/EEC的附属书I(范畴1,2,3及4)中已作出定义的晶体玻璃的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-23'">用于不含汞的薄型荧光灯(例如,用于液晶显示器,设计或工业照明的)焊锡材料中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-24'">均质材料每单位超过1000ppm的,为形成氩氪激光器管中的窗口组成零部件时用到的密封熔接中的氧化铅中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-25'">均质材料每单位超过1000ppm的,焊接电力变压器中直径在100 μm以下的薄型铜线时用到的焊锡中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-26'">均质材料每单位超过1000ppm的,金属陶瓷微调电位器构成要素中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-27'">均质材料每单位超过1000ppm的,锌硼酸盐玻璃(zinc borat glass)体基板上的高压二极管的焊接层中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-3'">服务器,存储器和存储器阵列系统,交换,信号,传输及通信网络管理用的网络基础设施设备焊锡中的,均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-4'">顺应销接插器的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-5'">导热模块C链接用涂层材料的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-6'">光学玻璃及滤波玻璃的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-7'">微处理机的销与程序包焊接用焊锡由2种元素以上组成的不超过85wt%和超过80wt%的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-8'">Flip Chip IC程序包内半导体模件与支座焊接用焊锡中的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-9'">铅青铜制轴承体和绝缘套管的均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-1'">用于CRT/电子部件/荧光灯管的玻璃中的,均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-2'">电子陶瓷部件中,均质材料每单位超过1000ppm的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">均质材料每单位超过1000ppm的,钢材(包括镀锌,易削钢)中不超过0.35wt%的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-4'">均质材料每单位超过1000ppm的,铜合金(黄铜,磷青铜等)中不超过4wt%的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">作为杂质,回收利用材料,污染物,均质材料每单位不超过1000ppm的含铅量</xsl:if>
			</xsl:if>
			<xsl:if test="$ver=4.1">
				<xsl:if test="$id='A17-J-4'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='A17-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='A17-J-97'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A19-J-0'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A19-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A23-J-0'">均质材料每单位的锡含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='A23-J-98'">均质材料每单位的锡含有率的重量比不超过0.1%时</xsl:if>
				<xsl:if test="$id='A24-J-0'">•调查对象中存在的纺织品/皮革部\n•由于使用2液性室温硬化成型工具包(RTV-2密封剂成型工具包)，均质材料每单位的锡含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='A24-J-1'">如因产品用途不明含有有意添加时</xsl:if>
				<xsl:if test="$id='A24-J-98'">如含有A24-J-0, A24-J-1以外的时</xsl:if>
				<xsl:if test="$id='A28-J-4'">均质材料每单位的锡含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='A28-J-97'">均质材料每单位的锡含有率的重量比不超过0.1%时</xsl:if>
				<xsl:if test="$id='B02-J-0'">如有均质材料每单位含有意图添加PBB超过1000ppm的情况时。</xsl:if>
				<xsl:if test="$id='B02-J-99'">作为杂质、回收利用材料、污染物，均质材料每单位超过1000ppm的PBB含有量。</xsl:if>
				<xsl:if test="$id='B02-R-0'">如有均质材料每单位含有意图添加PBB不超过1000ppm的情况时。</xsl:if>
				<xsl:if test="$id='B02-R-98'">作为杂质、回收利用材料、污染物，均质材料每单位不超过1000ppm的PBB含有量。</xsl:if>
				<xsl:if test="$id='B03-J-0'">如有均质材料每单位含有意图添加PBDE超过1000ppm的情况时。</xsl:if>
				<xsl:if test="$id='B03-J-99'">作为杂质、回收利用材料、污染物，均质材料每单位超过1000ppm的PBDE含有量。</xsl:if>
				<xsl:if test="$id='B03-R-0'">如有均质材料每单位含有意图添加PBDE不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B03-R-98'">作为杂质、回收利用材料、污染物，均质材料每单位不超过1000ppm的PBDE含有量。</xsl:if>
				<xsl:if test="$id='B05-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B05-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B06-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B06-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B07-J-1'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B07-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='B08-J-2'">所含塑料超过25g 的零部件(印刷电路板单元中含有的除外)中，其塑料中含有的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='B08-J-3'">在多层印刷电路板中，多层板中的溴含量超过每调查单位重量比的0.09%时</xsl:if>
				<xsl:if test="$id='B08-J-4'">产品用途不明作为溴系阻燃剂含有有意添加时</xsl:if>
				<xsl:if test="$id='B08-J-97'">如含有B08-J-2、B08-J-3、B08-J-4以外的时</xsl:if>
				<xsl:if test="$id='B10-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B10-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B12-J-0'">每调查单位的重量比如有超过6ppb的含有量时</xsl:if>
				<xsl:if test="$id='B12-J-98'">每调查单位的重量比如有不超过6ppb的含有量时</xsl:if>
				<xsl:if test="$id='B13-J-0'">在光刻平版印刷过程的光保护层或反镜面涂层中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-1'">用于胶片、文件或印刷版的照片涂层中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-2'">在镀铬、铬氧化处理、反转蚀刻中使用的喷雾抑制剂中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-3'">在无电解镍-聚四氟乙烯(PTFE)电镀中使用的喷雾抑制剂中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-4'">在金属被膜前的塑料基材蚀刻中使用的喷雾抑制剂中意图添加的PFOS</xsl:if>
				<xsl:if test="$id='B13-J-5'">作为物质、或者调剂组成成分，除B13-J-0,1,2,3,4的用途外，如有意图含有PFOS超过0.005wt%时。</xsl:if>
				<xsl:if test="$id='B13-J-6'">作为模塑品的含有成分，除B13-J-0,1,2,3,4的用途外，如有意图含有PFOS的均质材料每单位超过0.1wt%时，或者纺织原料或其它被覆材料，除B13-J-0,1,2,3,4的用途外，被覆材料如有意图含有PFOS超过 1 μg/m2的含量时。</xsl:if>
				<xsl:if test="$id='B13-J-7'">除特定用途(B13-J-0,1,2,3,4,5,6)外，如有意图含有PFOS时。</xsl:if>
				<xsl:if test="$id='B13-J-92'">在光刻平版印刷过程的光保护层或反镜面涂层中，作为杂质如含有PFOS时。</xsl:if>
				<xsl:if test="$id='B13-J-93'">用于胶片、文件或印刷版的照片涂层中，作为杂质如含有PFOS时。</xsl:if>
				<xsl:if test="$id='B13-J-94'">在镀铬、铬氧化处理、反转蚀刻中使用的喷雾抑制剂中，作为杂质如含有PFOS时。</xsl:if>
				<xsl:if test="$id='B13-J-95'">在无电解镍-聚四氟乙烯(PTFE)电镀中使用的喷雾抑制剂中，作为杂质如含有PFOS时。</xsl:if>
				<xsl:if test="$id='B13-J-96'">在金属被膜前的塑料基材蚀刻中使用的喷雾抑制剂中，作为杂质如含有PFOS时。</xsl:if>
				<xsl:if test="$id='B13-J-97'">作为物质、或者调剂组成成分，除B13-J-92,93,94,95,96的用途外，作为杂质如含有PFOS超过0.005wt%时。</xsl:if>
				<xsl:if test="$id='B13-J-98'">除特定用途(B13-J-92,93,94,95,96,97,99)外，如含有PFOS杂质时。</xsl:if>
				<xsl:if test="$id='B13-J-99'">作为模塑品的含有成分, 除B13-J-92,93,94,95,96的用途外，含有均质材料每单位0.1wt%以上的PFOS杂质时，或者纺织原料或其它被覆材料，除B13-J-92,93,94,95,96的用途外，被覆材料含有1μg/m2以上的PFOS杂质时</xsl:if>
				<xsl:if test="$id='B15-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B15-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C01-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C01-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C02-J-2'">其中含有的偶氮染料和颜料所还原出的特定芳香族重量比超过0.003%的皮革产品及纤维产品。(使用在有皮革、纺织品的部位)</xsl:if>
				<xsl:if test="$id='C02-J-3'">如因产品用途不明含有有意添加时</xsl:if>
				<xsl:if test="$id='C02-J-98'">如含有C02-J-2、C02-J-3以外的时</xsl:if>
				<xsl:if test="$id='C04-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C04-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C06-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C06-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C07-J-0'">纤维产品如含有重量比超过0.0075%时</xsl:if>
				<xsl:if test="$id='C07-J-2'">调查对象中有木材时，如木材中有故意添加时</xsl:if>
				<xsl:if test="$id='C07-J-97'">如含有C07-J-0、C07-J-2以外的时</xsl:if>
				<xsl:if test="$id='C08-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C08-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C09-J-1'">用途为玩具、或是育儿产品，可塑化材料(均质材料每单位)每单位的BBP、 DBP、 DEHP合计含有率的重量比超过0.1%时 </xsl:if>
				<xsl:if test="$id='C09-J-2'">产品用途不明，可塑化材料(均质材料每单位)每单位的BBP、DBP、DEHP合计含有率的重量比超过0.1%时 </xsl:if>
				<xsl:if test="$id='C09-J-97'">C09-J-1、C09-J-2的用途以外，可塑化材料(均质材料每单位)每单位的BP、 DBP、DEHP合计含有率的重量比为0.1%以下时</xsl:if>
				<xsl:if test="$id='C10-J-0'">会进入儿童口中的玩具、或是用途为育儿产品，可塑化材料(均质材料每单位)每单位的DIDP、 DINP、 DNOP合计含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='C10-J-1'">产品用途不明，可塑化材料(均质材料每单位)每单位的DIDP、DINP、DNOP合计含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='C10-J-98'">C10-J-0、C10-J-1的用途以外，可塑化材料(均质材料每单位)每单位的DIDP、DINP、DNOP合计含有率的重量比为0.1%以下时</xsl:if>
				<xsl:if test="$id='C11-J-0'">均质材料每单位的重量比超过0.00001%时</xsl:if>
				<xsl:if test="$id='C11-J-98'">均质材料每单位的重量比不超过0.00001%时</xsl:if>
				<xsl:if test="$id='Cd-B-1'">电池每重量超过5ppm的含镉电池。</xsl:if>
				<xsl:if test="$id='Cd-E-2'">用于电气汽车电瓶的，均质材料每单位超过100ppm的含镉量。</xsl:if>
				<xsl:if test="$id='Cd-J-0'">除特定用途外，如有均质材料每单位含有意图添加镉超过100ppm的情况时。</xsl:if>
				<xsl:if test="$id='Cd-J-99'">作为杂质、回收利用材料、污染物，均质材料每单位超过100ppm的含镉量。</xsl:if>
				<xsl:if test="$id='Cd-R-0'">除特定用途外，如有均质材料每单位含有意图添加镉不超过100ppm的情况时。</xsl:if>
				<xsl:if test="$id='Cd-R-10'">均质材料每单位超过100ppm的，用于固态照明或显示系统的彩色转换II - VI 族发光二极管中的含镉量(每平方毫米发光区域中的镉小于10 微克)</xsl:if>
				<xsl:if test="$id='Cd-R-3'">用于硼硅玻璃珐琅涂层的印刷油墨，均质材料每单位超过100ppm的含镉量。</xsl:if>
				<xsl:if test="$id='Cd-R-4'">直接连接在声压等级100dB(A)以上的高耐输入扬声器变换器音圈上的导体电气及机械性焊锡焊接部分合金中，均质材料每单位超过100ppm的含镉量。</xsl:if>
				<xsl:if test="$id='Cd-R-6'">均质材料每单位超过100ppm的，与氧化铍结合的铝上用到的厚膜焊锡膏中的含镉量及氧化镉中的含镉量。</xsl:if>
				<xsl:if test="$id='Cd-R-7'">均质材料每单位超过100ppm的，热镕断体中的镉及其化合物的含有量</xsl:if>
				<xsl:if test="$id='Cd-R-8'">均质材料每单位超过100ppm的，电触点中的镉及其化合物的含有量</xsl:if>
				<xsl:if test="$id='Cd-R-9'">均质材料每单位超过100ppm的，滤光玻璃和反射率标准片所用的玻璃中的含镉量</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">作为杂质、回收利用材料、污染物，均质材料每单位不超过100ppm的含镉量。</xsl:if>
				<xsl:if test="$id='Cr-E-1'">均质材料每单位超过1000ppm的含六价铬防锈涂层(下列Cr-E-2以外的)。</xsl:if>
				<xsl:if test="$id='Cr-E-2'">用于车体部螺栓螺母组装部位的，均质材料每单位超过1000ppm的含六价铬防锈涂层。</xsl:if>
				<xsl:if test="$id='Cr-E-3'">旅游车(吸附)冰箱的均质材料每单位超过1000ppm的含六价铬量。</xsl:if>
				<xsl:if test="$id='Cr-J-0'">除特定用途外，如有均质材料每单位含有意图添加六价铬超过1000ppm的情况时。</xsl:if>
				<xsl:if test="$id='Cr-J-99'">作为杂质、回收利用材料、污染物，均质材料每单位超过1000ppm的含六价铬量。</xsl:if>
				<xsl:if test="$id='Cr-R-0'">除特定用途外，如有均质材料每单位含有意图六价铬不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Cr-R-2'">均质材料每单位超过1000ppm的，在吸收式电冰箱中作为碳钢冷却系统的防腐剂，含量不超过其重量的0.75%的六价铬含量</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">作为杂质、回收利用材料、污染物，均质材料每单位不超过1000ppm的含六价铬量。</xsl:if>
				<xsl:if test="$id='Hg-B-1'">电池每重量超过1ppm的含汞量。</xsl:if>
				<xsl:if test="$id='Hg-E-1'">放电灯及仪器盘显示屏中的含汞量</xsl:if>
				<xsl:if test="$id='Hg-J-0'">除特定用途外，如有均质材料每单位含有意图添加汞超过1000ppm的情况时。</xsl:if>
				<xsl:if test="$id='Hg-J-99'">作为杂质、回收利用材料、污染物，均质材料每单位超过1000ppm的含汞量。</xsl:if>
				<xsl:if test="$id='Hg-R-0'">除特定用途外，如有均质材料每单位含有意图添加汞不超过1000ppm的情况时。</xsl:if>
				<xsl:if test="$id='Hg-R-10'">Hg-R-6、Hg-R-7、Hg-R-8、Hg-R-9以外的低压放电灯中的汞(每灯)</xsl:if>
				<xsl:if test="$id='Hg-R-11'">显色指数大于60 的通用高压钠(蒸汽)灯中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-12'">其它(Hg-R-11)通用照明高压钠(蒸汽)灯中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-13'">高压汞(蒸汽)灯(HPMV)中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-14'">金属卤化灯(MH)中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-15'">在2002/95/EC的附属书(或汞的使用用途分类)中无特别规定特殊目的的其他放电灯中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-6'">单端(紧凑)荧光灯中的汞含量不得超过(每灯)：\n(a)小于 30 W 的通用照明灯：5mg\n(b)大于等于 30W且小于50W的通用照明灯： 5mg\n(c)大于等于50W且小于150W的通用照明灯：5 mg\n(d)大于等于150W 的通用照明灯：15mg\n(e)环形或方形结构且灯管直径小于等于 17mm的通用照明灯：17mg\n(f)特殊用途灯：5mg</xsl:if>
				<xsl:if test="$id='Hg-R-7'">通用照明双端线型荧光灯中的汞含量不超过(每灯)：\n(a)正常寿命的三频荧光灯且管直径小于9mm(例：T2)：每灯4mg\n(b)正常寿命的三频荧光灯且管直径大于等于 9mm小于等于17mm(例：T5)：5mg\n(c)正常寿命的三频荧光灯且管直径大于 17mm小于等于28mm(例：T8)：5mg\n(d)正常寿命的三频荧光灯且管直径大于 28mm(例：T12)：5mg\n(e)长寿命三频荧光灯 (> 25,000 h)：8mg</xsl:if>
				<xsl:if test="$id='Hg-R-8'">其他荧光灯中汞含量不超过(每灯)：\n(a)直径大于28mm的线性盐磷酸盐灯(例：T10 和T12)：10mg\n(b)非线性盐磷酸盐灯(所有直径)：15mg\n(c)直径大于17mm的非线性三频荧光粉灯(例：T9)：15mg\n(d)其他通用照明和特殊用途的灯(如感应灯)：15mg</xsl:if>
				<xsl:if test="$id='Hg-R-9'">特殊用途的冷阴极荧光灯和外部电极荧光灯(CCFL 和EEFL)中的汞</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">作为杂质、回收利用材料、污染物，均质材料每单位不超过1000ppm的含汞量。</xsl:if>
				<xsl:if test="$id='J01-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='J01-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='Ni-J-1'">在长期接触皮肤的用途中，如有含有意图添加的情况时，</xsl:if>
				<xsl:if test="$id='Ni-J-2'">如因产品用途不明含有有意添加时</xsl:if>
				<xsl:if test="$id='Ni-J-98'">如含有Ni-J-1,Ni-J-2以外的时(用于不会长时间接触皮肤的用途中或杂质)</xsl:if>
				<xsl:if test="$id='Pb-B-1'">电池中每重量超过40ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-E-1'">铝中的铅 (0.4&#60;Pb≦1.5wt%)。</xsl:if>
				<xsl:if test="$id='Pb-E-10'">阀座中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-E-11'">起爆剂中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-E-12'">均质材料每单位超过1000ppm的，用于电气方面焊锡中的铅(不包括电路基板和玻璃的焊锡)</xsl:if>
				<xsl:if test="$id='Pb-E-13'">均质材料每单位超过1000ppm的，将电气和电子部件安装到电路基板时的焊锡及零部件终端使用的焊锡中的铅(电解铝电容器除外)</xsl:if>
				<xsl:if test="$id='Pb-E-14'">均质材料每单位超过1000ppm的，电解铝电容器终端中的铅</xsl:if>
				<xsl:if test="$id='Pb-E-15'">均质材料每单位超过1000ppm的，空气质量传感器玻璃上的焊锡中的铅</xsl:if>
				<xsl:if test="$id='Pb-E-16'">均质材料每单位超过1000ppm的，将散热片安装到功率半导体散热器时的焊锡中的铅(芯片尺寸至少1cm2，电流密度至少1A/mm2)</xsl:if>
				<xsl:if test="$id='Pb-E-17'">均质材料每单位超过1000ppm的，玻璃中电釉用途焊锡中的含铅量(夹层玻璃焊锡除外)</xsl:if>
				<xsl:if test="$id='Pb-E-18'">均质材料每单位超过1000ppm的，用于夹层玻璃的焊锡中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-3'">轴承壳体/轴承(合金)中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-E-4'">蓄电池中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-E-5'">控制装置(减振器)中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-E-6'">不超过0.5wt%的流体元件、动力机车用弹性材料加硫剂及稳定剂中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-E-7'">不超过0.5wt%的动力机车用弹性材料粘结剂中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-J-0'">除特定用途外，如有均质材料每单位含有意图添加铅超过1000ppm的情况时。</xsl:if>
				<xsl:if test="$id='Pb-J-1'">电线及导线类被覆中的均质材料每单位超过300ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-J-2'">用于12岁以下儿童产品中的每调查单位超过300ppm的含铅量。\n(本项目仅在调查方指示12岁以下儿童产品中使用到铅时选择)</xsl:if>
				<xsl:if test="$id='Pb-J-3'">玩具用途的部件和材料，涂饰等表面处理层每单位超过0.009%的含铅量。\n(本项目仅在受调查方表示玩具用途中使用到铅时选择)</xsl:if>
				<xsl:if test="$id='Pb-J-99'">作为杂质、回收利用材料、污染物，均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-0'">除特定用途外，如有均质材料每单位含有意图添加铅不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Pb-R-1'">均质材料每单位超过1000ppm的，铝材料中不超过0.4wt%的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-10'">具有硅酸盐(silicate)涂层的真空管的直线状白炽灯灯泡的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-11'">作为专业复印用高亮度放电(HID)灯中的放射介质，均质材料每单位超过1000ppm的卤化铅。</xsl:if>
				<xsl:if test="$id='Pb-R-13'">极其精小节能灯(ESL)作为主汞齐的特定组成物PbBiSn-Hg和PbInSn-Hg、以及作为辅助汞齐的PbSn-Hg的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-14'">用于粘结液晶显示器(LCD)的平面荧光灯前部和后部电路板的玻璃中，均质材料每单位超过1000ppm的铅氧化物的铅含量。</xsl:if>
				<xsl:if test="$id='Pb-R-15'">用于硼硅玻璃珐琅涂层的印刷油墨，均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-17'">均质材料每单位超过1000ppm的，在节距不超过0.65mm的连接器之外的窄节距元件的整理剂中的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-18'">用于机械加工带穿孔圆盘状和平面阵列陶瓷多层电容器焊锡的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-2'">高融点焊锡中的含铅量(含铅量85wt%以上的铅合金)</xsl:if>
				<xsl:if test="$id='Pb-R-20'">黑光(BLB)灯玻璃框体中含有的铅氧化物的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-21'">作为用于高输出功率(规定在125dB SPL以上的音响功率电平下作几小时动作)扬声器的转换器焊锡铅合金中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-22'">在理事会指令69/493/EEC的附属书I(范畴1、2、3及4)中已作出定义的晶体玻璃的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-23'">用于不含汞的薄型荧光灯(例如，用于液晶显示器、设计或工业照明的)焊锡材料中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-24'">均质材料每单位超过1000ppm的，为形成氩氪激光器管中的窗口组成零部件时用到的密封熔接中的氧化铅中的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-25'">均质材料每单位超过1000ppm的，焊接电力变压器中直径在100 μm以下的薄型铜线时用到的焊锡中的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-26'">均质材料每单位超过1000ppm的，金属陶瓷微调电位器构成要素中的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-27'">均质材料每单位超过1000ppm的，锌硼酸盐玻璃(zinc borat glass)体基板上的高压二极管的焊接层中的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-3'">服务器、存储器和存储器阵列系统、交换、信号、传输及通信网络管理用的网络基础设施设备焊锡中的，均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-30'">均质材料每单位超过1000ppm的，光学用途中使用到的白色玻璃中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-31'">均质材料每单位超过1000ppm的，在滤光玻璃和反射率标准片所用的玻璃中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-32'">均质材料每单位超过1000ppm的，用于加热、换气、空气调节及冷藏、冷冻、换气(暖通空调制冷：HVACR)的含制冷剂的压缩机所用的轴承壳(外壳)及轴承衬套(嵌入孔的内面的圆柱形零部件)中的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-33'">均质材料每单位超过1000ppm的，当放电灯被用作含BSP(BaSi2O5:Pb)等荧光体的仿日晒灯时，放电灯荧光粉中作为催化剂含有的铅的含有量(铅的重量比不到1%)</xsl:if>
				<xsl:if test="$id='Pb-R-34'">作为包括BSP(BaSi2O5:Pb)等荧光体的晒黑用灯，以及作为包括SMS((Sr,Ba)2MgSi2O7:Pb)等荧光体的重氮印刷复印、光刻法、捕虫器、光化学、硬化处理专用放电灯荧光体的惰性剂，均质材料每单位超过1000ppm的含铅量(重量比1%以下的铅)。</xsl:if>
				<xsl:if test="$id='Pb-R-35'">表面传导电子发射显示器(SED)的表面构件中，均质材料每单位含量超过1000ppm的氧化铅。特别是用于密封熔合、熔合环中的氧化铅。</xsl:if>
				<xsl:if test="$id='Pb-R-5'">导热模块Ｃ链接用涂层材料的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-7'">微处理机的销与程序包焊接用焊锡由2种元素以上组成的不超过85wt%和超过80wt%的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-R-8'">Flip Chip IC程序包内半导体模件与支座焊接用焊锡中的均质材料每单位超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-RE-10'">均质材料每单位超过1000ppm的，C Press顺应针联接器系统中使用的铅的含量</xsl:if>
				<xsl:if test="$id='Pb-RE-11'">均质材料每单位超过1000ppm的，C Press以外顺应针联接器系统中使用的铅的含量</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">均质材料每单位超过1000ppm的，钢材(包括镀锌、易削钢)中不超过0.35wt%的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-RE-4'">均质材料每单位超过1000ppm的，铜合金(黄铜、磷青铜等)中不超过4wt%的含铅量。</xsl:if>
				<xsl:if test="$id='Pb-RE-5'">均质材料每单位超过1000ppm的，阴极射线管中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-6'">均质材料每单位超过1000ppm的，重量比不超过0.2%的萤光管玻璃中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-7'">均质材料每单位超过1000ppm的，玻璃/陶瓷或玻璃/陶瓷基化合物中含铅的电气电子部件(除电容器中的介电陶瓷外)中的含铅量。(例如：压电装置)</xsl:if>
				<xsl:if test="$id='Pb-RE-8'">均质材料每单位超过1000ppm的，额定电压为125V AC或250V DC或更高的电容器介电陶瓷中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-9'">均质材料每单位超过1000ppm的，额定电压小于125V AC或250V DC的电容器介电陶瓷中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">作为杂质、回收利用材料、污染物，均质材料每单位不超过1000ppm的含铅量。</xsl:if>
				<xsl:if test="$id='A17-J-3'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A20-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A21-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A22-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A25-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A26-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A27-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B09-J-1'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B11-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B16-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C12-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C13-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C14-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C15-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C16-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C17-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C18-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C19-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C20-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A20-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A21-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A22-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A25-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A26-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A27-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B09-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B11-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B16-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C12-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C13-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C14-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C15-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C16-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C17-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C18-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C19-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C20-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
			</xsl:if>
			<xsl:if test="$ver=4.2">
				<xsl:if test="$id='A17-J-3'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A17-J-4'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='A17-J-97'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A17-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='A19-J-0'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A19-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A20-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A20-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A21-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A21-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A22-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A22-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A23-J-1'">单组分和双组分室温硫化密封胶(RTV-1 RTV-2密封胶)以及粘接剂中,均质材料每单位的锡含量按重量计超过0.1%时</xsl:if>
				<xsl:if test="$id='A23-J-2'">在模塑品上涂敷的､含DBT化合物(作为催化剂使用)的､涂料以及涂层中,均质材料每单位的锡含量按重量计超过0.1%时</xsl:if>
				<xsl:if test="$id='A23-J-3'">软聚氯乙烯型材,不管其本身就是软的,还是与硬PVC同时挤出,其均质材料每单位的锡含量按重量计超过0.1%时</xsl:if>
				<xsl:if test="$id='A23-J-4'">除特定用途(A23-J-1,2,3)外,均质材料每单位的锡含量按重量计超过0.1%时｡</xsl:if>
				<xsl:if test="$id='A23-J-98'">均质材料每单位的锡含有率的重量比不超过0.1%时</xsl:if>
				<xsl:if test="$id='A24-J-0'">•调查对象中存在的纺织品/皮革部<br/>•由于使用2液性室温硬化成型工具包(RTV-2密封剂成型工具包),均质材料每单位的锡含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='A24-J-1'">如因产品用途不明含有有意添加时</xsl:if>
				<xsl:if test="$id='A24-J-98'">如含有A24-J-0, A24-J-1以外的时</xsl:if>
				<xsl:if test="$id='A25-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A25-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A26-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A26-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A27-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A27-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A28-J-4'">均质材料每单位的锡含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='A28-J-5'">在A28-J-4以外的用途中,如含有故意添加时｡</xsl:if>
				<xsl:if test="$id='A28-J-97'">均质材料每单位的锡含有率的重量比不超过0.1%时</xsl:if>
				<xsl:if test="$id='A29-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A29-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A30-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A30-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A31-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A31-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B02-J-0'">如有均质材料每单位含有意图添加PBB超过1000ppm的情况时｡</xsl:if>
				<xsl:if test="$id='B02-J-99'">作为杂质､回收利用材料､污染物,均质材料每单位超过1000ppm的PBB含有量｡</xsl:if>
				<xsl:if test="$id='B02-R-0'">如有均质材料每单位含有意图添加PBB不超过1000ppm的情况时｡</xsl:if>
				<xsl:if test="$id='B02-R-98'">作为杂质､回收利用材料､污染物,均质材料每单位不超过1000ppm的PBB含有量｡</xsl:if>
				<xsl:if test="$id='B03-J-0'">如有均质材料每单位含有意图添加PBDE超过1000ppm的情况时｡</xsl:if>
				<xsl:if test="$id='B03-J-99'">作为杂质､回收利用材料､污染物,均质材料每单位超过1000ppm的PBDE含有量｡</xsl:if>
				<xsl:if test="$id='B03-R-0'">如有均质材料每单位含有意图添加PBDE不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B03-R-98'">作为杂质､回收利用材料､污染物,均质材料每单位不超过1000ppm的PBDE含有量｡</xsl:if>
				<xsl:if test="$id='B05-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B05-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B06-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B06-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B08-J-3'">在多层印刷电路板中,多层板中的溴含量超过每调查单位重量比的0.09%时</xsl:if>
				<xsl:if test="$id='B08-J-4'">产品用途不明作为溴系阻燃剂含有有意添加时</xsl:if>
				<xsl:if test="$id='B08-J-5'">多层印刷电路板中的除外,塑料材料中溴的含有量总计(按重量计)超过0.1%时</xsl:if>
				<xsl:if test="$id='B08-J-97'">如含有B08-J-3､B08-J-4､B08-J-5以外的时</xsl:if>
				<xsl:if test="$id='B09-J-1'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B09-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B10-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B10-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B11-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B11-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B12-J-0'">每调查单位的重量比如有超过6ppb的含有量时</xsl:if>
				<xsl:if test="$id='B12-J-98'">每调查单位的重量比如有不超过6ppb的含有量时</xsl:if>
				<xsl:if test="$id='B13-J-0'">在光刻平板印刷过程的光保护层或防反射涂层中,含有故意添加的PFOS时｡ </xsl:if>
				<xsl:if test="$id='B13-J-1'">用于胶片､文件或印刷版的照片涂层中,含有故意添加的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-2'">在镀铬､铬氧化处理､反转蚀刻中使用的喷雾抑制剂中,含有故意添加的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-3'">在无电解镍-聚四氟乙烯(PTFE)电镀中使用的喷雾抑制剂中,含有故意添加的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-4'">在金属被膜前的塑料基材蚀刻中使用的喷雾抑制剂中,含有故意添加的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-6'">除特定用途(B13-J-0,1,2,3,4)外,作为模塑品的含有成分,均质材料每单位含有故意添加的大于等于0.1wt%的PFOS时,或者纺织原料或其他被覆材料中含有故意添加的大于等于被覆材料 1μg/m2的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-7'">除特定用途(B13-J-0,1,2,3,4,6,8,9)外,含有故意添加的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-8'">除特定用途(B13-J-0,1,2,3,4,6,7,9)外,均质材料每单位含有大于等于0.1wt%的作为杂质的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-89'">除特定用途(B13-J-92,93,94,95,96)外,作为物质或者调剂组成成分,含有小于等于0.001wt%的作为杂质的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-9'">除特定用途(B13-J-0,1,2,3,4,6,7,8)外,作为物质或者调剂组成成分,含有超过0.001wt%的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-90'">除特定用途(B13-J-92,93,94,95,96)外,作为模塑品的含有成分,均质材料每单位含有不足0.1wt%的作为杂质的PFOS时,或者纺织原料或其他被覆材料中含有不足被覆材料 1μg/m2的作为杂质的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-91'">除特定用途(B13-J-92,93,94,95,96,89,90)外,含有作为杂质的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-92'">在光刻平板印刷过程的光保护层或防反射涂层中,含有不足1 μg/m2的作为杂质的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-93'">用于胶片､文件或印刷版的照片涂层中,含有不足1 μg/m2的作为杂质的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-94'">在镀铬､铬氧化处理､反转蚀刻中使用的喷雾抑制剂中,含有小于等于0.001wt%的作为杂质的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-95'">在无电解镍-聚四氟乙烯(PTFE)电镀中使用的喷雾抑制剂中,含有小于等于0.001wt%的作为杂质的PFOS时｡</xsl:if>
				<xsl:if test="$id='B13-J-96'">在金属被膜前的塑料基材蚀刻中使用的喷雾抑制剂中,含有小于等于0.001wt%的作为杂质的PFOS时｡</xsl:if>
				<xsl:if test="$id='B15-J-2'">均质材料每单位的重量比超过0.005%时</xsl:if>
				<xsl:if test="$id='B15-J-97'">均质材料每单位的重量比不超过0.005%时</xsl:if>
				<xsl:if test="$id='B16-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B16-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B17-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B17-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B18-J-0'">用于多层印刷电路板中,每调查单位的重量比如有超过0.09%的氯含有量时｡</xsl:if>
				<xsl:if test="$id='B18-J-1'">多层印刷电路板中的除外,塑料材料中氯的含有量总计(按重量计)超过0.1%时</xsl:if>
				<xsl:if test="$id='B18-J-2'">产品用途不明,作为氯系阻燃剂含有有意添加时｡</xsl:if>
				<xsl:if test="$id='B18-J-98'">如含有B18-J-0､B18-J-1､B18-J-2以外的时</xsl:if>
				<xsl:if test="$id='B19-J-0'">多层印刷电路板中的除外,塑料材料中氯的含有量总计(按重量计)超过0.1%时</xsl:if>
				<xsl:if test="$id='B19-J-98'">多层印刷电路板中的除外,塑料材料中氯的含有量总计(按重量计)不超过0.1%时</xsl:if>
				<xsl:if test="$id='B20-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B20-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C01-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C01-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C02-J-2'">其中含有的偶氮染料和颜料所还原出的特定芳香族重量比超过0.003%的皮革产品及纤维产品｡(使用在有皮革､纺织品的部位)</xsl:if>
				<xsl:if test="$id='C02-J-3'">如因产品用途不明含有有意添加时</xsl:if>
				<xsl:if test="$id='C02-J-98'">如含有C02-J-2､C02-J-3以外的时</xsl:if>
				<xsl:if test="$id='C04-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C04-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C06-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C06-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C07-J-0'">纺织产品如含有重量比超过0.0075%时</xsl:if>
				<xsl:if test="$id='C07-J-2'">调查对象中有木材时,如木材中有故意添加时</xsl:if>
				<xsl:if test="$id='C07-J-97'">如含有C07-J-0､C07-J-2以外的时</xsl:if>
				<xsl:if test="$id='C08-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C08-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C09-J-1'">用途为玩具､或是育儿产品,可塑化材料(均质材料每单位)每单位的BBP､ DBP､ DEHP合计含有率的重量比超过0.1%时  </xsl:if>
				<xsl:if test="$id='C09-J-2'">产品用途不明,可塑化材料(均质材料每单位)每单位的BBP､DBP､DEHP合计含有率的重量比超过0.1%时 </xsl:if>
				<xsl:if test="$id='C09-J-96'">用于C09-J-1的用途以外的产品,可塑化材料(均质材料每单位)每单位的BBP､ DBP､DEHP合计含有率按重量计超过0.1%时｡</xsl:if>
				<xsl:if test="$id='C09-J-97'">C09-J-1､C09-J-2的用途以外,可塑化材料(均质材料每单位)每单位的BP､ DBP､DEHP合计含有率的重量比为0.1%以下时</xsl:if>
				<xsl:if test="$id='C10-J-0'">会进入儿童口中的玩具､或是用途为育儿产品,可塑化材料(均质材料每单位)每单位的DIDP､ DINP､ DNOP合计含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='C10-J-1'">产品用途不明,可塑化材料(均质材料每单位)每单位的DIDP､DINP､DNOP合计含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='C10-J-97'">用于C10-J-0的用途以外的产品,可塑化材料(均质材料每单位)每单位的DIDP､DINP､DNOP合计含量按重量计超过0.1%时｡</xsl:if>
				<xsl:if test="$id='C10-J-98'">C10-J-0､C10-J-1的用途以外,可塑化材料(均质材料每单位)每单位的DIDP､DINP､DNOP合计含有率的重量比为0.1%以下时</xsl:if>
				<xsl:if test="$id='C11-J-0'">均质材料每单位的重量比超过0.00001%时</xsl:if>
				<xsl:if test="$id='C11-J-98'">均质材料每单位的重量比不超过0.00001%时</xsl:if>
				<xsl:if test="$id='C12-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C12-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C13-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C13-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C14-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C14-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C15-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C15-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C16-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C16-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C17-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C17-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C18-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C18-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C19-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C19-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C20-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C20-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C21-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C21-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C22-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C22-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C23-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C23-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C24-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C24-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C25-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C25-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C26-J-0'">在各对象物质单位中，每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C26-J-98'">在各对象物质单位中，每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='Cd-B-2'">电池每重量超过10ppm的含镉电池｡</xsl:if>
				<xsl:if test="$id='Cd-E-2'">用于电气汽车电瓶的,均质材料每单位超过100ppm的含镉量｡</xsl:if>
				<xsl:if test="$id='Cd-J-0'">除特定用途外,如有均质材料每单位含有意图添加镉超过100ppm的情况时｡</xsl:if>
				<xsl:if test="$id='Cd-J-99'">作为杂质､回收利用材料､污染物,均质材料每单位超过100ppm的含镉量｡</xsl:if>
				<xsl:if test="$id='Cd-R-0'">除特定用途外,如有均质材料每单位含有意图添加镉不超过100ppm的情况时｡</xsl:if>
				<xsl:if test="$id='Cd-R-10'">均质材料每单位超过100ppm的,用于固态照明或显示系统的彩色转换II - VI 族发光二极管中的含镉量(每平方毫米发光区域中的镉小于10 微克)</xsl:if>
				<xsl:if test="$id='Cd-R-11'">均质材料每单位超过100ppm的,用于专业音响设备的模拟光耦的光敏电阻中的含镉量｡</xsl:if>
				<xsl:if test="$id='Cd-R-3'">用于硼硅玻璃珐琅涂层的印刷油墨,均质材料每单位超过100ppm的含镉量｡</xsl:if>
				<xsl:if test="$id='Cd-R-4'">直接连接在声压等级100dB(A)以上的高耐输入扬声器变换器音圈上的导体电气及机械性焊锡焊接部分合金中,均质材料每单位超过100ppm的含镉量｡</xsl:if>
				<xsl:if test="$id='Cd-R-6'">均质材料每单位超过100ppm的,与氧化铍结合的铝上用到的厚膜焊锡膏中的含镉量及氧化镉中的含镉量｡</xsl:if>
				<xsl:if test="$id='Cd-R-7'">均质材料每单位超过100ppm的,热镕断体中的镉及其化合物的含有量</xsl:if>
				<xsl:if test="$id='Cd-R-8'">均质材料每单位超过100ppm的,电触点中的镉及其化合物的含有量</xsl:if>
				<xsl:if test="$id='Cd-R-9'">均质材料每单位超过100ppm的,滤光玻璃和反射率标准片所用的玻璃中的含镉量</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">作为杂质､回收利用材料､污染物,均质材料每单位不超过100ppm的含镉量｡</xsl:if>
				<xsl:if test="$id='Cr-E-1'">均质材料每单位超过1000ppm的含六价铬防锈涂层(下列Cr-E-2以外的)｡</xsl:if>
				<xsl:if test="$id='Cr-E-2'">用于车体部螺栓螺母组装部位的,均质材料每单位超过1000ppm的含六价铬防锈涂层｡</xsl:if>
				<xsl:if test="$id='Cr-E-3'">旅游车(吸附)冰箱的均质材料每单位超过1000ppm的不超过0.75wt%的含六价铬量｡</xsl:if>
				<xsl:if test="$id='Cr-J-0'">除特定用途外,如有均质材料每单位含有意图添加六价铬超过1000ppm的情况时｡</xsl:if>
				<xsl:if test="$id='Cr-J-99'">作为杂质､回收利用材料､污染物,均质材料每单位超过1000ppm的含六价铬量｡</xsl:if>
				<xsl:if test="$id='Cr-R-0'">除特定用途外,如有均质材料每单位含有意图六价铬不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Cr-R-2'">均质材料每单位超过1000ppm的,在吸收式电冰箱中作为碳钢冷却系统的防腐剂,含量不超过其重量的0.75%的六价铬含量</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">作为杂质､回收利用材料､污染物,均质材料每单位不超过1000ppm的含六价铬量｡</xsl:if>
				<xsl:if test="$id='Hg-B-1'">故意添加或电池每重量超过1ppm的含汞量</xsl:if>
				<xsl:if test="$id='Hg-E-1'">放电灯及仪器盘显示屏中的含汞量</xsl:if>
				<xsl:if test="$id='Hg-J-0'">除特定用途外,如有均质材料每单位含有意图添加汞超过1000ppm的情况时｡</xsl:if>
				<xsl:if test="$id='Hg-J-99'">作为杂质､回收利用材料､污染物,均质材料每单位超过1000ppm的含汞量｡</xsl:if>
				<xsl:if test="$id='Hg-R-0'">除特定用途外,如有均质材料每单位含有意图添加汞不超过1000ppm的情况时｡</xsl:if>
				<xsl:if test="$id='Hg-R-11'">显色指数大于60 的通用高压钠(蒸汽)灯中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-12'">其它(Hg-R-11)通用照明高压钠(蒸汽)灯中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-13'">高压汞(蒸汽)灯(HPMV)中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-14'">金属卤化灯(MH)中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-15'">在2011/65/EU的附属书(或汞的使用用途分类)中无特别规定特殊目的的其他放电灯中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-16'">单端(紧凑)荧光灯中的汞含量不得超过(每灯):<br/>(a)小于 30 W 的通用照明灯:3.5mg<br/>(b)大于等于 30W且小于50W的通用照明灯:3.5mg<br/>(c)大于等于50W且小于150W的通用照明灯:5 mg<br/>(d)大于等于150W 的通用照明灯:15mg<br/>(e)环形或方形结构且灯管直径小于等于 17mm的通用照明灯:7mg<br/>(f)特殊用途灯:5mg</xsl:if>
				<xsl:if test="$id='Hg-R-17'">通用照明双端线型荧光灯中的汞含量不超过(每灯):<br/>(a)正常寿命的三频荧光灯且管直径小于9mm(例:T2):每灯4mg<br/>(b)正常寿命的三频荧光灯且管直径大于等于 9mm小于等于17mm(例:T5):3mg<br/>(c)正常寿命的三频荧光灯且管直径大于 17mm小于等于28mm(例:T8):3.5mg<br/>(d)正常寿命的三频荧光灯且管直径大于 28mm(例:T12):3.5mg<br/>(e)长寿命三频荧光灯 (> 25,000 h):5mg</xsl:if>
				<xsl:if test="$id='Hg-R-18'">其他荧光灯中汞含量不超过(每灯):<br/>(a)直径大于28mm的线性盐磷酸盐灯(例:T10 和T12):10mg<br/>(b)非线性盐磷酸盐灯(所有直径):15mg<br/>(c)直径大于17mm的非线性三频荧光粉灯(例:T9):15mg<br/>(d)其他通用照明和特殊用途的灯(如感应灯):15mg｡</xsl:if>
				<xsl:if test="$id='Hg-R-20'">Hg-R-16､Hg-R-17､Hg-R-18､Hg-R-9以外的低压放电灯中的汞(每灯)</xsl:if>
				<xsl:if test="$id='Hg-R-9'">特殊用途的冷阴极荧光灯和外部电极荧光灯(CCFL 和EEFL)中的汞</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">作为杂质､回收利用材料､污染物,均质材料每单位不超过1000ppm的含汞量｡</xsl:if>
				<xsl:if test="$id='J01-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='J01-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='Ni-J-1'">在长期接触皮肤的用途中,如有含有意图添加的情况时,</xsl:if>
				<xsl:if test="$id='Ni-J-2'">如因产品用途不明含有有意添加时</xsl:if>
				<xsl:if test="$id='Ni-J-98'">如含有Ni-J-1,Ni-J-2以外的时(用于不会长时间接触皮肤的用途中或杂质)</xsl:if>
				<xsl:if test="$id='Pb-B-1'">电池中每重量超过40ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-E-1'">铝中的铅  (0.4＜Pb≦1.5wt%)｡</xsl:if>
				<xsl:if test="$id='Pb-E-10'">阀座中的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-E-11'">起爆剂中的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-E-12'">均质材料每单位超过1000ppm的,用于电气方面焊锡中的铅(不包括电路基板和玻璃的焊锡)</xsl:if>
				<xsl:if test="$id='Pb-E-13'">均质材料每单位超过1000ppm的,将电气和电子部件安装到电路基板时的焊锡及零部件终端使用的焊锡中的铅(电解铝电容器除外)</xsl:if>
				<xsl:if test="$id='Pb-E-14'">均质材料每单位超过1000ppm的,电解铝电容器终端中的铅</xsl:if>
				<xsl:if test="$id='Pb-E-15'">均质材料每单位超过1000ppm的,空气质量传感器玻璃上的焊锡中的铅</xsl:if>
				<xsl:if test="$id='Pb-E-16'">均质材料每单位超过1000ppm的,将散热片安装到功率半导体散热器时的焊锡中的铅(芯片尺寸至少1cm2,电流密度至少1A/mm2)</xsl:if>
				<xsl:if test="$id='Pb-E-17'">均质材料每单位超过1000ppm的,玻璃中电釉用途焊锡中的含铅量(夹层玻璃焊锡除外)</xsl:if>
				<xsl:if test="$id='Pb-E-18'">均质材料每单位超过1000ppm的,用于夹层玻璃的焊锡中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-19'">均质材料每单位超过1000ppm的,连续镀锌钢板中不超过0.35wt%的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-E-20'">均质材料每单位超过1000ppm的,超声波声纳传感器的电容器部件中使用的介电陶瓷中的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-E-21'">通过回收排热来减少二氧化碳排放量的汽车电装用途中的含铅电热材料｡</xsl:if>
				<xsl:if test="$id='Pb-E-3'">轴承壳体/轴承(合金)中的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-E-4'">蓄电池中的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-E-5'">控制装置(减振器)中的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-E-6'">不超过0.5wt%的流体元件､动力机车用弹性材料加硫剂及稳定剂中的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-E-7'">不超过0.5wt%的动力机车用弹性材料粘结剂中的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-J-0'">除特定用途外,如有均质材料每单位含有意图添加铅超过1000ppm的情况时｡</xsl:if>
				<xsl:if test="$id='Pb-J-1'">电线及导线类被覆中的均质材料每单位超过300ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-J-3'">玩具用途的部件和材料,涂饰等表面处理层每单位超过0.009%的含铅量｡<br/>(本项目仅在受调查方表示玩具用途中使用到铅时选择)</xsl:if>
				<xsl:if test="$id='Pb-J-4'">用于12岁以下儿童产品中的每调查单位超过100ppm的含铅量｡<br/>(本项目仅在调查方指示12岁以下儿童产品中使用到铅时选择)</xsl:if>
				<xsl:if test="$id='Pb-J-99'">作为杂质､回收利用材料､污染物,均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-0'">除特定用途外,如有均质材料每单位含有意图添加铅不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Pb-R-1'">均质材料每单位超过1000ppm的,铝材料中不超过0.4wt%的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-10'">具有硅酸盐(silicate)涂层的真空管的直线状白炽灯灯泡的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-11'">作为专业复印用高亮度放电(HID)灯中的放射介质,均质材料每单位超过1000ppm的卤化铅｡</xsl:if>
				<xsl:if test="$id='Pb-R-15'">用于硼硅玻璃珐琅涂层的印刷油墨,均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-17'">均质材料每单位超过1000ppm的,在节距不超过0.65mm的连接器之外的窄节距元件的整理剂中的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-18'">用于机械加工带穿孔圆盘状和平面阵列陶瓷多层电容器焊锡的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-2'">高融点焊锡中的含铅量(含铅量85wt%以上的铅合金)</xsl:if>
				<xsl:if test="$id='Pb-R-22'">在理事会指令69/493/EEC的附属书I(范畴1､2､3及4)中已作出定义的晶体玻璃的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-23'">用于不含汞的薄型荧光灯(例如,用于液晶显示器､设计或工业照明的)焊锡材料中的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-24'">均质材料每单位超过1000ppm的,为形成氩氪激光器管中的窗口组成零部件时用到的密封熔接中的氧化铅中的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-25'">均质材料每单位超过1000ppm的,焊接电力变压器中直径在100 μm以下的薄型铜线时用到的焊锡中的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-26'">均质材料每单位超过1000ppm的,金属陶瓷微调电位器构成要素中的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-27'">均质材料每单位超过1000ppm的,锌硼酸盐玻璃(zinc borat glass)体基板上的高压二极管的焊接层中的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-3'">服务器､存储器和存储器阵列系统､交换､信号､传输及通信网络管理用的网络基础设施设备焊锡中的,均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-30'">均质材料每单位超过1000ppm的,光学用途中使用到的白色玻璃中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-31'">均质材料每单位超过1000ppm的,在滤光玻璃和反射率标准片所用的玻璃中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-32'">均质材料每单位超过1000ppm的,用于加热､换气､空气调节及冷藏､冷冻､换气(暖通空调制冷:HVACR)的含制冷剂的压缩机所用的轴承壳(外壳)及轴承衬套(嵌入孔的内面的圆柱形零部件)中的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-33'">均质材料每单位超过1000ppm的,当放电灯被用作含BSP(BaSi2O5:Pb)等荧光体的仿日晒灯时,放电灯荧光粉中作为催化剂含有的铅的含有量(铅的重量比不到1%)</xsl:if>
				<xsl:if test="$id='Pb-R-34'">作为包括BSP(BaSi2O5:Pb)等荧光体的晒黑用灯,以及作为包括SMS((Sr,Ba)2MgSi2O7:Pb)等荧光体的重氮印刷复印､光刻法､捕虫器､光化学､硬化处理专用放电灯荧光体的惰性剂,均质材料每单位超过1000ppm的含铅量(重量比1%以下的铅)｡</xsl:if>
				<xsl:if test="$id='Pb-R-35'">表面传导电子发射显示器(SED)的表面构件中,均质材料每单位含量超过1000ppm的氧化铅｡特别是用于密封熔合､熔合环中的氧化铅｡</xsl:if>
				<xsl:if test="$id='Pb-R-5'">导热模块C链接用涂层材料的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-7'">微处理机的销与程序包焊接用焊锡由2种元素以上组成的不超过85wt%和超过80wt%的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-R-8'">Flip Chip IC程序包内半导体模件与支座焊接用焊锡中的均质材料每单位超过1000ppm的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-RE-10'">均质材料每单位超过1000ppm的,C Press顺应针联接器系统中使用的铅的含量</xsl:if>
				<xsl:if test="$id='Pb-RE-11'">均质材料每单位超过1000ppm的,C Press以外顺应针联接器系统中使用的铅的含量</xsl:if>
				<xsl:if test="$id='Pb-RE-12'">均质材料每单位超过1000ppm的,集成电路或分立式半导体(单功能半导体)的电容器部件中使用的PZT介电陶瓷材料中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">均质材料每单位超过1000ppm的,钢材(包括批量熔融镀锌､易削钢)中不超过0.35wt%的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-RE-4'">均质材料每单位超过1000ppm的,铜合金(黄铜､磷青铜等)中不超过4wt%的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-RE-5'">均质材料每单位超过1000ppm的,阴极射线管中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-6'">均质材料每单位超过1000ppm的,重量比不超过0.2%的萤光管玻璃中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-7'">均质材料每单位超过1000ppm的,电气电子部件的玻璃/陶瓷或玻璃/陶瓷基化合物中的含铅量;电容器的介电陶瓷(如:压电装置)以及汽车车灯､汽车火花塞除外｡</xsl:if>
				<xsl:if test="$id='Pb-RE-8'">除Pb-RE12､Pb-E-20的用途外,均质材料每单位超过1000ppm的,额定电压为125V AC或250V DC或更高的电容器介电陶瓷中的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-RE-9'">除Pb-RE12､Pb-E-20的用途外,均质材料每单位超过1000ppm的,额定电压小于125V AC或250V DC的电容器介电陶瓷中的含铅量｡</xsl:if>
				<xsl:if test="$id='Pb-RE-98'">作为杂质､回收利用材料､污染物,均质材料每单位不超过1000ppm的含铅量｡</xsl:if>
			</xsl:if>
			<xsl:if test="$ver=4.3">
				<xsl:if test="$id='A17-J-3'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A17-J-4'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='A17-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='A17-J-97'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A19-J-0'">每调查单位的重量比如有超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A19-J-98'">每调查单位的重量比如有不超过0.1%的含有量时</xsl:if>
				<xsl:if test="$id='A20-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A20-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A21-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A21-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A22-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A22-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A23-J-1'">单组分和双组分室温硫化密封胶(RTV-1 RTV-2密封胶)以及粘接剂中,均质材料每单位的锡含量按重量计超过0.1%时</xsl:if>
				<xsl:if test="$id='A23-J-2'">在模塑品上涂敷的、含DBT化合物(作为催化剂使用)的、涂料以及涂层中,均质材料每单位的锡含量按重量计超过0.1%时</xsl:if>
				<xsl:if test="$id='A23-J-3'">软聚氯乙烯型材,不管其本身就是软的,还是与硬PVC同时挤出,其均质材料每单位的锡含量按重量计超过0.1%时</xsl:if>
				<xsl:if test="$id='A23-J-4'">除特定用途(A23-J-1,2,3)外,均质材料每单位的锡含量按重量计超过0.1%时 </xsl:if>
				<xsl:if test="$id='A23-J-98'">均质材料每单位的锡含有率的重量比不超过0.1%时</xsl:if>
				<xsl:if test="$id='A24-J-0'">•调查对象中存在的纺织品/皮革部<br/>•由于使用2液性室温硬化成型工具包(RTV-2密封剂成型工具包),均质材料每单位的锡含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='A24-J-1'">如因产品用途不明含有有意添加时</xsl:if>
				<xsl:if test="$id='A24-J-98'">如含有A24-J-0, A24-J-1以外的时</xsl:if>
				<xsl:if test="$id='A25-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A25-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A26-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A26-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A27-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A27-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A28-J-4'">均质材料每单位的锡含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='A28-J-5'">在A28-J-4以外的用途中,如含有故意添加时 </xsl:if>
				<xsl:if test="$id='A28-J-97'">均质材料每单位的锡含有率的重量比不超过0.1%时</xsl:if>
				<xsl:if test="$id='A29-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A29-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A30-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A30-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A31-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A31-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A32-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A32-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A33-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A33-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A34-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A34-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A35-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A35-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A36-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A36-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A37-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A37-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A38-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A38-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A39-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A39-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A40-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A40-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A41-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A41-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A42-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A42-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A43-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A43-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A44-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A44-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A45-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A45-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A46-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A46-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A47-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A47-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B02-J-0'">如有均质材料每单位含有意图添加PBB超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B02-J-99'">作为杂质、回收利用材料、污染物,均质材料每单位超过1000ppm的PBB含有量 </xsl:if>
				<xsl:if test="$id='B02-R-0'">如有均质材料每单位含有意图添加PBB不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B02-R-98'">作为杂质、回收利用材料、污染物,均质材料每单位不超过1000ppm的PBB含有量 </xsl:if>
				<xsl:if test="$id='B03-J-0'">如有均质材料每单位含有意图添加PBDE超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B03-J-99'">作为杂质、回收利用材料、污染物,均质材料每单位超过1000ppm的PBDE含有量 </xsl:if>
				<xsl:if test="$id='B03-R-0'">如有均质材料每单位含有意图添加PBDE不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='B03-R-98'">作为杂质、回收利用材料、污染物,均质材料每单位不超过1000ppm的PBDE含有量 </xsl:if>
				<xsl:if test="$id='B05-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B05-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B06-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B06-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B08-J-3'">在多层印刷电路板中,多层板中的溴含量超过每多层板重量比的0.09%时</xsl:if>
				<xsl:if test="$id='B08-J-4'">产品用途不明作为溴系阻燃剂含有有意添加时</xsl:if>
				<xsl:if test="$id='B08-J-5'">多层印刷电路板中的除外,塑料材料中溴的含有量总计(按重量计)超过0.1%时</xsl:if>
				<xsl:if test="$id='B08-J-97'">如含有B08-J-3、B08-J-4、B08-J-5以外的时</xsl:if>
				<xsl:if test="$id='B09-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B09-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B10-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='B10-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='B11-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B11-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B12-J-0'">每调查单位的重量比如有超过6ppb的含有量时</xsl:if>
				<xsl:if test="$id='B12-J-98'">每调查单位的重量比如有不超过6ppb的含有量时</xsl:if>
				<xsl:if test="$id='B13-J-0'">在光刻平板印刷过程的光保护层或防反射涂层中,含有故意添加的PFOS时  </xsl:if>
				<xsl:if test="$id='B13-J-1'">用于胶片、文件或印刷版的照片涂层中,含有故意添加的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-2'">在镀铬、铬氧化处理、反转蚀刻中使用的喷雾抑制剂中,含有故意添加的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-3'">在无电解镍-聚四氟乙烯(PTFE)电镀中使用的喷雾抑制剂中,含有故意添加的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-4'">在金属被膜前的塑料基材蚀刻中使用的喷雾抑制剂中,含有故意添加的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-6'">除特定用途(B13-J-0,1,2,3,4)外,作为模塑品的含有成分,均质材料每单位含有故意添加的大于等于0.1wt%的PFOS时,或者纺织原料或其他被覆材料中含有故意添加的大于等于被覆材料 1 &#181;g/m2的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-7'">除特定用途(B13-J-0,1,2,3,4,6,8,9)外,含有故意添加的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-8'">除特定用途(B13-J-0,1,2,3,4,6,7,9)外,均质材料每单位含有大于等于0.1wt%的作为杂质的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-89'">除特定用途(B13-J-92,93,94,95,96)外,作为物质或者调剂组成成分,含有小于等于0.001wt%的作为杂质的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-9'">除特定用途(B13-J-0,1,2,3,4,6,7,8)外,作为物质或者调剂组成成分,含有超过0.001wt%的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-90'">除特定用途(B13-J-92,93,94,95,96)外,作为模塑品的含有成分,均质材料每单位含有不足0.1wt%的作为杂质的PFOS时,或者纺织原料或其他被覆材料中含有不足被覆材料1&#181;g/m2的作为杂质的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-91'">除特定用途(B13-J-92,93,94,95,96,89,90)外,含有作为杂质的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-92'">在光刻平板印刷过程的光保护层或防反射涂层中,含有不足1&#181;g/m2的作为杂质的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-93'">用于胶片、文件或印刷版的照片涂层中,含有不足1&#181;g/m2的作为杂质的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-94'">在镀铬、铬氧化处理、反转蚀刻中使用的喷雾抑制剂中,含有小于等于0.001wt%的作为杂质的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-95'">在无电解镍-聚四氟乙烯(PTFE)电镀中使用的喷雾抑制剂中,含有小于等于0.001wt%的作为杂质的PFOS时 </xsl:if>
				<xsl:if test="$id='B13-J-96'">在金属被膜前的塑料基材蚀刻中使用的喷雾抑制剂中,含有小于等于0.001wt%的作为杂质的PFOS时 </xsl:if>
				<xsl:if test="$id='B15-J-2'">均质材料每单位的重量比超过0.005%时</xsl:if>
				<xsl:if test="$id='B15-J-97'">均质材料每单位的重量比不超过0.005%时</xsl:if>
				<xsl:if test="$id='B16-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B16-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B17-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B17-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B18-J-0'">用于多层印刷电路板中,每多层板的重量比如有超过0.09%的氯含有量时 </xsl:if>
				<xsl:if test="$id='B18-J-1'">多层印刷电路板中的除外,塑料材料中氯的含有量总计(按重量计)超过0.1%时</xsl:if>
				<xsl:if test="$id='B18-J-2'">产品用途不明,作为氯系阻燃剂含有有意添加时 </xsl:if>
				<xsl:if test="$id='B18-J-98'">如含有B18-J-0、B18-J-1、B18-J-2以外的时</xsl:if>
				<xsl:if test="$id='B19-J-0'">多层印刷电路板中的除外,塑料材料中氯的含有量总计(按重量计)超过0.1%时</xsl:if>
				<xsl:if test="$id='B19-J-98'">多层印刷电路板中的除外,塑料材料中氯的含有量总计(按重量计)不超过0.1%时</xsl:if>
				<xsl:if test="$id='B20-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B20-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B21-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B21-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C01-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C01-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C02-J-2'">其中含有的偶氮染料和颜料所还原出的特定芳香族重量比超过0.003%的皮革产品及纤维产品 (使用在有皮革、纺织品的部位)</xsl:if>
				<xsl:if test="$id='C02-J-3'">如因产品用途不明含有有意添加时</xsl:if>
				<xsl:if test="$id='C02-J-98'">如含有C02-J-2、C02-J-3以外的时</xsl:if>
				<xsl:if test="$id='C04-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C04-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C06-J-1'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C06-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C07-J-0'">纺织产品如含有重量比超过0.0075%时</xsl:if>
				<xsl:if test="$id='C07-J-2'">调查对象中有木材时,如木材中有故意添加时</xsl:if>
				<xsl:if test="$id='C07-J-97'">如含有C07-J-0、C07-J-2以外的时</xsl:if>
				<xsl:if test="$id='C08-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C08-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C09-J-1'">用途为玩具、或是育儿产品,可塑化材料(均质材料每单位)每单位的BBP、 DBP、 DEHP合计含有率的重量比超过0.1%时  </xsl:if>
				<xsl:if test="$id='C09-J-2'">产品用途不明,可塑化材料(均质材料每单位)每单位的BBP、DBP、DEHP合计含有率的重量比超过0.1%时 </xsl:if>
				<xsl:if test="$id='C09-J-96'">用于C09-J-1的用途以外的产品,可塑化材料(均质材料每单位)每单位的BBP、 DBP、DEHP合计含有率按重量计超过0.1%时 </xsl:if>
				<xsl:if test="$id='C09-J-97'">C09-J-1、C09-J-2的用途以外,可塑化材料(均质材料每单位)每单位的BP、 DBP、DEHP合计含有率的重量比为0.1%以下时</xsl:if>
				<xsl:if test="$id='C10-J-0'">会进入儿童口中的玩具、或是用途为育儿产品,可塑化材料(均质材料每单位)每单位的DIDP、 DINP、 DNOP合计含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='C10-J-1'">产品用途不明,可塑化材料(均质材料每单位)每单位的DIDP、DINP、DNOP合计含有率的重量比超过0.1%时</xsl:if>
				<xsl:if test="$id='C10-J-97'">用于C10-J-0的用途以外的产品,可塑化材料(均质材料每单位)每单位的DIDP、DINP、DNOP合计含量按重量计超过0.1%时 </xsl:if>
				<xsl:if test="$id='C10-J-98'">C10-J-0、C10-J-1的用途以外,可塑化材料(均质材料每单位)每单位的DIDP、DINP、DNOP合计含有率的重量比为0.1%以下时</xsl:if>
				<xsl:if test="$id='C11-J-0'">均质材料每单位的重量比超过0.00001%时</xsl:if>
				<xsl:if test="$id='C11-J-98'">均质材料每单位的重量比不超过0.00001%时</xsl:if>
				<xsl:if test="$id='C12-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C12-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C13-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C13-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C14-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C14-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C15-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C15-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C16-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C16-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C17-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C17-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C18-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C18-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C19-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C19-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C20-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C20-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C21-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C21-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C22-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C22-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C23-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C23-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C24-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C24-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C25-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C25-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C26-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C26-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C27-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C27-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C28-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C28-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C29-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C29-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C30-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C30-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C31-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C31-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C32-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C32-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C33-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C33-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C34-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C34-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C35-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C35-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C36-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C36-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C37-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C37-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='Cd-B-2'">电池每重量超过10ppm的含镉电池 </xsl:if>
				<xsl:if test="$id='Cd-E-2'">用于电气汽车电瓶的,均质材料每单位超过100ppm的含镉量 </xsl:if>
				<xsl:if test="$id='Cd-J-0'">除特定用途外,如有均质材料每单位含有意图添加镉超过100ppm的情况时</xsl:if>
				<xsl:if test="$id='Cd-J-99'">作为杂质、回收利用材料、污染物,均质材料每单位超过100ppm的含镉量 </xsl:if>
				<xsl:if test="$id='Cd-R-0'">除特定用途外,如有均质材料每单位含有意图添加镉不超过100ppm的情况时</xsl:if>
				<xsl:if test="$id='Cd-R-10'">均质材料每单位超过100ppm的,用于固态照明或显示系统的彩色转换&#8545;-&#8549; 族发光二极管中的含镉量(每平方毫米发光区域中的镉小于10 微克)</xsl:if>
				<xsl:if test="$id='Cd-R-11'">均质材料每单位超过100ppm的,用于专业音响设备的模拟光耦的光敏电阻中的含镉量 </xsl:if>
				<xsl:if test="$id='Cd-R-3'">用于硼硅玻璃珐琅涂层的印刷油墨,均质材料每单位超过100ppm的含镉量 </xsl:if>
				<xsl:if test="$id='Cd-R-4'">直接连接在声压等级100dB(A)以上的高耐输入扬声器变换器音圈上的导体电气及机械性焊锡焊接部分合金中,均质材料每单位超过100ppm的含镉量 </xsl:if>
				<xsl:if test="$id='Cd-R-6'">均质材料每单位超过100ppm的,与氧化铍结合的铝上用到的厚膜焊锡膏中的含镉量及氧化镉中的含镉量 </xsl:if>
				<xsl:if test="$id='Cd-R-8'">均质材料每单位超过100ppm的,电触点中的镉及其化合物的含有量</xsl:if>
				<xsl:if test="$id='Cd-R-9'">均质材料每单位超过100ppm的,滤光玻璃和反射率标准片所用的玻璃中的含镉量</xsl:if>
				<xsl:if test="$id='Cd-RE-98'">作为杂质、回收利用材料、污染物,均质材料每单位不超过100ppm的含镉量 </xsl:if>
				<xsl:if test="$id='Cr-E-1'">均质材料每单位超过1000ppm的含六价铬防锈涂层(下列Cr-E-2以外的) </xsl:if>
				<xsl:if test="$id='Cr-E-2'">用于车体部螺栓螺母组装部位的,均质材料每单位超过1000ppm的含六价铬防锈涂层 </xsl:if>
				<xsl:if test="$id='Cr-E-3'">旅游车(吸附)冰箱的均质材料每单位超过1000ppm的不超过0.75wt%的含六价铬量 </xsl:if>
				<xsl:if test="$id='Cr-J-0'">除特定用途外,如有均质材料每单位含有意图添加六价铬超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Cr-J-99'">作为杂质、回收利用材料、污染物,均质材料每单位超过1000ppm的含六价铬量 </xsl:if>
				<xsl:if test="$id='Cr-R-0'">除特定用途外,如有均质材料每单位含有意图六价铬不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Cr-R-2'">均质材料每单位超过1000ppm的,在吸收式电冰箱中作为碳钢冷却系统的防腐剂,含量不超过其重量的0.75%的六价铬含量</xsl:if>
				<xsl:if test="$id='Cr-RE-98'">作为杂质、回收利用材料、污染物,均质材料每单位不超过1000ppm的含六价铬量 </xsl:if>
				<xsl:if test="$id='Hg-B-1'">故意添加或电池每重量超过1ppm的含汞量</xsl:if>
				<xsl:if test="$id='Hg-J-0'">除特定用途外,如有均质材料每单位含有意图添加汞超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Hg-J-99'">作为杂质、回收利用材料、污染物,均质材料每单位超过1000ppm的含汞量 </xsl:if>
				<xsl:if test="$id='Hg-R-0'">除特定用途外,如有均质材料每单位含有意图添加汞不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Hg-R-11'">显色指数大于60 的通用高压钠(蒸汽)灯中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-12'">其它(Hg-R-11)通用照明高压钠(蒸汽)灯中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-13'">高压汞(蒸汽)灯(HPMV)中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-14'">金属卤化灯(MH)中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-15'">在2011/65/EU的附属书(或汞的使用用途分类)中无特别规定特殊目的的其他放电灯中的汞</xsl:if>
				<xsl:if test="$id='Hg-R-17'">通用照明双端线型荧光灯中的汞含量不超过(每灯):<br/>(a)正常寿命的三频荧光灯且管直径小于9mm(例:T2):每灯4mg<br/>(b)正常寿命的三频荧光灯且管直径大于等于 9mm小于等于17mm(例:T5):3mg<br/>(c)正常寿命的三频荧光灯且管直径大于 17mm小于等于28mm(例:T8):3.5mg<br/>(d正常寿命的三频荧光灯且管直径大于 28mm(例:T12):3.5mg<br/>(e)长寿命三频荧光灯 (&gt; 25,000 h):5mg</xsl:if>
				<xsl:if test="$id='Hg-R-20'">Hg-R-26、Hg-R-17、Hg-R-28、Hg-R-9以外的低压放电灯中的汞(每灯)</xsl:if>
				<xsl:if test="$id='Hg-R-26'">单端(紧凑)荧光灯中的汞含量不得超过(每灯):<br/>(a)小于 30 W 的通用照明灯:2.5mg<br/>(b)大于等于 30W且小于50W的通用照明灯:3.5mg<br/>(c)大于等于50W且小于150W的通用照明灯:5 mg<br/>(d)大于等于150W 的通用照明灯:15mg<br/>(e)环形或方形结构且灯管直径小于等于 17mm的通用照明灯:7mg<br/>(f)特殊用途灯:5mg</xsl:if>
				<xsl:if test="$id='Hg-R-28'">其他荧光灯中汞含量不超过(每灯):<br/>(b)非线性盐磷酸盐灯(所有直径):15mg<br/>(c)直径大于17mm的非线性三频荧光粉灯(例:T9):15mg<br/>(d)其他通用照明和特殊用途的灯(如感应灯):15mg </xsl:if>
				<xsl:if test="$id='Hg-R-9'">特殊用途的冷阴极荧光灯和外部电极荧光灯(CCFL 和EEFL)中的汞</xsl:if>
				<xsl:if test="$id='Hg-RE-98'">作为杂质、回收利用材料、污染物,均质材料每单位不超过1000ppm的含汞量 </xsl:if>
				<xsl:if test="$id='J01-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='J01-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='Ni-J-1'">在长期接触皮肤的用途中,如有含有意图添加的情况时,</xsl:if>
				<xsl:if test="$id='Ni-J-2'">如因产品用途不明含有有意添加时</xsl:if>
				<xsl:if test="$id='Ni-J-98'">如含有Ni-J-1,Ni-J-2以外的时(用于不会长时间接触皮肤的用途中或杂质)</xsl:if>
				<xsl:if test="$id='Pb-B-1'">电池中每重量超过40ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-1'">铝中的铅  (0.4&lt;Pb&#8804;1.5wt%)</xsl:if>
				<xsl:if test="$id='Pb-E-10'">阀座中的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-11'">起爆剂中的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-12'">均质材料每单位超过1000ppm的,用于电气方面焊锡中的铅(不包括电路基板和玻璃的焊锡)</xsl:if>
				<xsl:if test="$id='Pb-E-13'">均质材料每单位超过1000ppm的,将电气和电子部件安装到电路基板时的焊锡及零部件终端使用的焊锡中的铅(电解铝电容器除外)</xsl:if>
				<xsl:if test="$id='Pb-E-15'">均质材料每单位超过1000ppm的,空气质量传感器玻璃上的焊锡中的铅</xsl:if>
				<xsl:if test="$id='Pb-E-16'">均质材料每单位超过1000ppm的,将散热片安装到功率半导体散热器时的焊锡中的铅(芯片尺寸至少1cm2,电流密度至少1A/mm2)</xsl:if>
				<xsl:if test="$id='Pb-E-17'">均质材料每单位超过1000ppm的,玻璃中电釉用途焊锡中的含铅量(夹层玻璃焊锡除外)</xsl:if>
				<xsl:if test="$id='Pb-E-18'">均质材料每单位超过1000ppm的,用于夹层玻璃的焊锡中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-E-19'">均质材料每单位超过1000ppm的,连续镀锌钢板中不超过0.35wt%的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-20'">均质材料每单位超过1000ppm的,超声波声纳传感器的电容器部件中使用的介电陶瓷中的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-21'">通过回收排热来减少二氧化碳排放量的汽车电装用途中的含铅电热材料 </xsl:if>
				<xsl:if test="$id='Pb-E-22'">除Pb-RE12、Pb-E-20的用途外,均质材料每单位超过1000ppm的,额定电压小于125V AC或250V DC的电容器介电陶瓷中的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-23'">均质材料每单位超过1000ppm的,顺应针联接器系统中使用的铅的含量</xsl:if>
				<xsl:if test="$id='Pb-E-3'">轴承壳体/轴承(合金)中的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-4'">蓄电池中的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-5'">控制装置(减振器)中的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-6'">不超过0.5wt%的流体元件、动力机车用弹性材料加硫剂及稳定剂中的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-E-7'">不超过0.5wt%的动力机车用弹性材料粘结剂中的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-J-0'">除特定用途外,如有均质材料每单位含有意图添加铅超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Pb-J-1'">电线及导线类被覆中的均质材料每单位超过300ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-J-3'">玩具用途的部件和材料,涂饰等表面处理层每单位超过0.009%的含铅量 <br/>(本项目仅在受调查方表示玩具用途中使用到铅时选择)</xsl:if>
				<xsl:if test="$id='Pb-J-4'">用于12岁以下儿童产品中的每调查单位超过100ppm的含铅量 <br/>(本项目仅在调查方指示12岁以下儿童产品中使用到铅时选择)</xsl:if>
				<xsl:if test="$id='Pb-J-99'">作为杂质、回收利用材料、污染物,均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-0'">除特定用途外,如有均质材料每单位含有意图添加铅不超过1000ppm的情况时</xsl:if>
				<xsl:if test="$id='Pb-R-1'">均质材料每单位超过1000ppm的,铝材料中不超过0.4wt%的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-10'">具有硅酸盐(silicate)涂层的真空管的直线状白炽灯灯泡的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-11'">作为专业复印用高亮度放电(HID)灯中的放射介质,均质材料每单位超过1000ppm的卤化铅 </xsl:if>
				<xsl:if test="$id='Pb-R-15'">用于硼硅玻璃珐琅涂层的印刷油墨,均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-17'">均质材料每单位超过1000ppm的,在节距不超过0.65mm的连接器之外的窄节距元件的整理剂中的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-18'">用于机械加工带穿孔圆盘状和平面阵列陶瓷多层电容器焊锡的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-2'">高融点焊锡中的含铅量(含铅量85wt%以上的铅合金)</xsl:if>
				<xsl:if test="$id='Pb-R-22'">在理事会指令69/493/EEC的附属书I(范畴1、2、3及4)中已作出定义的晶体玻璃的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-23'">用于不含汞的薄型荧光灯(例如,用于液晶显示器、设计或工业照明的)焊锡材料中的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-24'">均质材料每单位超过1000ppm的,为形成氩氪激光器管中的窗口组成零部件时用到的密封熔接中的氧化铅中的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-25'">均质材料每单位超过1000ppm的,焊接电力变压器中直径在100 &#181;m以下的薄型铜线时用到的焊锡中的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-26'">均质材料每单位超过1000ppm的,金属陶瓷微调电位器构成要素中的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-27'">均质材料每单位超过1000ppm的,锌硼酸盐玻璃(zinc borat glass)体基板上的高压二极管的焊接层中的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-3'">服务器、存储器和存储器阵列系统、交换、信号、传输及通信网络管理用的网络基础设施设备焊锡中的,均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-30'">均质材料每单位超过1000ppm的,光学用途中使用到的白色玻璃中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-31'">均质材料每单位超过1000ppm的,在滤光玻璃和反射率标准片所用的玻璃中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-R-32'">均质材料每单位超过1000ppm的,用于加热、换气、空气调节及冷藏、冷冻、换气(暖通空调制冷:HVACR)的含制冷剂的压缩机所用的轴承壳(外壳)及轴承衬套(嵌入孔的内面的圆柱形零部件)中的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-33'">均质材料每单位超过1000ppm的,当放电灯被用作含BSP(BaSi2O5:Pb)等荧光体的仿日晒灯时,放电灯荧光粉中作为催化剂含有的铅的含有量(铅的重量比不到1%)</xsl:if>
				<xsl:if test="$id='Pb-R-34'">作为包括BSP(BaSi2O5:Pb)等荧光体的晒黑用灯,以及作为包括SMS((Sr,Ba)2MgSi2O7:Pb)等荧光体的重氮印刷复印、光刻法、捕虫器、光化学、硬化处理专用放电灯荧光体的惰性剂,均质材料每单位超过1000ppm的含铅量(重量比1%以下的铅) </xsl:if>
				<xsl:if test="$id='Pb-R-35'">表面传导电子发射显示器(SED)的表面构件中,均质材料每单位含量超过1000ppm的氧化铅 特别是用于密封熔合、熔合环中的氧化铅 </xsl:if>
				<xsl:if test="$id='Pb-R-5'">导热模块C链接用涂层材料的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-R-8'">Flip Chip IC程序包内半导体模件与支座焊接用焊锡中的均质材料每单位超过1000ppm的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-RE-10'">均质材料每单位超过1000ppm的,C Press顺应针联接器系统中使用的铅的含量</xsl:if>
				<xsl:if test="$id='Pb-RE-12'">均质材料每单位超过1000ppm的,集成电路或分立式半导体(单功能半导体)的电容器部件中使用的PZT介电陶瓷材料中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-3'">均质材料每单位超过1000ppm的,钢材(包括批量熔融镀锌、易削钢)中不超过0.35wt%的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-RE-4'">均质材料每单位超过1000ppm的,铜合金(黄铜、磷青铜等)中不超过4wt%的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-RE-5'">均质材料每单位超过1000ppm的,阴极射线管中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-6'">均质材料每单位超过1000ppm的,重量比不超过0.2%的萤光管玻璃中的含铅量</xsl:if>
				<xsl:if test="$id='Pb-RE-7'">均质材料每单位超过1000ppm的,电气电子部件的玻璃/陶瓷或玻璃/陶瓷基化合物中的含铅量;电容器的介电陶瓷(如:压电装置)以及汽车车灯、汽车火花塞除外 </xsl:if>
				<xsl:if test="$id='Pb-RE-8'">除Pb-RE12、Pb-E-20的用途外,均质材料每单位超过1000ppm的,额定电压为125V AC或250V DC或更高的电容器介电陶瓷中的含铅量 </xsl:if>
				<xsl:if test="$id='Pb-RE-98'">作为杂质、回收利用材料、污染物,均质材料每单位不超过1000ppm的含铅量 </xsl:if>
				<!--Ver.4.31追加分-->
				<xsl:if test="$id='B23-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='B23-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A48-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A48-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C38-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C38-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A49-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A49-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C39-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C39-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C40-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C40-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A50-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A50-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A51-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A51-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A52-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A52-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A53-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A53-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C41-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C41-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C42-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C42-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A54-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A54-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A55-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A55-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C43-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C43-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A56-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A56-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C44-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C44-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C45-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C45-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C46-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C46-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A57-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A57-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A58-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A58-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A59-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A59-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A60-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A60-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A61-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A61-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A62-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A62-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A63-J-0'">在各对象物质单位中,每调查单位的含有量超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='A63-J-98'">在各对象物质单位中,每调查单位的含有量不超过重量的0.1%时</xsl:if>
				<xsl:if test="$id='C47-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C47-J-98'">如含有杂质时</xsl:if>
				<xsl:if test="$id='C48-J-0'">如含有意图添加时</xsl:if>
				<xsl:if test="$id='C48-J-98'">如含有杂质时</xsl:if>
			</xsl:if>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>