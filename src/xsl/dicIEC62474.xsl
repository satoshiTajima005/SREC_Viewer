<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--
##########################################################################################
		ヘッダー
##########################################################################################-->
	<xsl:template name="getIecHeader">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='IEC1'">文書情報</xsl:if>
			<xsl:if test="$id='IEC2'">添付文書</xsl:if>
			<xsl:if test="$id='IEC3'">連絡先情報</xsl:if>
			<xsl:if test="$id='IEC4'">依頼/回答 情報</xsl:if>
			<xsl:if test="$id='IEC5'">問い合わせ情報</xsl:if>
			<xsl:if test="$id='IEC6'">製品基本情報</xsl:if>
			<xsl:if test="$id='schemaDatabaseVersion'">スキーマDB Ver.</xsl:if>
			<xsl:if test="$id='substanceDatabaseVersion'">物質DB Ver.</xsl:if>
			<xsl:if test="$id='toolAuthority'">ツール作成組織</xsl:if>
			<xsl:if test="$id='toolID'">ツールID</xsl:if>
			<xsl:if test="$id='fieldLock'">編集ロック</xsl:if>
			<xsl:if test="$id='mode'">モード</xsl:if>
			<xsl:if test="$id='fileName'">ファイル名</xsl:if>
			<xsl:if test="$id='fileType'">種類</xsl:if>
			<xsl:if test="$id='open'">表示</xsl:if>
			<xsl:if test="$id='contact'">回答者</xsl:if>
			<xsl:if test="$id='authorizer'">回答承認者</xsl:if>
			<xsl:if test="$id='requester'">依頼者</xsl:if>
			<xsl:if test="$id='companyName'">企業名</xsl:if>
			<xsl:if test="$id='companyAuthority'">ID割当機関</xsl:if>
			<xsl:if test="$id='companyID'">企業ID</xsl:if>
			<xsl:if test="$id='country'">国</xsl:if>
			<xsl:if test="$id='stateProvince'">都道府県</xsl:if>
			<xsl:if test="$id='city'">市区町村</xsl:if>
			<xsl:if test="$id='street'">番地</xsl:if>
			<xsl:if test="$id='postalCode'">郵便番号</xsl:if>
			<xsl:if test="$id='contactName'">名前</xsl:if>
			<xsl:if test="$id='title'">役職</xsl:if>
			<xsl:if test="$id='email'">E-Mail</xsl:if>
			<xsl:if test="$id='phone'">電話番号</xsl:if>
			<xsl:if test="$id='internalAddress'">内線番号</xsl:if>
			<xsl:if test="$id='comment'">備考</xsl:if>
			<xsl:if test="$id='request'">依頼</xsl:if>
			<xsl:if test="$id='response'">回答</xsl:if>
			<xsl:if test="$id='docID'">整理番号</xsl:if>
			<xsl:if test="$id='actionDate'">実施日</xsl:if>
			<xsl:if test="$id='internalSupplierID'">取引先ID</xsl:if>
			<xsl:if test="$id='respondByDate'">回答期限</xsl:if>
			<xsl:if test="$id='familyName'">シリーズ名</xsl:if>
			<xsl:if test="$id='unitType'">回答単位</xsl:if>
			<xsl:if test="$id='productComment'">製品備考</xsl:if>
			<xsl:if test="$id='effectiveDate'">発行日</xsl:if>
			<xsl:if test="$id='productID'">型番</xsl:if>
			<xsl:if test="$id='productName'">名称</xsl:if>
			<xsl:if test="$id='requesterName'">依頼者名</xsl:if>
			<xsl:if test="$id='requesterProductID'">依頼者型番</xsl:if>
			<xsl:if test="$id='manufacturingSite'">製造場所</xsl:if>
			<xsl:if test="$id='version'">バージョン</xsl:if>
			<xsl:if test="$id='mass'">質量</xsl:if>
			<xsl:if test="$id='unitOfMeasure'">質量単位</xsl:if>
			<xsl:if test="$id='plusTolerance'">質量+許容値</xsl:if>
			<xsl:if test="$id='minusTolerance'">質量-許容値</xsl:if>
			<xsl:if test="$id='massPercent'">質量比率</xsl:if>
			<xsl:if test="$id='percentPlusTolerance'">比率+許容値</xsl:if>
			<xsl:if test="$id='percentMinusTolerance'">比率-許容値</xsl:if>
			<xsl:if test="$id='matMassPercent'">材質比率</xsl:if>
			<xsl:if test="$id='matPercentPlusTolerance'">材質比率+許容値</xsl:if>
			<xsl:if test="$id='matPercentMinusTolerance'">材質比率-許容値</xsl:if>
			<xsl:if test="$id='signature'">署名</xsl:if>
			<xsl:if test="$id='additionalID'">ID</xsl:if>
			<xsl:if test="$id='additionalResponse'">返答</xsl:if>
			<xsl:if test="$id='additionalStatement'">質問内容</xsl:if>
			<xsl:if test="$id='substanceTrue'">閾値超過物質</xsl:if>
			<xsl:if test="$id='substanceFalse'">閾値未超過物質</xsl:if>
			<xsl:if test="$id='ContainingTrue'">含有-あり</xsl:if>
			<xsl:if test="$id='ContainingFalse'">含有-なし</xsl:if>
			<xsl:if test="$id='Distribute'">配布モード</xsl:if>
			<xsl:if test="$id='Request/Reply'">依頼/返答モード</xsl:if>
			<xsl:if test="$id='aboveThresholdLevel'">閾値超過判定</xsl:if>
			<xsl:if test="$id='authority'">機関</xsl:if>
			<xsl:if test="$id='data'">データ</xsl:if>
			<xsl:if test="$id='date'">日付</xsl:if>
			<xsl:if test="$id='description'">説明</xsl:if>
			<xsl:if test="$id='descriptionOfUse'">使用用途</xsl:if>
			<xsl:if test="$id='id'">ID</xsl:if>
			<xsl:if test="$id='identifier'">型番</xsl:if>
			<xsl:if test="$id='identity'">ID</xsl:if>
			<xsl:if test="$id='groupIdentity'">グループID</xsl:if>
			<xsl:if test="$id='materialClassID'">材質区分ID</xsl:if>
			<xsl:if test="$id='name'">名称</xsl:if>
			<xsl:if test="$id='numberOfUnits'">員数</xsl:if>
			<xsl:if test="$id='reportableApplication'">報告対象</xsl:if>
			<xsl:if test="$id='reportingThreshold'">報告閾値</xsl:if>
			<xsl:if test="$id='requesterIdentifier'">依頼者型番</xsl:if>
			<xsl:if test="$id='PP'">部品</xsl:if>
			<xsl:if test="$id='MC'">材質区分</xsl:if>
			<xsl:if test="$id='MT'">材質</xsl:if>
			<xsl:if test="$id='SG'">物質群</xsl:if>
			<xsl:if test="$id='SS'">物質</xsl:if>
			<xsl:if test="$id='EX'">適用除外</xsl:if>
			<xsl:if test="$id='applications'">用途情報</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='IEC1'">Document info.</xsl:if>
			<xsl:if test="$id='IEC2'">Attachment</xsl:if>
			<xsl:if test="$id='IEC3'">Contact info.</xsl:if>
			<xsl:if test="$id='IEC4'">Request/Response info.</xsl:if>
			<xsl:if test="$id='IEC5'">Query list</xsl:if>
			<xsl:if test="$id='IEC6'">Product basic info.</xsl:if>
			<xsl:if test="$id='schemaDatabaseVersion'">Schema DB Ver.</xsl:if>
			<xsl:if test="$id='substanceDatabaseVersion'">Substance DB Ver.</xsl:if>
			<xsl:if test="$id='toolAuthority'">Tool authority</xsl:if>
			<xsl:if test="$id='toolID'">Tool ID</xsl:if>
			<xsl:if test="$id='fieldLock'">Field lock</xsl:if>
			<xsl:if test="$id='mode'">Mode</xsl:if>
			<xsl:if test="$id='fileName'">File name</xsl:if>
			<xsl:if test="$id='fileType'">File type</xsl:if>
			<xsl:if test="$id='open'">Open</xsl:if>
			<xsl:if test="$id='contact'">Responder</xsl:if>
			<xsl:if test="$id='authorizer'">Response authorizer</xsl:if>
			<xsl:if test="$id='requester'">Requester</xsl:if>
			<xsl:if test="$id='companyName'">Company name</xsl:if>
			<xsl:if test="$id='companyAuthority'">Assignment authority</xsl:if>
			<xsl:if test="$id='companyID'">Company ID</xsl:if>
			<xsl:if test="$id='country'">Country</xsl:if>
			<xsl:if test="$id='stateProvince'">State province</xsl:if>
			<xsl:if test="$id='city'">City</xsl:if>
			<xsl:if test="$id='street'">Street</xsl:if>
			<xsl:if test="$id='postalCode'">Postal code</xsl:if>
			<xsl:if test="$id='contactName'">Name</xsl:if>
			<xsl:if test="$id='title'">Title</xsl:if>
			<xsl:if test="$id='email'">E-Mail</xsl:if>
			<xsl:if test="$id='phone'">Phone</xsl:if>
			<xsl:if test="$id='internalAddress'">Internal address</xsl:if>
			<xsl:if test="$id='comment'">Comment</xsl:if>
			<xsl:if test="$id='request'">Request</xsl:if>
			<xsl:if test="$id='response'">Response</xsl:if>
			<xsl:if test="$id='docID'">Document ID</xsl:if>
			<xsl:if test="$id='actionDate'">Action date</xsl:if>
			<xsl:if test="$id='internalSupplierID'">Internal supplier ID</xsl:if>
			<xsl:if test="$id='respondByDate'">Respond by date</xsl:if>
			<xsl:if test="$id='familyName'">Product family name</xsl:if>
			<xsl:if test="$id='unitType'">Unit type</xsl:if>
			<xsl:if test="$id='productComment'">Product comment</xsl:if>
			<xsl:if test="$id='effectiveDate'">Effective date</xsl:if>
			<xsl:if test="$id='productID'">Product ID</xsl:if>
			<xsl:if test="$id='productName'">Product name</xsl:if>
			<xsl:if test="$id='requesterName'">Requester name</xsl:if>
			<xsl:if test="$id='requesterProductID'">Requester product ID</xsl:if>
			<xsl:if test="$id='manufacturingSite'">Manufacturing site</xsl:if>
			<xsl:if test="$id='version'">version</xsl:if>
			<xsl:if test="$id='mass'">Mass</xsl:if>
			<xsl:if test="$id='unitOfMeasure'">Unit of measure</xsl:if>
			<xsl:if test="$id='plusTolerance'">Positive tolerance</xsl:if>
			<xsl:if test="$id='minusTolerance'">Negative tolerance</xsl:if>
			<xsl:if test="$id='massPercent'">Mass percent</xsl:if>
			<xsl:if test="$id='percentPlusTolerance'">Percent positive tolerance</xsl:if>
			<xsl:if test="$id='percentMinusTolerance'">Percent negative tolerance</xsl:if>
			<xsl:if test="$id='matMassPercent'">Material mass percent</xsl:if>
			<xsl:if test="$id='matPercentPlusTolerance'">Material mass percent + tolerance</xsl:if>
			<xsl:if test="$id='matPercentMinusTolerance'">Material mass percent - tolerance</xsl:if>
			<xsl:if test="$id='signature'">Signature</xsl:if>
			<xsl:if test="$id='additionalID'">ID</xsl:if>
			<xsl:if test="$id='additionalResponse'">Response</xsl:if>
			<xsl:if test="$id='additionalStatement'">Statement</xsl:if>
			<xsl:if test="$id='substanceTrue'">Over-threshold substance</xsl:if>
			<xsl:if test="$id='substanceFalse'">Under-threshold substance</xsl:if>
			<xsl:if test="$id='ContainingTrue'">Contain</xsl:if>
			<xsl:if test="$id='ContainingFalse'">None Contain</xsl:if>
			<xsl:if test="$id='Distribute'">Distribute</xsl:if>
			<xsl:if test="$id='Request/Reply'">Request/Reply</xsl:if>
			<xsl:if test="$id='aboveThresholdLevel'">Above threshold level</xsl:if>
			<xsl:if test="$id='authority'">Authority</xsl:if>
			<xsl:if test="$id='data'">Data</xsl:if>
			<xsl:if test="$id='date'">Date</xsl:if>
			<xsl:if test="$id='description'">Description</xsl:if>
			<xsl:if test="$id='descriptionOfUse'">Description of use</xsl:if>
			<xsl:if test="$id='id'">ID</xsl:if>
			<xsl:if test="$id='identifier'">Identifier</xsl:if>
			<xsl:if test="$id='identity'">Identity</xsl:if>
			<xsl:if test="$id='groupIdentity'">Group ID</xsl:if>
			<xsl:if test="$id='materialClassID'">Material class ID</xsl:if>
			<xsl:if test="$id='name'">Name</xsl:if>
			<xsl:if test="$id='numberOfUnits'">Number of units</xsl:if>
			<xsl:if test="$id='reportableApplication'">Reportable application</xsl:if>
			<xsl:if test="$id='reportingThreshold'">Reporting threshold</xsl:if>
			<xsl:if test="$id='requesterIdentifier'">Requester identifier</xsl:if>
			<xsl:if test="$id='PP'">Part</xsl:if>
			<xsl:if test="$id='MC'">Material class</xsl:if>
			<xsl:if test="$id='MT'">Material</xsl:if>
			<xsl:if test="$id='SG'">Substance group</xsl:if>
			<xsl:if test="$id='SS'">Substance</xsl:if>
			<xsl:if test="$id='EX'">Exemption</xsl:if>
			<xsl:if test="$id='applications'">Application info.</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='IEC1'">文档信息</xsl:if>
			<xsl:if test="$id='IEC2'">文档附件</xsl:if>
			<xsl:if test="$id='IEC3'">联系信息</xsl:if>
			<xsl:if test="$id='IEC4'">申请/回答 信息</xsl:if>
			<xsl:if test="$id='IEC5'">质问信息</xsl:if>
			<xsl:if test="$id='IEC6'">制品基本信息</xsl:if>
			<xsl:if test="$id='schemaDatabaseVersion'">架构数据库版本</xsl:if>
			<xsl:if test="$id='substanceDatabaseVersion'">物质数据库版本</xsl:if>
			<xsl:if test="$id='toolAuthority'">工具创建的组织</xsl:if>
			<xsl:if test="$id='toolID'">工具ID</xsl:if>
			<xsl:if test="$id='fieldLock'">编集保护</xsl:if>
			<xsl:if test="$id='mode'">模式</xsl:if>
			<xsl:if test="$id='fileName'">文件名</xsl:if>
			<xsl:if test="$id='fileType'">文件类型</xsl:if>
			<xsl:if test="$id='open'">打开</xsl:if>
			<xsl:if test="$id='contact'">回答者</xsl:if>
			<xsl:if test="$id='authorizer'">回答赞同</xsl:if>
			<xsl:if test="$id='requester'">申请者</xsl:if>
			<xsl:if test="$id='companyName'">公司名</xsl:if>
			<xsl:if test="$id='companyAuthority'">ID分配机构</xsl:if>
			<xsl:if test="$id='companyID'">公司ID</xsl:if>
			<xsl:if test="$id='country'">国家</xsl:if>
			<xsl:if test="$id='stateProvince'">州/省/地区</xsl:if>
			<xsl:if test="$id='city'">市</xsl:if>
			<xsl:if test="$id='street'">地址</xsl:if>
			<xsl:if test="$id='postalCode'">邮编</xsl:if>
			<xsl:if test="$id='contactName'">姓名</xsl:if>
			<xsl:if test="$id='title'">岗位</xsl:if>
			<xsl:if test="$id='email'">E-Mail</xsl:if>
			<xsl:if test="$id='phone'">电话号码</xsl:if>
			<xsl:if test="$id='internalAddress'">分机号码</xsl:if>
			<xsl:if test="$id='comment'">备注</xsl:if>
			<xsl:if test="$id='request'">申请</xsl:if>
			<xsl:if test="$id='response'">回答</xsl:if>
			<xsl:if test="$id='docID'">文章编号</xsl:if>
			<xsl:if test="$id='actionDate'">実施日期</xsl:if>
			<xsl:if test="$id='internalSupplierID'">供应商ID</xsl:if>
			<xsl:if test="$id='respondByDate'">截止日期</xsl:if>
			<xsl:if test="$id='familyName'">产品系列名称</xsl:if>
			<xsl:if test="$id='unitType'">单位类型</xsl:if>
			<xsl:if test="$id='productComment'">产品备注</xsl:if>
			<xsl:if test="$id='effectiveDate'">生效日期</xsl:if>
			<xsl:if test="$id='productID'">产品编号</xsl:if>
			<xsl:if test="$id='productName'">产品名称</xsl:if>
			<xsl:if test="$id='requesterName'">申请者名称</xsl:if>
			<xsl:if test="$id='requesterProductID'">申请者产品编号</xsl:if>
			<xsl:if test="$id='manufacturingSite'">制造地点</xsl:if>
			<xsl:if test="$id='version'">版本</xsl:if>
			<xsl:if test="$id='mass'">质量</xsl:if>
			<xsl:if test="$id='unitOfMeasure'">质量单位</xsl:if>
			<xsl:if test="$id='plusTolerance'">正公差</xsl:if>
			<xsl:if test="$id='minusTolerance'">负公差</xsl:if>
			<xsl:if test="$id='massPercent'">质量比</xsl:if>
			<xsl:if test="$id='percentPlusTolerance'">比正公差</xsl:if>
			<xsl:if test="$id='percentMinusTolerance'">比负公差</xsl:if>
			<xsl:if test="$id='matMassPercent'">材料质量比</xsl:if>
			<xsl:if test="$id='matPercentPlusTolerance'">材料质量比正公差</xsl:if>
			<xsl:if test="$id='matPercentMinusTolerance'">材料质量比负公差</xsl:if>
			<xsl:if test="$id='signature'">签名</xsl:if>
			<xsl:if test="$id='additionalID'">ID</xsl:if>
			<xsl:if test="$id='additionalResponse'">返答</xsl:if>
			<xsl:if test="$id='additionalStatement'">质问内容</xsl:if>
			<xsl:if test="$id='substanceTrue'">超过阈值的物质</xsl:if>
			<xsl:if test="$id='substanceFalse'">下阈值的物质</xsl:if>
			<xsl:if test="$id='ContainingTrue'">含有</xsl:if>
			<xsl:if test="$id='ContainingFalse'">它不包含</xsl:if>
			<xsl:if test="$id='Distribute'">分配</xsl:if>
			<xsl:if test="$id='Request/Reply'">申请/应答</xsl:if>
			<xsl:if test="$id='aboveThresholdLevel'">超过阈值的决定</xsl:if>
			<xsl:if test="$id='authority'">机构</xsl:if>
			<xsl:if test="$id='data'">数据</xsl:if>
			<xsl:if test="$id='date'">日期</xsl:if>
			<xsl:if test="$id='description'">描述</xsl:if>
			<xsl:if test="$id='descriptionOfUse'">使用说明</xsl:if>
			<xsl:if test="$id='id'">ID</xsl:if>
			<xsl:if test="$id='identifier'">型号</xsl:if>
			<xsl:if test="$id='identity'">ID</xsl:if>
			<xsl:if test="$id='groupIdentity'">组ID</xsl:if>
			<xsl:if test="$id='materialClassID'">材料分类ID</xsl:if>
			<xsl:if test="$id='name'">名称</xsl:if>
			<xsl:if test="$id='numberOfUnits'">成员数</xsl:if>
			<xsl:if test="$id='reportableApplication'">报告对象</xsl:if>
			<xsl:if test="$id='reportingThreshold'">报告门槛</xsl:if>
			<xsl:if test="$id='requesterIdentifier'">申请者型号</xsl:if>
			<xsl:if test="$id='PP'">部分</xsl:if>
			<xsl:if test="$id='MC'">材料类</xsl:if>
			<xsl:if test="$id='MT'">材料</xsl:if>
			<xsl:if test="$id='SG'">物质群</xsl:if>
			<xsl:if test="$id='SS'">物质</xsl:if>
			<xsl:if test="$id='EX'">豁免</xsl:if>
			<xsl:if test="$id='applications'">申请信息</xsl:if>
		</xsl:if>
	</xsl:template>

<!--
##########################################################################################
		材質名
##########################################################################################-->
	<xsl:template name="getMaterialClass">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='M-001'">ステンレス鋼</xsl:if>
			<xsl:if test="$id='M-002'">その他の鉄合金, 非ステンレス鋼</xsl:if>
			<xsl:if test="$id='M-003'">アルミニウム及びその合金</xsl:if>
			<xsl:if test="$id='M-004'">銅及びその合金</xsl:if>
			<xsl:if test="$id='M-005'">マグネシウム及びその合金</xsl:if>
			<xsl:if test="$id='M-006'">ニッケル及びその合金</xsl:if>
			<xsl:if test="$id='M-007'">亜鉛およびその合金</xsl:if>
			<xsl:if test="$id='M-008'">貴金属</xsl:if>
			<xsl:if test="$id='M-009'">その他の非鉄金属および合金</xsl:if>
			<xsl:if test="$id='M-010'">セラミックス/ガラス</xsl:if>
			<xsl:if test="$id='M-011'">その他の無機材料</xsl:if>
			<xsl:if test="$id='M-012'">ポリ塩化ビニル（PVC）</xsl:if>
			<xsl:if test="$id='M-013'">その他の熱可塑性プラスチック</xsl:if>
			<xsl:if test="$id='M-014'">その他のプラスチック・ゴム</xsl:if>
			<xsl:if test="$id='M-015'">その他の有機材料</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='M-001'">Stainless steel</xsl:if>
			<xsl:if test="$id='M-002'">Other Ferrous alloys, non-stainless steels</xsl:if>
			<xsl:if test="$id='M-003'">Aluminum and its alloys</xsl:if>
			<xsl:if test="$id='M-004'">Copper and its alloys</xsl:if>
			<xsl:if test="$id='M-005'">Magnesium and its alloys</xsl:if>
			<xsl:if test="$id='M-006'">Nickel and its alloys</xsl:if>
			<xsl:if test="$id='M-007'">Zinc and its alloys</xsl:if>
			<xsl:if test="$id='M-008'">Precious metals</xsl:if>
			<xsl:if test="$id='M-009'">Other non-ferrous metals and alloys</xsl:if>
			<xsl:if test="$id='M-010'">Ceramics/Glass</xsl:if>
			<xsl:if test="$id='M-011'">Other inorganic materials</xsl:if>
			<xsl:if test="$id='M-012'">PolyVinylChloride (PVC)</xsl:if>
			<xsl:if test="$id='M-013'">Other Thermoplastics</xsl:if>
			<xsl:if test="$id='M-014'">Other Plastics and Rubber</xsl:if>
			<xsl:if test="$id='M-015'">Other Organic Materials</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='M-001'">不锈钢</xsl:if>
			<xsl:if test="$id='M-002'">其他铁合金, 非不锈钢</xsl:if>
			<xsl:if test="$id='M-003'">铝及其合金</xsl:if>
			<xsl:if test="$id='M-004'">铜及其合金</xsl:if>
			<xsl:if test="$id='M-005'">镁及其合金</xsl:if>
			<xsl:if test="$id='M-006'">镍及其合金</xsl:if>
			<xsl:if test="$id='M-007'">锌及其合金</xsl:if>
			<xsl:if test="$id='M-008'">贵金属</xsl:if>
			<xsl:if test="$id='M-009'">其他非铁金属和合金</xsl:if>
			<xsl:if test="$id='M-010'">陶瓷/玻璃</xsl:if>
			<xsl:if test="$id='M-011'">其它无机材料</xsl:if>
			<xsl:if test="$id='M-012'">聚氯乙烯（PVC）</xsl:if>
			<xsl:if test="$id='M-013'">其他热塑性塑料</xsl:if>
			<xsl:if test="$id='M-014'">其他塑料和橡胶</xsl:if>
			<xsl:if test="$id='M-015'">其他有机材料</xsl:if>
		</xsl:if>
	</xsl:template>

<!--
##########################################################################################
		物質名
##########################################################################################-->
	<xsl:template name="getSubstanceName">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='00001'">五酸化二ヒ素</xsl:if>
			<xsl:if test="$id='00002'">三酸化二ヒ素</xsl:if>
			<xsl:if test="$id='00003'">アスベスト類</xsl:if>
			<xsl:if test="$id='00004'">一部の芳香族アミンを生成するアゾ染料・顔料</xsl:if>
			<xsl:if test="$id='00005'">酸化ベリリウム</xsl:if>
			<xsl:if test="$id='00007'">ホウ酸</xsl:if>
			<xsl:if test="$id='00008'">臭素系難燃剤(PBB類,PBDE類およびHBCDDを除く)</xsl:if>
			<xsl:if test="$id='00009'">臭素系難燃剤(PBB類,PBDE類およびHBCDDを除く)</xsl:if>
			<xsl:if test="$id='00010'">カドミウム/カドミウム化合物</xsl:if>
			<xsl:if test="$id='00011'">カドミウム/カドミウム化合物</xsl:if>
			<xsl:if test="$id='00012'">六価クロム化合物</xsl:if>
			<xsl:if test="$id='00013'">二塩化コバルト</xsl:if>
			<xsl:if test="$id='00014'">ジブチルスズ(DBT)化合物</xsl:if>
			<xsl:if test="$id='00015'">ジオクチルスズ(DOT)化合物</xsl:if>
			<xsl:if test="$id='00016'">フマル酸ジメチル</xsl:if>
			<xsl:if test="$id='00017'">四ホウ酸二ナトリウム,ホウ砂</xsl:if>
			<xsl:if test="$id='00018'">フッ素系温室効果ガス(PFC,SF6,HFC)</xsl:if>
			<xsl:if test="$id='00019'">ホルムアルデヒド</xsl:if>
			<xsl:if test="$id='00020'">ヘキサブロモシクロドデカン(HBCDD)およびすべての主要ジアステレオ異性体:α-ヘキサブロモシクロドデカン β-ヘキサブロモシクロドデカン γ-ヘキサブロモシクロドデカン</xsl:if>
			<xsl:if test="$id='00021'">鉛/鉛化合物</xsl:if>
			<xsl:if test="$id='00022'">鉛/鉛化合物</xsl:if>
			<xsl:if test="$id='00023'">鉛/鉛化合物</xsl:if>
			<xsl:if test="$id='00024'">鉛/鉛化合物</xsl:if>
			<xsl:if test="$id='00025'">鉛/鉛化合物</xsl:if>
			<xsl:if test="$id='00026'">クロム酸鉛</xsl:if>
			<xsl:if test="$id='00027'">硫酸モリブデン酸クロム酸鉛(別名:モリブデン赤)(別名:C.I.ピグメントレッド104)</xsl:if>
			<xsl:if test="$id='00028'">硫クロム酸鉛黄色(別名:C.I.ピグメントイエロー34)</xsl:if>
			<xsl:if test="$id='00029'">水銀/水銀化合物</xsl:if>
			<xsl:if test="$id='00030'">水銀/水銀化合物</xsl:if>
			<xsl:if test="$id='00031'">ニッケル</xsl:if>
			<xsl:if test="$id='00032'">オゾン層破壊物質(CFC,ハロン,HBFC,HCFC&amp;その他)</xsl:if>
			<xsl:if test="$id='00033'">過塩素酸塩</xsl:if>
			<xsl:if test="$id='00035'">2-(2H-1,2,3-ベンゾトリアゾール-2-イル)-4,6-ジ-tert-ブチルフェノール(別名:紫外線吸収剤[UV-320])</xsl:if>
			<xsl:if test="$id='00036'">フタル酸エステル類　グループ1 (BBP, DBP, DEHP)</xsl:if>
			<xsl:if test="$id='00037'">フタル酸エステル類　グループ2 (DIDP, DINP, DNOP)</xsl:if>
			<xsl:if test="$id='00038'">フタル酸ビス(2-エチルヘキシル)(別名:ジエチルヘキシルフタレート)(略称:DEHP)</xsl:if>
			<xsl:if test="$id='00039'">フタル酸ジブチル</xsl:if>
			<xsl:if test="$id='00040'">フタル酸ベンジルブチル</xsl:if>
			<xsl:if test="$id='00041'">フタル酸ジイソブチル</xsl:if>
			<xsl:if test="$id='00042'">1,2-ベンゼンジカルボン酸の,炭素数7の側鎖炭化水素を主成分とする炭素数6~8側鎖アルキルエステル類(略称:DIHP)</xsl:if>
			<xsl:if test="$id='00043'">1,2-ベンゼンジカルボン酸の,炭素数7～11の分岐および直鎖アルキルエステル類(略称:DHNUP)</xsl:if>
			<xsl:if test="$id='00044'">ポリ臭化ビフェニル(PBB類)</xsl:if>
			<xsl:if test="$id='00045'">ポリ臭化ジフェニルエーテル(PBDE類)</xsl:if>
			<xsl:if test="$id='00046'">ポリ塩化ビフェニル類(PCB類)及び特定代替物質</xsl:if>
			<xsl:if test="$id='00047'">ポリ塩化ターフェニル(PCT類)</xsl:if>
			<xsl:if test="$id='00048'">ポリ塩化ナフタレン(PCN類)</xsl:if>
			<xsl:if test="$id='00049'">放射性物質</xsl:if>
			<xsl:if test="$id='00050'">アルミノケイ酸塩耐火性セラミック繊維</xsl:if>
			<xsl:if test="$id='00051'">ジルコニアアルミノケイ酸塩耐火性セラミック繊維</xsl:if>
			<xsl:if test="$id='00052'">短鎖塩素化パラフィン(C10-13)</xsl:if>
			<xsl:if test="$id='00053'">クロム酸ストロンチウム</xsl:if>
			<xsl:if test="$id='00054'">ビス(トリブチルスズ)=オキシド(略称:TBTO)</xsl:if>
			<xsl:if test="$id='00055'">三置換有機スズ化合物</xsl:if>
			<xsl:if test="$id='00056'">りん酸トリス(2-クロロエチル)</xsl:if>
			<xsl:if test="$id='00057'">4-(1，1，3，3-テトラメチルブチル)フェノール(別名:4-tert-オクチルフェノール)</xsl:if>
			<xsl:if test="$id='00058'">ビス(2-メトキシエチル)エーテル</xsl:if>
			<xsl:if test="$id='00059'">フタル酸 ビス(2-メトキシエチル)(別名:ビス(2-メトキシエチル)フタラート)</xsl:if>
			<xsl:if test="$id='00060'">クロム酸八水酸化五亜鉛</xsl:if>
			<xsl:if test="$id='00061'">ヒドロキシオクタオキソ二亜鉛酸二クロム酸カリウム</xsl:if>
			<xsl:if test="$id='00062'">塩素系難燃剤(CFR)</xsl:if>
			<xsl:if test="$id='00063'">塩素系難燃剤(CFR)</xsl:if>
			<xsl:if test="$id='00064'">ビス(ペンタブロモフェニル)エーテル(別名:デカブロモジフェニルエーテル)(略称:デカBDE)</xsl:if>
			<xsl:if test="$id='00065'">塩基性亜硫酸鉛</xsl:if>
			<xsl:if test="$id='00066'">1，2-ビス(2-メトキシエトキシ)エタン(別名:トリエチレングリコールジメチルエーテル)(略称:TEGDME)(別名:トリグリム)</xsl:if>
			<xsl:if test="$id='00067'">二塩基性リン酸鉛</xsl:if>
			<xsl:if test="$id='00068'">1，2-ジメトキシエタン(別名:エチレングリコールジメチルエーテル)(略称:EGDME)</xsl:if>
			<xsl:if test="$id='00069'">4-アミノアゾベンゼン</xsl:if>
			<xsl:if test="$id='00070'">三塩基性硫酸鉛</xsl:if>
			<xsl:if test="$id='00071'">オレンジ鉛(別名:四酸化鉛)</xsl:if>
			<xsl:if test="$id='00072'">パイロクロア,アンチモン鉛イエロー(別名:C.I.ピグメントイエロー41)</xsl:if>
			<xsl:if test="$id='00073'">四塩基性硫酸鉛</xsl:if>
			<xsl:if test="$id='00074'">1,2-ジエトキシエタン(別名:ジエチルグリコール)(別名:ジエチルセロソルブ)</xsl:if>
			<xsl:if test="$id='00075'">三酸化二ホウ素</xsl:if>
			<xsl:if test="$id='00076'">ジブチルスズジクロリド(別名:ジクロロジブチルスズ)(略称:DBTC)</xsl:if>
			<xsl:if test="$id='00077'">シアナミド鉛</xsl:if>
			<xsl:if test="$id='00078'">N,N-ジメチルホルムアミド</xsl:if>
			<xsl:if test="$id='00079'">ケイ酸バリウム(限定条件:組成比1:1で,鉛をドープしたもので,鉛濃度が生殖毒性を示す値濃度以上のもの)</xsl:if>
			<xsl:if test="$id='00080'">1,2-ベンゼンジカルボン酸ジペンチルエステル(註釈:分岐と直鎖のどちらも対象)</xsl:if>
			<xsl:if test="$id='00081'">フタル酸ジイソペンチル(略称:DIPP)</xsl:if>
			<xsl:if test="$id='00082'">n-ペンチル-イソペンチルフタレート(別名:フタル酸n-ペンチル-イソペンチル)</xsl:if>
			<xsl:if test="$id='00083'">三酸化チタン鉛(別名:チタン酸鉛)</xsl:if>
			<xsl:if test="$id='00084'">ジルコン酸チタン酸鉛</xsl:if>
			<xsl:if test="$id='00085'">オキシ硫酸鉛(別名:塩基性硫酸鉛)</xsl:if>
			<xsl:if test="$id='00086'">フタル酸ジオキソ三鉛</xsl:if>
			<xsl:if test="$id='00087'">ビス(オクタデカナト)ジオキソ三鉛</xsl:if>
			<xsl:if test="$id='00088'">脂肪酸鉛塩(限定:炭素数16~18のもの)</xsl:if>
			<xsl:if test="$id='00089'">二硝酸鉛</xsl:if>
			<xsl:if test="$id='00090'">フタル酸ジイソデシル</xsl:if>
			<xsl:if test="$id='00091'">ジヘキサン-1-イル=フタラート</xsl:if>
			<xsl:if test="$id='00092'">メチルヘキサヒドロフタル酸無水物</xsl:if>
			<xsl:if test="$id='00093'">カドミウム</xsl:if>
			<xsl:if test="$id='00094'">酸化カドミウム(Ⅱ)</xsl:if>
			<xsl:if test="$id='00095'">フタル酸ジペンチル</xsl:if>
			<xsl:if test="$id='00096'">ぺルフルオロオクタン酸</xsl:if>
			<xsl:if test="$id='00097'">ペンタデカフルオロオクタン酸アンモニウム</xsl:if>
			<xsl:if test="$id='00098'">4-ノニルフェノール,分岐および直鎖[フェノールの4の位置で炭素数9の直鎖および/または分岐したアルキル鎖が共有結合している物質,個々の異性体またはその混合物のいずれも含むUVCB物質およびwell-defined物質(組成等が分かっている物質)]</xsl:if>
			<xsl:if test="$id='00099'">硫化カドミウム</xsl:if>
			<xsl:if test="$id='00100'">リン酸トリス(ジメチルフェニル)</xsl:if>
			<xsl:if test="$id='00102'">3,3’-[(1,1’-ビフェニル)-4,4’-ジイルビス(アゾ)]ビス(4-アミノナフタレン-1-スルホネート)二ナトリウム(別名CIダイレクトレッド28)</xsl:if>
			<xsl:if test="$id='00103'">ペルフルオロオクタン酸(PFOA)及び個々の塩およびPFOAのエステル</xsl:if>
			<xsl:if test="$id='00104'">ペルフルオロオクタン酸(PFOA)及び個々の塩およびPFOAのエステル</xsl:if>
			<xsl:if test="$id='00105'">2-イミダゾリジンチオン</xsl:if>
			<xsl:if test="$id='00106'">フタル酸ジヘキシル</xsl:if>
			<xsl:if test="$id='00107'">フタル酸ジイソノニル</xsl:if>
			<xsl:if test="$id='00108'">ベンゾ[a]ピレン</xsl:if>
			<xsl:if test="$id='00109'">ベンゾ[e]ピレン</xsl:if>
			<xsl:if test="$id='00110'">ベンゾ[a]アントラセン</xsl:if>
			<xsl:if test="$id='00111'">クリセン</xsl:if>
			<xsl:if test="$id='00112'">ベンゾ[b]フルオランテン</xsl:if>
			<xsl:if test="$id='00113'">ベンゾ[j]フルオランテン</xsl:if>
			<xsl:if test="$id='00114'">ベンゾ[k]フルオランテン</xsl:if>
			<xsl:if test="$id='00115'">ジベンゾ[a,h]アントラセン</xsl:if>
			<xsl:if test="$id='00116'">ベンゾ[a]ピレン</xsl:if>
			<xsl:if test="$id='00117'">ベンゾ[e]ピレン</xsl:if>
			<xsl:if test="$id='00118'">ベンゾ[a]アントラセン</xsl:if>
			<xsl:if test="$id='00119'">クリセン</xsl:if>
			<xsl:if test="$id='00120'">ベンゾ[b]フルオランテン</xsl:if>
			<xsl:if test="$id='00121'">ベンゾ[j]フルオランテン</xsl:if>
			<xsl:if test="$id='00122'">ベンゾ[k]フルオランテン</xsl:if>
			<xsl:if test="$id='00123'">ジベンゾ[a,h]アントラセン</xsl:if>
			<xsl:if test="$id='00124'">パーフルオロオクタンスルホン酸(PFOS)</xsl:if>
			<xsl:if test="$id='00125'">パーフルオロオクタンスルホン酸(PFOS)</xsl:if>
			<xsl:if test="$id='00126'">ジナトリウム=4-アミノ-3-[4’-(2,4-ジアミノフェニルアゾ)-1,1’-ビフェニル-4-イルアゾ]-5-ヒドロキシ-6-フェニルアゾ-2,7-ナフタレンジスルホナート(別名CIダイレクトブラック38)</xsl:if>
			<xsl:if test="$id='00127'">N-フェニルベンゼンジアミンとスチレン,2,4,4-トリメチルペンタンの反応物</xsl:if>
			<xsl:if test="$id='00128'">ビス(2-エチルヘキサン-1-イル)=4,4-ジオクタン-1-イル-3,5-ジチア-4-スタンナヘプタンジオアート(略称:DOTE)(別名:ジオクチルスズビス(2-エチルヘキシルチオグリコラート))</xsl:if>
			<xsl:if test="$id='00129'">10-エチル-4,4-ジオクチル-7-オキソ-8-オキサ-3,5-ジチア-4-スタンナテトラデカン酸2-エチルヘキシルと10-エチル-4-[[2-[(2-(エチルヘキシル)オキシ]-2-オキソエチル]チオ]-4-オクチル-7-オキソ-8-オキサ-3,5-ジチア-4-スタンナテトラデカン酸2-エチルヘキシルの反応生成物(DOTEとMOTEの反応生成物)</xsl:if>
			<xsl:if test="$id='00130'">2-(2H-ベンゾトリアゾール-2-イル)-4,6-ジ-tert-ペンチルフェノール(別名:紫外線吸収剤[ＵＶ-328])</xsl:if>
			<xsl:if test="$id='00131'">1,2-ベンゼンジカルボン酸,ジC6-10アルキルエステル; 1,2-ベンゼンジカルボン酸,デシル,ヘキシル,オクチル混合ジエステル(0.3％以上のフタル酸ジヘキシル (EC No. 201-559-5)を含む場合)</xsl:if>
			<xsl:if test="$id='00132'">水銀/水銀化合物</xsl:if>
			<xsl:if test="$id='00133'">1,3-プロパンスルトン</xsl:if>
			<xsl:if test="$id='00134'">2,4-ジ-tert-ブチル-6-(5-クロロ-2H-1,2,3-ベンゾトリアゾール-2-イル)フェノール</xsl:if>
			<xsl:if test="$id='00135'">2-(2H-1,2,3-ベンゾトリアゾール-2-イル)-6-sec-ブチル-4-tert-ブチルフェノール</xsl:if>
			<xsl:if test="$id='00137'">ペルフルオロノナン酸</xsl:if>
			<xsl:if test="$id='00138'">ベンゾ[a]ピレン</xsl:if>
			<xsl:if test="$id='00140'">パーフルオロノナン-1-酸(2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,9-ヘプタデカフルオロノナン酸、その塩とアンモニウム塩)</xsl:if>
			<xsl:if test="$id='00141'">ビスフェノールA</xsl:if>
			<xsl:if test="$id='00142'">ノナデカフルオロデカン酸(PFDA)およびそのナトリウムとアンモニウム塩、(ノナデカフルオロデカン酸アンモニウム、ノナデカフルオロデカン酸、ノナデカフルオロデカン酸ナトリウム)</xsl:if>
		</xsl:if>
		<xsl:if test="$lang!='ja'">
			<xsl:if test="$id='00001'">Diarsenic pentoxide</xsl:if>
			<xsl:if test="$id='00002'">Diarsenic trioxide</xsl:if>
			<xsl:if test="$id='00003'">Asbestos</xsl:if>
			<xsl:if test="$id='00004'">Azocolourants and azodyes which form certain aromatic amines</xsl:if>
			<xsl:if test="$id='00005'">Beryllium Oxide</xsl:if>
			<xsl:if test="$id='00007'">Boric Acid</xsl:if>
			<xsl:if test="$id='00008'">Brominated flame retardants (other than PBBs, PBDEs, or HBCDD)</xsl:if>
			<xsl:if test="$id='00009'">Brominated flame retardants (other than PBBs, PBDEs, or HBCDD)</xsl:if>
			<xsl:if test="$id='00010'">Cadmium/Cadmium compounds</xsl:if>
			<xsl:if test="$id='00011'">Cadmium/Cadmium compounds</xsl:if>
			<xsl:if test="$id='00012'">Chromium (VI) Compounds</xsl:if>
			<xsl:if test="$id='00013'">Cobalt dichloride</xsl:if>
			<xsl:if test="$id='00014'">Dibutyltin (DBT) compounds</xsl:if>
			<xsl:if test="$id='00015'">Dioctyltin (DOT) compounds</xsl:if>
			<xsl:if test="$id='00016'">Dimethyl Fumarate (DMF)</xsl:if>
			<xsl:if test="$id='00017'">Disodium tetraborates</xsl:if>
			<xsl:if test="$id='00018'">Fluorinated Greenhouse Gases (PFC, SF6, HFC)</xsl:if>
			<xsl:if test="$id='00019'">Formaldehyde</xsl:if>
			<xsl:if test="$id='00020'">Hexabromocyclododecane (HBCDD) and all major diastereoisomers identified: Alpha-hexabromocyclododecane Beta-hexabromocyclododecane Gamma-hexabromocyclododecane</xsl:if>
			<xsl:if test="$id='00021'">Lead/Lead Compounds</xsl:if>
			<xsl:if test="$id='00022'">Lead/Lead Compounds</xsl:if>
			<xsl:if test="$id='00023'">Lead/Lead Compounds</xsl:if>
			<xsl:if test="$id='00024'">Lead/Lead Compounds</xsl:if>
			<xsl:if test="$id='00025'">Lead/Lead Compounds</xsl:if>
			<xsl:if test="$id='00026'">Lead chromate</xsl:if>
			<xsl:if test="$id='00027'">Lead chromate molybdate sulphate red (C.I. Pigment Red 104)</xsl:if>
			<xsl:if test="$id='00028'">Lead sulfochromate yellow (C.I. Pigment Yellow 34)</xsl:if>
			<xsl:if test="$id='00029'">Mercury/Mercury Compounds</xsl:if>
			<xsl:if test="$id='00030'">Mercury/Mercury Compounds</xsl:if>
			<xsl:if test="$id='00031'">Nickel</xsl:if>
			<xsl:if test="$id='00032'">Ozone Depleting Substances (CFC, Halon, HBFC, HCFC &amp; others)</xsl:if>
			<xsl:if test="$id='00033'">Perchlorates</xsl:if>
			<xsl:if test="$id='00035'">2-benzotriazol-2-yl-4,6-di-tert-butylphenol (UV-320)</xsl:if>
			<xsl:if test="$id='00036'">Phthalates, Selected Group 1 (BBP, DBP, DEHP)</xsl:if>
			<xsl:if test="$id='00037'">Phthalates, Selected Group 2 (DIDP, DINP, DNOP)</xsl:if>
			<xsl:if test="$id='00038'">Bis (2-ethylhexyl)phthalate (DEHP)</xsl:if>
			<xsl:if test="$id='00039'">Dibutyl phthalate (DBP)</xsl:if>
			<xsl:if test="$id='00040'">Benzyl butyl phthalate (BBP)</xsl:if>
			<xsl:if test="$id='00041'">Diisobutyl phthalate</xsl:if>
			<xsl:if test="$id='00042'">1,2-Benzenedicarboxylic acid, di-C6-8-branched alkyl esters, C7-rich</xsl:if>
			<xsl:if test="$id='00043'">1,2-Benzenedicarboxylic acid, di-C7-11-branched and linear alkyl esters</xsl:if>
			<xsl:if test="$id='00044'">Polybrominated Biphenyls (PBBs)</xsl:if>
			<xsl:if test="$id='00045'">Polybrominated Diphenylethers (PBDEs)</xsl:if>
			<xsl:if test="$id='00046'">Polychlorinated Biphenyls (PCBs) and specific substitutes</xsl:if>
			<xsl:if test="$id='00047'">Polychlorinated Terphenyls (PCTs)</xsl:if>
			<xsl:if test="$id='00048'">Polychlorinated Naphthalenes (PCNs)</xsl:if>
			<xsl:if test="$id='00049'">Radioactive substances</xsl:if>
			<xsl:if test="$id='00050'">Aluminosilicate Refractory Ceramic Fibres</xsl:if>
			<xsl:if test="$id='00051'">Zirconia Aluminosilicate Refractory Ceramic Fibres</xsl:if>
			<xsl:if test="$id='00052'">Alkanes, C10-13, chloro (Short Chain Chlorinated Paraffins)</xsl:if>
			<xsl:if test="$id='00053'">Strontium chromate</xsl:if>
			<xsl:if test="$id='00054'">Bis(tributyltin) oxide (TBTO)</xsl:if>
			<xsl:if test="$id='00055'">Tri-substituted organostannic compounds</xsl:if>
			<xsl:if test="$id='00056'">Tris(2-chloroethyl)phosphate</xsl:if>
			<xsl:if test="$id='00057'">4-(1,1,3,3-tetramethylbutyl)phenol</xsl:if>
			<xsl:if test="$id='00058'">Bis(2-methoxyethyl) ether</xsl:if>
			<xsl:if test="$id='00059'">Bis(2-methoxyethyl) phthalate</xsl:if>
			<xsl:if test="$id='00060'">Pentazinc chromate octahydroxide</xsl:if>
			<xsl:if test="$id='00061'">Potassium hydroxyoctaoxodizincatedichromate</xsl:if>
			<xsl:if test="$id='00062'">Chlorinated Flame Retardants (CFR)</xsl:if>
			<xsl:if test="$id='00063'">Chlorinated Flame Retardants (CFR)</xsl:if>
			<xsl:if test="$id='00064'">Bis(pentabromophenyl) ether (decabromodiphenyl ether) (DecaBDE)</xsl:if>
			<xsl:if test="$id='00065'">Sulfurous acid, lead salt, dibasic</xsl:if>
			<xsl:if test="$id='00066'">1,2-bis(2-methoxyethoxy)ethane (TEGDME; triglyme)</xsl:if>
			<xsl:if test="$id='00067'">Trilead dioxide phosphonate</xsl:if>
			<xsl:if test="$id='00068'">1,2-dimethoxyethane; ethylene glycol dimethyl ether (EGDME)</xsl:if>
			<xsl:if test="$id='00069'">4-Aminoazobenzene</xsl:if>
			<xsl:if test="$id='00070'">Tetralead trioxide sulphate</xsl:if>
			<xsl:if test="$id='00071'">Orange lead (lead tetroxide)</xsl:if>
			<xsl:if test="$id='00072'">Pyrochlore, antimony lead yellow</xsl:if>
			<xsl:if test="$id='00073'">Pentalead tetraoxide sulphate</xsl:if>
			<xsl:if test="$id='00074'">1,2-Diethoxyethane</xsl:if>
			<xsl:if test="$id='00075'">Diboron trioxide</xsl:if>
			<xsl:if test="$id='00076'">Dibutyltin dichloride (DBTC)</xsl:if>
			<xsl:if test="$id='00077'">Lead cyanamidate</xsl:if>
			<xsl:if test="$id='00078'">N,N-dimethylformamide</xsl:if>
			<xsl:if test="$id='00079'">Silicic acid (H2Si2O5), barium salt (1:1), lead-doped</xsl:if>
			<xsl:if test="$id='00080'">1,2-Benzenedicarboxylic acid, dipentylester, branched and linear</xsl:if>
			<xsl:if test="$id='00081'">Diisopentylphthalate</xsl:if>
			<xsl:if test="$id='00082'">N-pentyl-isopentylphthalate</xsl:if>
			<xsl:if test="$id='00083'">Lead titanium trioxide</xsl:if>
			<xsl:if test="$id='00084'">Lead titanium zirconium oxide</xsl:if>
			<xsl:if test="$id='00085'">Lead oxide sulfate</xsl:if>
			<xsl:if test="$id='00086'">[Phthalato(2-)]dioxotrilead</xsl:if>
			<xsl:if test="$id='00087'">Dioxobis(stearato)trilead</xsl:if>
			<xsl:if test="$id='00088'">Fatty acids, C16-18, lead salts</xsl:if>
			<xsl:if test="$id='00089'">Lead dinitrate</xsl:if>
			<xsl:if test="$id='00090'">Di-isodecyl phthalate (DIDP)</xsl:if>
			<xsl:if test="$id='00091'">Di-n-hexyl Phthalate (DnHP)</xsl:if>
			<xsl:if test="$id='00092'">Hexahydromethylphthalic anhydride</xsl:if>
			<xsl:if test="$id='00093'">Cadmium</xsl:if>
			<xsl:if test="$id='00094'">Cadmium oxide</xsl:if>
			<xsl:if test="$id='00095'">Dipentyl phthalate (DPP)</xsl:if>
			<xsl:if test="$id='00096'">Pentadecafluorooctanoic acid (PFOA)</xsl:if>
			<xsl:if test="$id='00097'">Ammonium pentadecafluorooctanoate (APFO)</xsl:if>
			<xsl:if test="$id='00098'">4-Nonylphenol, branched and linear, ethoxylated [substances with a linear and/or branched alkyl chain with a carbon number of 9 covalently bound in position 4 to phenol, ethoxylated covering UVCB- and well-defined substances, polymers and homologues, which include any of the individual isomers and/or combinations thereof]</xsl:if>
			<xsl:if test="$id='00099'">Cadmium sulphide</xsl:if>
			<xsl:if test="$id='00100'">Trixylyl phosphate</xsl:if>
			<xsl:if test="$id='00102'">Disodium 3,3&apos;-[[1,1&apos;-biphenyl]-4,4&apos;-diylbis(azo)]bis(4-aminonaphthalene-1-sulphonate) (C.I. Direct Red 28)</xsl:if>
			<xsl:if test="$id='00103'">Perfluorooctanoic acid (PFOA) and individual salts and esters of PFOA</xsl:if>
			<xsl:if test="$id='00104'">Perfluorooctanoic acid (PFOA) and individual salts and esters of PFOA</xsl:if>
			<xsl:if test="$id='00105'">Imidazolidine-2-thione; (2-imidazoline-2-thiol)</xsl:if>
			<xsl:if test="$id='00106'">1,2-Benzenedicarboxylic acid, dihexyl ester, branched and linear</xsl:if>
			<xsl:if test="$id='00107'">Diisononyl phthalate (DINP)</xsl:if>
			<xsl:if test="$id='00108'">Benzo[a]pyrene</xsl:if>
			<xsl:if test="$id='00109'">Benzo[e]pyrene</xsl:if>
			<xsl:if test="$id='00110'">Benzo[a]anthracene</xsl:if>
			<xsl:if test="$id='00111'">Chrysen</xsl:if>
			<xsl:if test="$id='00112'">Benzo[b]fluoranthene</xsl:if>
			<xsl:if test="$id='00113'">Benzo[j]fluoranthene</xsl:if>
			<xsl:if test="$id='00114'">Benzo[k]fluoranthene</xsl:if>
			<xsl:if test="$id='00115'">Dibenzo[a,h]anthracene</xsl:if>
			<xsl:if test="$id='00116'">Benzo[a]pyrene</xsl:if>
			<xsl:if test="$id='00117'">Benzo[e]pyrene</xsl:if>
			<xsl:if test="$id='00118'">Benzo[a]anthracene</xsl:if>
			<xsl:if test="$id='00119'">Chrysen</xsl:if>
			<xsl:if test="$id='00120'">Benzo[b]fluoranthene</xsl:if>
			<xsl:if test="$id='00121'">Benzo[j]fluoranthene</xsl:if>
			<xsl:if test="$id='00122'">Benzo[k]fluoranthene</xsl:if>
			<xsl:if test="$id='00123'">Dibenzo[a,h]anthracene</xsl:if>
			<xsl:if test="$id='00124'">Perfluorooctane sulfonates (PFOS)</xsl:if>
			<xsl:if test="$id='00125'">Perfluorooctane sulfonates (PFOS)</xsl:if>
			<xsl:if test="$id='00126'">Disodium 4-amino-3-[[4&apos;-[(2,4-diaminophenyl)azo][1,1&apos;-biphenyl]-4-yl]azo]-5-hydroxy-6-(phenylazo)naphthalene-2,7-disulphonate (C.I. Direct Black 38)</xsl:if>
			<xsl:if test="$id='00127'">Benzenamine, N-phenyl-, reaction products with styrene and 2,4,4-trimethylpentene</xsl:if>
			<xsl:if test="$id='00128'">2-ethylhexyl 10-ethyl-4,4-dioctyl-7-oxo-8-oxa-3,5-dithia-4-stannatetradecanoate (DOTE)</xsl:if>
			<xsl:if test="$id='00129'">reaction mass of 2-ethylhexyl 10-ethyl-4,4-dioctyl-7-oxo-8-oxa-3,5-dithia-4-stannatetradecanoate and 2-ethylhexyl 10-ethyl-4-[[2-[(2-ethylhexyl)oxy]-2-oxoethyl]thio]-4-octyl-7-oxo-8-oxa-3,5-dithia-4-stannatetradecanoate (reaction mass of DOTE and MOTE)</xsl:if>
			<xsl:if test="$id='00130'">2-(2H-benzotriazol-2-yl)-4,6-ditertpentylphenol (UV-328)</xsl:if>
			<xsl:if test="$id='00131'">1,2-benzenedicarboxylic acid, di-C6-10-alkyl esters; 1,2-benzenedicarboxylic acid, mixed decyl and hexyl and octyl diesters with ≥ 0.3% of dihexyl phthalate (EC No. 201-559-5)</xsl:if>
			<xsl:if test="$id='00132'">Mercury/Mercury Compounds</xsl:if>
			<xsl:if test="$id='00133'">1,3-propanesultone</xsl:if>
			<xsl:if test="$id='00134'">2,4-di-tert-butyl-6-(5-chlorobenzotriazol-2-yl)phenol (UV-327)</xsl:if>
			<xsl:if test="$id='00135'">2-(2H-benzotriazol-2-yl)-4-(tert-butyl)-6-(sec-butyl)phenol (UV-350)</xsl:if>
			<xsl:if test="$id='00137'">Perfluorononan-1-oic-acid and its sodium and ammonium salts</xsl:if>
			<xsl:if test="$id='00138'">Benzo[def]chrysene</xsl:if>
			<xsl:if test="$id='00140'">Perfluorononan-1-oic-acid and its sodium and ammonium salts</xsl:if>
			<xsl:if test="$id='00141'">4,4’-isopropylidenediphenol</xsl:if>
			<xsl:if test="$id='00142'">Nonadecafluorodecanoic acid (PFDA) and its sodium and ammonium salts</xsl:if>
		</xsl:if>
	</xsl:template>

<!--
##########################################################################################
		用途
##########################################################################################-->
	<xsl:template name="getApplications">
		<xsl:param name="id" />
		<xsl:param name="lang" />
		<xsl:if test="$lang='ja'">
			<xsl:if test="$id='ELV_0001'">Noexemption 適用除外なし</xsl:if>
			<xsl:if test="$id='ELV_0002'">Belowthreshold 閾値以下</xsl:if>
			<xsl:if test="$id='ELV_0041'">1(a) 重量で0.35wt%までの鉛を含む機械加工用のスチール及び溶融亜鉛メッキ鋼部品</xsl:if>
			<xsl:if test="$id='ELV_0042'">1(b) 重量で0.35wt%までの鉛を含む連続亜鉛メッキ鋼板。2016年1月1日より前に型式認定された車両とその補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0043'">2(a) 重量で2wt%までの鉛を含む機械加工用のアルミ材。2005年7月1日より前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0044'">2(b) 重量で1.5wt%までの鉛を含む機械加工用のアルミ材。2008年7月1日より前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0045'">2(c)(i) 機械加工目的のために0.4重量%までの鉛を含むアルミ合金</xsl:if>
			<xsl:if test="$id='ELV_0079'">2(c)(ii) 重量で0.4wt%までの鉛を含む2(c)(i)以外の用途のアルミ合金(アルミリサイクル材を利用したため非意図的に鉛を含むアルミ合金に適用する)</xsl:if>
			<xsl:if test="$id='ELV_0046'">3 重量で4wt%までの鉛を含む銅合金</xsl:if>
			<xsl:if test="$id='ELV_0047'">4(a) ベアリングシェル及びブッシュ。2008年7月1日より前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0048'">4(b) エンジン、トランスミッション、エアコンコンプレッサー用途のベアリングシェル及びブッシュ。2011年7月1日より前に市場投入された車両および車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0049'">5 バッテリー</xsl:if>
			<xsl:if test="$id='ELV_0080'">5(a) M1,N1車両の駆動用に限定して使用される高電圧システム*の電池中の鉛(*:直流75Vを超えるシステム)、2019年1月1日よりも前に認可された車両及びそのスペアパーツ</xsl:if>
			<xsl:if test="$id='ELV_0081'">5(b) 5(a)以外の電池用途の電池中の鉛</xsl:if>
			<xsl:if test="$id='ELV_0050'">6 バイブレーションダンパー。2016年1月1日より前に型式認定された車両とその補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0051'">7(a) ブレーキホース、燃料ホース、エアベンチチューブ、車体のエラストマー/金属部品、エンジンマウントのエラストマーの加硫剤および安定剤中の鉛。2005年7月1日より前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0052'">7(b) ブレーキホース、燃料ホース、エアベンチチューブ、車体のエラストマー/金属部品、エンジンマウントのエラストマーの加硫剤および安定剤中に0.5%以下含まれる鉛。2006年7月1日より前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0053'">7(c) 0.5%以下の鉛を含有する動力伝達用途のエラストマーの接着剤。2009年7月1日より前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0054'">8(a) 電気および電子部品と電子回路基板を接続するための及びアルミ電解コンデンサ以外の部品の端子仕上げ中のはんだに含まれる鉛。2016年1月1日より前に型式認定された車両および車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0055'">8(b) 電子回路基板上、またはガラス上のはんだを除く、その他の電気アプリケーション中のはんだに含まれる鉛。2011年1月1日より前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0056'">8(c) アルミ電解コンデンサの端子仕上げ中の鉛。2013年1月1日より前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0057'">8(d) マスエアーフローセンサ内のガラス上のはんだに使用する鉛。2015年1月1日より前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0058'">8(e) 高融点はんだに含まれる鉛(重量で85%以上の鉛を含有する合金)。</xsl:if>
			<xsl:if test="$id='ELV_0059'">8(f) コンプライアント・ピン・コネクターシステムに含まれる鉛。</xsl:if>
			<xsl:if test="$id='ELV_0060'">8(g) 集積回路パッケージ(フリップチップ)の内部半導体ダイおよびキャリア間における確実な電気的接続に必要なはんだに含まれる鉛。</xsl:if>
			<xsl:if test="$id='ELV_0061'">8(h) チップサイズの投影面積が少なくとも1c㎡で、シリコンチップ部の公称電流密度が最小で1A/m㎡のパワー半導体アッセンブリ中のヒートシンクにヒートスプレッダーを接続するためのはんだに含まれる鉛。2016年1月1日より前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0062'">8(i) 合わせガラスのはんだ付けを除く、ガラス上の電気的ガラス用アプリケーションのはんだに含まれる鉛。2016年1月1日以前に型式認定された車両およびそれらの車両の補修部品。</xsl:if>
			<xsl:if test="$id='ELV_0063'">8(j) 合わせガラスのはんだ付け用はんだに含まれる鉛。2020年1月1日より前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0077'">8(f)(a) コンプライアント・ピン・コネクターシステムに含まれる鉛。2017年1月1日より前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0078'">8(f)(b) 車両のハーネスコネクタ結合部以外のコンプライアント・ピン・コネクターシステムに含まれる鉛。</xsl:if>
			<xsl:if test="$id='ELV_0064'">9 バルブシート。2003年7月1日より前に開発されたエンジンの補修部品</xsl:if>
			<xsl:if test="$id='ELV_0065'">10(a) ガラスまたはセラミック中、ガラスまたはセラミックマトリクスコンパウンド中、ガラス-セラミック材料中、ガラス-セラミックマトリクスコンパウンド中、に鉛を含んだ電気および電子部品。本適用除外に以下は含まない。バルブ中のガラス、点火プラグの釉薬、10(b),10(c)10(d)に示す誘電セラミック部品の材料</xsl:if>
			<xsl:if test="$id='ELV_0066'">10(b) ディスクリート半導体やIC中のキャパシタ用PZT誘電セラミック材料中の鉛</xsl:if>
			<xsl:if test="$id='ELV_0067'">10(c) 定格電圧が125VAC未満あるいは250VDC未満のキャパシタ用誘電セラミック材料中の鉛。2016年1月1日より前に型式認定された車両とその補修部品。</xsl:if>
			<xsl:if test="$id='ELV_0068'">10(d) 超音波ソナーセンサーの温度補正用のキャパシタ用誘電セラミック材料中の鉛。2017年1月1日より前に型式認定された車両とその補修部品。</xsl:if>
			<xsl:if test="$id='ELV_0069'">11 起爆剤。2006年7月1日より前に型式認定された車両とそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0070'">12 排気熱回収によるCO2削減用途の電装品中の鉛入り熱電材料。2019年1月1日より前に型式認定された車両とそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0071'">13(a) 防食コーティング。2007年7月1日より前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0072'">13(b) シャーシに利用する組立ボルト及びナットの防食コーティング。2008年7月1日より前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0073'">14 モーターキャラバンの吸収型冷蔵庫で炭素鋼冷却システムの耐蝕材として用いられる重量で0.75%wtまででかつ、環境、人、消費者の安全への負の影響を招かない六価クロム。ただし他の冷却技術の利用が実際的である場合を除く。</xsl:if>
			<xsl:if test="$id='ELV_0074'">15(a) ヘッドランプ??用のディスチャージランプ。2012年7月1日より前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0075'">15(b) 計器パネルディスプレイに使用される蛍光管。2012年7月1日より前に型式認定された車両およびそれらの車両の補修部品として。</xsl:if>
			<xsl:if test="$id='ELV_0076'">16 電気車両用バッテリー。2008年12月31日より前に市場投入された車両の補修部品として。</xsl:if>
			<xsl:if test="$id='RoHS_0001'">Noexemption 適用除外なし</xsl:if>
			<xsl:if test="$id='RoHS_0002'">Belowthreshold 閾値以下</xsl:if>
			<xsl:if test="$id='RoHS_0201'">1(a) 一般照明用途30W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0202'">1(a) 一般照明用途30W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり3.5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0203'">1(a) 一般照明用途30W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり2.5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0204'">1(b) 一般照明用途30W以上50W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0205'">1(b) 一般照明用途30W以上50W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり3.5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0206'">1(c) 一般照明用途50W以上150W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0207'">1(d) 一般照明用途150W以上/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり15mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0208'">1(e) 一般照明用途で環形または角型かつチューブの直径17mm以下/電球形およびコンパクト形(小型)蛍光ランプ中の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0209'">1(e) 一般照明用途で環形または角型かつチューブの直径17mm以下/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり7mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0210'">1(f) 特殊用途用/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0321'">1(g) 20000時間以上の寿命を有する一般照明用途30W未満/電球形およびコンパクト形(小型)蛍光ランプであって水銀含有量が1バーナー当たり3.5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0211'">2(a)(1) 3波長形蛍光体を使用した標準寿命かつランプ径9mm未満(例T2)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0212'">2(a)(1) 3波長形蛍光体を使用した標準寿命かつランプ径9mm未満(例T2)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が4mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0213'">2(a)(2) 3波長形蛍光体を使用した標準寿命かつランプ径9mm以上17mm以下(例T5)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0214'">2(a)(2) 3波長形蛍光体を使用した標準寿命かつランプ径9mm以上17mm以下(例T5)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が3mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0215'">2(a)(3) 3波長形蛍光体を使用した標準寿命かつランプ径17mm超28mm以下(例T8)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0216'">2(a)(3) 3波長形蛍光体を使用した標準寿命かつランプ径17mm超28mm以下(例T8)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が3.5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0217'">2(a)(4) 3波長形蛍光体を使用した標準寿命のランプ径28mm超(例T12)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0218'">2(a)(4) 3波長形蛍光体を使用した標準寿命のランプ径28mm超(例T12)/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が3.5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0219'">2(a)(5) 3波長形蛍光体を使用した長寿命(25000時間以上)のランプ/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が8mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0220'">2(a)(5) 3波長形蛍光体を使用した長寿命(25000時間以上)のランプ/一般照明用途の直管蛍光ランプであってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0221'">2(b)(1) ランプ径28mm超の直管蛍光ハロ燐酸ランプ(例T10およびT12)/その他の蛍光灯ランプであってランプ当たりの水銀含有量が10mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0222'">2(b)(2) 直管蛍光ランプ以外のハロ燐酸蛍光体を使用したランプ(径の規定なし)/その他の蛍光灯ランプであってランプ当たりの水銀含有量が15mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0223'">2(b)(3) 直管蛍光ランプ以外の3波長形蛍光体を使用したランプ径17mm超(例T9)/その他の蛍光灯ランプの水銀</xsl:if>
			<xsl:if test="$id='RoHS_0224'">2(b)(3) 直管蛍光ランプ以外の3波長形蛍光体を使用したランプ径17mm超(例T9)/その他の蛍光灯ランプであってランプ当たりの水銀含有量が15mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0225'">2(b)(4) その他の一般照明用途及び特殊用途(例電磁誘導灯)/その他の蛍光灯ランプの水銀</xsl:if>
			<xsl:if test="$id='RoHS_0226'">2(b)(4) その他の一般照明用途及び特殊用途(例電磁誘導灯)/その他の蛍光灯ランプであってランプ当たりの水銀含有量が15mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0227'">3(a) 短尺ランプ(500mm以下)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0228'">3(a) 短尺ランプ(500mm以下)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)であってランプ当たりの水銀含有量が3.5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0229'">3(b) 中尺ランプ(500mm超1500mm以下)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0230'">3(b) 中尺ランプ(500mm超1500mm以下)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)であってランプ当たりの水銀含有量が5mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0231'">3(c) 長尺ランプ(1500mm超)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0232'">3(c) 長尺ランプ(1500mm超)/特殊用途の冷陰極蛍光ランプ及び外部電極蛍光ランプ(CCFL及びEEFL)であってランプ当たりの水銀含有量が13mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0233'">4(a) その他の低圧放電管ランプの水銀</xsl:if>
			<xsl:if test="$id='RoHS_0234'">4(a) その他の低圧放電管ランプであってランプ当たりの水銀含有量が15mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0235'">4(b)-I P(ランプ電力)≦155W/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0236'">4(b)-I P(ランプ電力)≦155W/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり30mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0237'">4(b)-II 155W&lt;P(ランプ電力)≦405W/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0238'">4(b)-II 155W&lt;P(ランプ電力)≦405W/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり40mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0239'">4(b)-III 405W&lt;P(ランプ電力)/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0240'">4(b)-III 405W&lt;P(ランプ電力)/平均演色評価数が60を超える一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり40mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0241'">4(c)-I P(ランプ電力)≦155W/その他の一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0242'">4(c)-I P(ランプ電力)≦155W/その他の一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり25mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0243'">4(c)-II 155W&lt;P(ランプ電力)≦405W/その他の一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0244'">4(c)-II 155W&lt;P(ランプ電力)≦405W/その他の一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり30mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0245'">4(c)-III P(ランプ電力)&gt;405W/その他の一般照明用の高圧ナトリウム(蒸気)ランプ中の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0246'">4(c)-III P(ランプ電力)&gt;405W/その他の一般照明用の高圧ナトリウム(蒸気)ランプであって水銀含有量が1バーナー当たり40mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0247'">4(d) 高圧水銀(蒸気)ランプ(HPMV)に含まれる水銀</xsl:if>
			<xsl:if test="$id='RoHS_0248'">4(e) 金属ハロゲン化物ランプ(MH)に含まれる水銀</xsl:if>
			<xsl:if test="$id='RoHS_0249'">4(f) 本付属書に特に定められていないその他の放電ランプに含まれる水銀</xsl:if>
			<xsl:if test="$id='RoHS_0340'">4(g) 標識、装飾用または建築用かつ専門家用照明および光美術品に使用される手工芸的放電灯中の水銀、この場合、水銀含有量は次の通り制限されねばならない:(a)20℃未満の温度にさらされる屋外用途および屋内用途において、電極1対当たり20mgに管長1cmあたり0.3mgを加算、ただし80mgを超えない;(b)その他全ての屋内用途において、電極1対当たり15mgに管長1cm当たり0.24mgを加算、但し80mgを超えない</xsl:if>
			<xsl:if test="$id='RoHS_0250'">5(a) CRT(ブラウン管,冷極線管)のガラスに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0251'">5(b) ガラス蛍光管であって鉛含有量が0.2wt%を超えないもの</xsl:if>
			<xsl:if test="$id='RoHS_0252'">6(a) 機械加工のために合金成分として鋼材中及び亜鉛メッキ鋼板中に含まれる0.35wt%までの鉛</xsl:if>
			<xsl:if test="$id='RoHS_0365'">6(a)-I 機械加工用の鋼材に合金成分として含まれる0.35wt%までの鉛、ホットディップ溶融亜鉛めっき鋼中に重量比0.2%まで含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0253'">6(b) 合金成分としてアルミニウムに含まれる0.4wt%までの鉛</xsl:if>
			<xsl:if test="$id='RoHS_0366'">6(b)-I 鉛含有アルミニウムスクラップのリサイクルに由来するアルミニウムに合金元素として含まれる0.4重量%までの鉛</xsl:if>
			<xsl:if test="$id='RoHS_0367'">6(b)-II 機械加工用途のアルミニウムに合金元素として含まれる0.4重量%までの鉛</xsl:if>
			<xsl:if test="$id='RoHS_0254'">6(c) 鉛含有量が4wt%以下の銅合金</xsl:if>
			<xsl:if test="$id='RoHS_0255'">7(a) 高融点ハンダに含まれる鉛(すなわち鉛含有率が重量で85%以上の鉛ベースの合金)</xsl:if>
			<xsl:if test="$id='RoHS_0256'">7(b) サーバ,記憶装置,記憶アレイシステム,信号切り替え・送受信・伝送及び電気通信ネットワーク管理用のネットワーク基盤設備向けのはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0257'">7(c)-I コンデンサ内の誘電体セラミック以外のガラス中またはセラミック中に鉛を含む電気電子部品(例圧電素子),もしくはガラスまたはセラミックを母材とする化合物中に鉛を含む電気電子部品</xsl:if>
			<xsl:if test="$id='RoHS_0258'">7(c)-II 定格電圧がAC125VまたはDC250Vまたはそれ以上のコンデンサ内の誘電体セラミック中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0259'">7(c)-III 定格電圧がAC125VまたはDC250V未満のコンデンサ内の誘電体セラミック中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0260'">7(c)-III 電気電子機器のスペアパーツとしての定格電圧がAC125VまたはDC250V未満のコンデンサ内の誘電体セラミック中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0319'">7(c)-IV 集積回路、ディスクリート半導体の部品に使われるコンデンサ向けの、ジルコン酸チタン酸鉛(PZT)をベースにした誘電セラミック材料中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0261'">8(a) 一括投入混練コンパウンドペレット成形したサーマルカットオフに含まれるカドミウムとその化合物</xsl:if>
			<xsl:if test="$id='RoHS_0262'">8(a) 電気電子機器のスペアパーツとしての一括投入混練コンパウンドペレット成形したサーマルカットオフに含まれるカドミウムとその化合物</xsl:if>
			<xsl:if test="$id='RoHS_0263'">8(b) 電気接点中のカドミウムとその化合物</xsl:if>
			<xsl:if test="$id='RoHS_0264'">9 吸収型冷蔵庫中のカーボン・スチール冷却システムの防食用として冷却ソリューション中に含まれる0.75wt%以下の六価クロム</xsl:if>
			<xsl:if test="$id='RoHS_0265'">9(b) 暖房加熱,換気,空調及び冷凍冷却(HVACR)用途の冷媒含有コンプレッサーに用いるベアリングシェル及びブッシュ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0360'">9(b)-(I) カテゴリー1の、暖房加熱,換気,空調及び冷凍冷却(HVACR)用途の定格電力9kW以下の冷媒含有密閉式スクロールコンプレッサーに用いるベアリングシェル及びブッシュ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0266'">11(a) 2010年9月24日以前に上市された電気電子機器のスペアパーツとしてのC-プレス・コンプライアント・ピン・コネクタシステムに用いられる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0267'">11(b) C-プレス・コンプライアント・ピン以外のコネクタシステムに用いられる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0268'">11(b) 2013年1月1日以前に上市された電気電子機器のスペアパーツとしてのC-プレス・コンプライアント・ピン以外のコネクタシステムに用いられる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0269'">12 2010年9月24日以前に上市された電気電子機器のスペアパーツとして使用される熱伝導モジュール形Cリング向けコーティング材料としての鉛</xsl:if>
			<xsl:if test="$id='RoHS_0270'">13(a) 光学用途に使われる白色ガラスに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0271'">13(b) フィルタガラスおよび反射率標準物質用のガラス中に含まれるカドミウムおよび鉛</xsl:if>
			<xsl:if test="$id='RoHS_0361'">13(b)-(I) カテゴリー1から7、10のイオン着色光学フィルターガラス類中の鉛。</xsl:if>
			<xsl:if test="$id='RoHS_0362'">13(b)-(II) カテゴリー1から7、10のストライキング光学フィルターガラス類中のカドミウム。ただし、本附属書IIIの表示記号39に該当する用途は除く。</xsl:if>
			<xsl:if test="$id='RoHS_0363'">13(b)-(III) カテゴリー1から7、10の反射率標準用に用いられる釉薬中のカドミウムと鉛</xsl:if>
			<xsl:if test="$id='RoHS_0272'">14 マイクロプロセッサのピンおよびパッケージ間の接合用に用いる、2種類超の元素で構成されるはんだに含まれる鉛で、その含有量が80wt%超かつ85wt%未満のもの</xsl:if>
			<xsl:if test="$id='RoHS_0273'">14 2011年1月1日以前に上市された電気電子機器のスペアパーツとしてのマイクロプロセッサのピンおよびパッケージ間の接合用に用いる、2種類超の元素で構成されるはんだに含まれる鉛で、その含有量が80wt%超かつ85wt%未満のもの</xsl:if>
			<xsl:if test="$id='RoHS_0274'">15 集積回路パッケージ(フリップチップ)の内部半導体ダイおよびキャリア間における確実な電気接続に必要なはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0275'">16 ケイ酸塩(silicate)がコーティングされたバルブを有する直管白熱電球の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0276'">17 プロフェッショナル向け複写用途に使用される高輝度放電(HID)ランプ中の、放射媒体としてのハロゲン化鉛</xsl:if>
			<xsl:if test="$id='RoHS_0277'">18(a) SMS((Sr,Ba)2MgSi2O7:Pb)等の蛍光体を含む、ジアゾ印刷複写、リソグラフィ、捕虫器、光化学、硬化処理用の専用ランプとして使用される放電ランプの蛍光体の付活剤としての鉛(重量比1%以下の鉛)</xsl:if>
			<xsl:if test="$id='RoHS_0278'">18(b) BSP(BaSi2O5:Pb)等の蛍光体を含む日焼け用ランプとして使用される放電ランプの蛍光粉体の活性剤としての鉛(重量比1%以下)</xsl:if>
			<xsl:if test="$id='RoHS_0279'">19 非常にコンパクトな省エネルギーランプ(ESL)における、主アマルガムとしての特定の組成物PbBiSn-HgおよびPbInSn-Hg、ならびに補助アマルガムとしてのPbSn-Hgの鉛</xsl:if>
			<xsl:if test="$id='RoHS_0280'">20 液晶ディスプレイ(LCD)に使用される平面蛍光ランプの前部および後部基板を接合するために使用されるガラスの中の酸化鉛</xsl:if>
			<xsl:if test="$id='RoHS_0281'">21 ホウケイ酸ガラスへのエナメル塗布用印刷インキに含まれる鉛およびカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0282'">23 2010年9月24日以前に上市された電気電子機器のスペアパーツとして使用されるピッチが0.65mm以下での微細ピッチコンポーネントの仕上げ処理が施された部位に含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0283'">24 機械加工通し穴付き円盤状および平面アレーセラミック多層コンデンサへのはんだ付け用はんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0284'">25 構造要素に用いられる表面伝導電子エミッタ表示盤(SED)に含まれる酸化鉛。特に,シールフリット、フリットリングに含まれる酸化鉛</xsl:if>
			<xsl:if test="$id='RoHS_0285'">26 ブラックライトブルー(BLB)ランプのガラス筐体に含まれる酸化鉛</xsl:if>
			<xsl:if test="$id='RoHS_0286'">29 理事会指令69/493/EECの付属書I(カテゴリ1、2、3および4)で定義されているクリスタルガラスに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0287'">30 音圧レベル100dB(A)以上の高耐入力スピーカの変換器のボイスコイルに直付けされる導電体の電気的/機械的なはんだ接合部分のカドミウム合金</xsl:if>
			<xsl:if test="$id='RoHS_0288'">31 水銀を含有しない薄型蛍光ランプ(たとえば、液晶ディスプレイや、デザイン用または工業用照明に用いられるもの)に使用されるはんだ材の中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0355'">31a(a) 体外診断用(医療機器)以外の医療機器から回収され、修理または改修に使われるスペアパーツ中の鉛、カドミウム及び六価クロム、PBDE。ただし、再利用が監視可能なクローズドループのBtoB返却システムにおいて起こり、かつ、その再利用が消費者に通知されることを条件とする</xsl:if>
			<xsl:if test="$id='RoHS_0356'">31a(b) 体外診断用医療機器から回収され、修理または改修に使われるスペアパーツ中の鉛、カドミウム及び六価クロム、PBDE。ただし、再利用が監視可能なクローズドループのBtoB返却システムにおいて起こり、かつ、その再利用が消費者に通知されることを条件とする</xsl:if>
			<xsl:if test="$id='RoHS_0357'">31a(c) 電子顕微鏡とその付属品から回収され、修理または改修に使われるスペアパーツ中の鉛、カドミウム及び六価クロム、PBDE。ただし、再利用が監視可能なクローズドループのBtoB返却システムにおいて起こり、かつ、その再利用が消費者に通知されることを条件とする</xsl:if>
			<xsl:if test="$id='RoHS_0289'">32 アルゴン・クリプトンレーザ管のウインドウ組立部品を形成するために用いられるシールフリット中の酸化鉛</xsl:if>
			<xsl:if test="$id='RoHS_0290'">33 電力変圧器用の直径100ミクロン以下の細径銅線のはんだ付け用のはんだ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0291'">34 サーメット(陶性合金)を主構成要素とするトリマー電位差計構成部品中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0292'">37 ホウ酸亜鉛ガラス基板上に形成する高電圧ダイオードのメッキ層中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0293'">38 酸化ベリリウムと接合するアルミニウムに使われる、厚膜ペースト中のカドミウムおよび酸化カドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0294'">39 イルミネーションまたはディスプレイ・システム用途の色変換II-VI族化合物半導体LED(発光領域mm2あたりのカドミウム&lt;10μg)に含まれるカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0364'">39(a) ディスプレイ照明用途について、ダウンシフトカドミウムベース半導体ナノクリスタル量子ドット中のセレン化カドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0320'">40 業務用オーディオ機器に使用されるアナログオプトカプラ用フォトレジスタ中のカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0341'">41 電気電子構成部品のはんだおよび端子処理部分、並びに点火用モジュールおよびその他の電気電子的エンジン制御システムに用いるプリント配線基板の仕上げ処理部分中にあって、技術的理由から携帯式の燃焼機関(欧州議会および理事会指令97/68/ECのクラスSH:1,SH:2,SH:3)のクランクケースまたはシリンダー上に直接、またはそれらの内部に取り付けられねばならないものに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0342'">35 2017年7月22日より前に上市された産業用監視および制御機器向けの液晶ディスプレイのバックライト用冷陰極管であって水銀含有量がランプあたり5mgを超えないもの</xsl:if>
			<xsl:if test="$id='RoHS_0343'">36 産業用監視および制御機器向けとしてC-プレス・コンプライアント・ピン・コネクタシステム以外で使用されている鉛</xsl:if>
			<xsl:if test="$id='RoHS_0344'">36 2021年1月1日より前に上市された産業用監視および制御機器用スペアパーツ中のC-プレス・コンプライアント・ピン・コネクタシステム以外で使用されている鉛</xsl:if>
			<xsl:if test="$id='RoHS_0345'">37 導電率測定に使用される白金黒めっき処理された白金電極中の鉛であって、次の条件の少なくとも一つが当てはまる場合:(a)未知の濃度を測定するために実験用途で使用される、一桁を超える導電率測定範囲(例えば、0.1mS/mから5mS/mに渡る範囲)を有する広範囲の測定;(b)試料範囲のプラスマイナス1%の精度で、かつ次のいずれかのために電極の高耐腐食性が求められる場合の溶液の測定:(i)酸性度&lt;pH1の溶液;(ii)アルカリ度&gt;pH13の溶液;(iii)ハロゲンガスを含有する腐食性溶液;(c)可搬型機器による測定が必要な100mS/mを超える導電率の測定</xsl:if>
			<xsl:if test="$id='RoHS_0346'">38 CT(コンピュータ断層撮影)およびX線システムのX線検出器に使用される、境界面あたり500を超える相互接続を有する広面積積層ダイエレメントの1境界面のはんだ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0347'">38 2020年1月1日より前に上市されたCTおよびX線システム用スペアパーツ中の境界面あたり500を超える相互接続を有する広面積積層ダイエレメントの1境界面のはんだ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0348'">39 医療機器ならびに監視および制御機器に用いられるマイクロチャンネルプレート(MCPs)中の鉛であって、少なくとも次の一つの特性が存在する場合:(a)コンパクトサイズの電子またはイオンの検出器であって、検出器のためのスペースが最大3mm/MCP(検出器の厚さプラスMCPの設置スペース)、トータルで最大6mmに限られており、検出器のためにより多くのスペースを得る代替設計が科学的および技術的に実用的ではないもの;(b)電子またはイオンの検出のための2次元空間分解能で、少なくとも次の一つが当てはまる場合:(i)応答時間が25nsより短い;(ii)試料検出エリアが149mm2より広い;(iii)増幅率が1.3X10^3より大きい;(c)電子またはイオンの検出応答時間が5nsより短い;(d)電子またはイオンの検出のための試料検出エリアが314mm2より広い;(e)増幅率が4.0X10^7より大きい</xsl:if>
			<xsl:if test="$id='RoHS_0349'">39 体外診断用医療機器に用いられるマイクロチャンネルプレート(MCPs)中の鉛であって、少なくとも次の一つの特性が存在する場合:(a)コンパクトサイズの電子またはイオンの検出器であって、検出器のためのスペースが最大3mm/MCP(検出器の厚さプラスMCPの設置スペース)、トータルで最大6mmに限られており、検出器のためにより多くのスペースを得る代替設計が科学的および技術的に実用的ではないもの;(b)電子またはイオンの検出のための2次元空間分解能で、少なくとも次の一つが当てはまる場合:(i)応答時間が25nsより短い;(ii)試料検出エリアが149mm2より広い;(iii)増幅率が1.3×10^3より大きい;(c)電子またはイオンの検出応答時間が5nsより短い;(d)電子またはイオンの検出のための試料検出エリアが314mm2より広い;(e)増幅率が4.0×10^7より大きい</xsl:if>
			<xsl:if test="$id='RoHS_0350'">39 産業用監視および制御機器に用いられるマイクロチャンネルプレート(MCPs)中の鉛であって、少なくとも次の一つの特性が存在する場合:(a)コンパクトサイズの電子またはイオンの検出器であって、検出器のためのスペースが最大3mm/MCP(検出器の厚さプラスMCPの設置スペース)、トータルで最大6mmに限られており、検出器のためにより多くのスペースを得る代替設計が科学的および技術的に実用的ではないもの;(b)電子またはイオンの検出のための2次元空間分解能で、少なくとも次の一つが当てはまる場合:(i)応答時間が25nsより短い;(ii)試料検出エリアが149mm2より広い;(iii)増幅率が1.3×10^3より大きい;(c)電子またはイオンの検出応答時間が5nsより短い;(d)電子またはイオンの検出のための試料検出エリアが314mm2より広い;(e)増幅率が4.0×10^7より大きい</xsl:if>
			<xsl:if test="$id='RoHS_0351'">40 産業用監視および制御機器向けの、定格電圧がAC125VまたはDC250V未満のコンデンサ内の誘電体セラミック中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0352'">40 2021年1月1日より前に上市された産業用監視および制御機器用スペアパーツ中の定格電圧がAC125VまたはDC250V未満のコンデンサ内の誘電体セラミック中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0353'">41 血液、他の体液、体内ガス分析のために体外診断用医療機器で使われる電流、電位差、導電率の電気化学的センサ中の主成分素材として使われるポリ塩化ビニル(PVC)中の熱安定剤としての鉛</xsl:if>
			<xsl:if test="$id='RoHS_0354'">42 高周波(&gt;50MHz)モードで運転可能な血管内超音波画像処理システムで使われる電気回転コネクタ中の水銀</xsl:if>
			<xsl:if test="$id='RoHS_0359'">43 10ppm未満の感度が要求される産業用監視・制御装置で使用される酸素センサのためのエルシュセル(ハーシュセル)中のカドミウムアノード</xsl:if>
			<xsl:if test="$id='RoHS_0295'">1 電離放射線検出器に含まれる鉛、カドミウムおよび水銀</xsl:if>
			<xsl:if test="$id='RoHS_0296'">2 X線管の鉛ベアリング</xsl:if>
			<xsl:if test="$id='RoHS_0297'">3 電磁放射増幅デバイス(マイクロチャンネルプレート、キャピラリプレート)に含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0298'">4 X線管およびイメージ増幅管のガラスフリットに含まれる鉛およびガスレーザの組み立て用および電磁放射を電子に変換する真空管用のガラスフリットバインダーに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0299'">5 電離放射線の防護に用いられる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0300'">6 X線試験物体に含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0301'">7 ステアリン酸鉛X線カ回折結晶</xsl:if>
			<xsl:if test="$id='RoHS_0302'">8 ポータブル蛍光X線分光器に用いられるカドミウム放射性同位体センサ、検出器および電極</xsl:if>
			<xsl:if test="$id='RoHS_0303'">1a イオン選択電極(pH電極のガラスを含む)に含まれる鉛とカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0304'">1b 電気化学酸素センサの鉛陽極</xsl:if>
			<xsl:if test="$id='RoHS_0305'">1c 赤外線検出器に含まれる鉛、カドミウムおよび水銀</xsl:if>
			<xsl:if test="$id='RoHS_0306'">1d 基準電極に含まれる水銀(塩化水銀(I)、硫化水銀、酸化水銀)</xsl:if>
			<xsl:if test="$id='RoHS_0307'">9 ヘリウムーカドミウムレーザに含まれるカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0308'">10 原子吸光分器のランプに含まれる鉛とカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0309'">11 MRIの超伝導体および熱伝導体として用いられる合金に含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0310'">12 MRIおよびSQUIDの超伝導材料の金属接合に用いられる鉛とカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0311'">13 カウンターウェイトに用いる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0312'">14 超音波トランスデューサの圧力単結晶材料に含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0313'">15 超音波トランスデューサの接合に用いるはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0314'">16 モニタリング装置および制御装置に用いる超高精密キャパシタンス/損失測定ブリッジ、高周波RFスイッチおよびリレーに含まれる水銀で、スイッチまたはリレー1個あたり20mgを超えないもの。</xsl:if>
			<xsl:if test="$id='RoHS_0315'">17 ポータブル除細動器のはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0316'">18 波長8~14μmの赤外線を検出する高性能赤外線映像装置のはんだに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0317'">19 LCoSディスプレイに含まれる鉛</xsl:if>
			<xsl:if test="$id='RoHS_0318'">20 X線測定フィルタに含まれるカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0322'">12 MRI、SQUID、NMR(核磁気共鳴)及びFTMS(フーリエ変換質量分析器)検出器の超電導磁気回路の金属接合に用いられる鉛とカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0323'">21 X線画像用イメージインテンシファイア中の蛍光コーティング中のカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0324'">21 2020年1月1日より前にEU市場に上市されたX線システム用スペアパーツ中の蛍光コーティング中のカドミウム</xsl:if>
			<xsl:if test="$id='RoHS_0325'">22 CTとMRIで使用される定位ヘッドフレーム中、及びガンマ線と粒子線治療装置用の位置決めシステム中に用いられる酢酸鉛マーカー</xsl:if>
			<xsl:if test="$id='RoHS_0326'">23 電離放射線にさらされる医療機器のベアリング及び磨耗表面に対する合金要素としての鉛</xsl:if>
			<xsl:if test="$id='RoHS_0327'">24 X線イメージインテンシファイア中のアルミニウムと鉄を真空気密接合するための鉛</xsl:if>
			<xsl:if test="$id='RoHS_0328'">25 通常稼動及び保管条件が-20℃を下回る温度で恒久的に使用される、非磁性コネクタを必要とするピンコネクタシステムの表面コーティング中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0329'">26 通常稼動及び保管条件が-20℃を下回る温度で恒久的に使用される、プリント基板のはんだ、電気電子部品の終端コーティング及びプリント基板のコーティング、電線とケーブルの接続用はんだ、変換器とセンサーの接続用はんだ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0358'">26 通常稼動及び保管条件が-20℃を下回る温度で恒久的に使用される、(a)プリント基板のはんだ、(b)電気電子部品の終端コーティング及びプリント基板のコーティング、(c)電線とケーブルの接続用はんだ、(d)変換器とセンサーの接続用のはんだ、に含まれる鉛。-150℃を下回る温度で定期的に使われるように設計されている装置の温度測定センサーへの電気接続用はんだに含まれる鉛。</xsl:if>
			<xsl:if test="$id='RoHS_0330'">27 (a)この範囲内での使用を意図して設計された患者モニターを含む、医療磁気共鳴画像装置中の磁気アイソセンターの半径1m以内の磁場内、または(b)粒子線治療で利用されるサイクロトロン磁石の外表面及びビーム輸送・ビーム方向制御用磁石から1m以内の磁場内で使用される、はんだ、電気電子部品の終端コーティング及びプリント基板のコーティング、電線・シールド・封入コネクタの接合部中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0331'">28 テルル化カドミウム及びテルル化亜鉛カドミウムのデジタル配列検出器をプリント基板に実装するためのはんだ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0332'">29 医療機器(カテゴリー8)及び/または産業用監視制御機器のクライオクーラーの冷却ヘッド及び/またはクライオクーラーで冷却された低温プローブ及び/またはクライオクーラーで冷却された等電位ボンディングシステム中で使用される超伝導体または熱伝導体としての合金中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0333'">30 X線イメージインテンシファイアにおいて光電陰極を作製するために用いられるアルカリディスペンサー中の六価クロム</xsl:if>
			<xsl:if test="$id='RoHS_0334'">30 2020年1月1日より前にEU市場に上市されたX線システム用スペアパーツ中の光電陰極を作製するために用いられるアルカリディスペンサー中の六価クロム</xsl:if>
			<xsl:if test="$id='RoHS_0335'">31 2014年7月22日より前に上市された医療機器から回収され、かつ2021年7月22日より前に上市されたカテゴリ8機器において使用される、再利用スペアパーツ中の鉛、カドミウム及び六価クロム。ただし、再利用が監視可能なクローズドループのBtoB返却システムにおいて起こり、かつ、その再利用が消費者に通知されることを条件とする</xsl:if>
			<xsl:if test="$id='RoHS_0336'">32 磁気共鳴画像機器に組込まれるポジトロン断層法用検出器及びデータ捕捉装置のプリント基板上のはんだ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0337'">33 携帯非常用除細動器を除く、指令93/42/EECクラスIIaの移動式医療機器に使用される実装されたプリント基板上のはんだ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0338'">33 携帯非常用除細動器を除く、指令93/42/EECクラスIIbの移動式医療機器に使用される実装されたプリント基板上のはんだ中の鉛</xsl:if>
			<xsl:if test="$id='RoHS_0339'">34 BSP(BaSi2O5:Pb)蛍光体を含む体外循環光療法ランプに使用される放電ランプの蛍光パウダー中の活性剤としての鉛</xsl:if>
			<xsl:if test="$id='POPs_0101'">PFOS-0 判断できない</xsl:if>
			<xsl:if test="$id='POPs_0102'">PFOS-1 フォトリソグラフィー工程のためのフォトレジストまたは反射防止膜</xsl:if>
			<xsl:if test="$id='POPs_0103'">PFOS-2 フィルム、紙、プリント版に塗布される写真コーティング</xsl:if>
			<xsl:if test="$id='POPs_0104'">PFOS-3 非装飾的硬質クロム(VI)用ミスト防止剤</xsl:if>
			<xsl:if test="$id='POPs_0105'">PFOS-4 制御された電子メッキシステムで使用される湿潤剤</xsl:if>
			<xsl:if test="$id='POPs_0106'">PFOS-5 航空用油圧油</xsl:if>
			<xsl:if test="$id='POPs_0107'">PFOS-98 10mg/kg(0.001重量%)未満で含有する調剤、またはPFOS濃度が0.1重量%未満である半加工品や成形品、または被覆物中に1μg/m2未満含有する繊維製品やその他の被覆物</xsl:if>
			<xsl:if test="$id='POPs_0108'">PFOS-99 該当なし</xsl:if>
			<xsl:if test="$id='REACH17_0110'">DBT-0 判断できない</xsl:if>
			<xsl:if test="$id='REACH17_0111'">DBT-1 一般向けで、1液および2液室温硬化型シーラント(RTV-1およびRTV-2シーラント)および接着剤(調剤および成形部位)</xsl:if>
			<xsl:if test="$id='REACH17_0112'">DBT-2 一般向けで、製品塗布時に触媒としてDBT化合物を含有する塗料および塗装</xsl:if>
			<xsl:if test="$id='REACH17_0113'">DBT-3 一般向けで、軟質ポリ塩化ビニル(PVC)異形品(単独または硬質PVCとの共押出のいずれも)</xsl:if>
			<xsl:if test="$id='REACH17_0114'">DBT-4 一般向けで、屋外用途を意図される際に安定剤としてDBT化合物を含むPVC塗装織物</xsl:if>
			<xsl:if test="$id='REACH17_0115'">DBT-5 一般向けで、屋外の雨どいや器具、屋根および壁面の被覆材</xsl:if>
			<xsl:if test="$id='REACH17_0116'">DBT-98 スズ換算0.1wt%以下の含有</xsl:if>
			<xsl:if test="$id='REACH17_0117'">DBT-99 該当なし</xsl:if>
			<xsl:if test="$id='REACH17_0118'">DOT-0 判断できない</xsl:if>
			<xsl:if test="$id='REACH17_0119'">DOT-1 肌との接触が意図される織物成形品、手袋、・肌との接触が意図される履物または履物の一部、壁および床の被覆材、育児用品、女性衛生用品、おむつ、2液室温硬化型型押しキット(RTV-2型押しキット)以外の用途</xsl:if>
			<xsl:if test="$id='REACH17_0120'">DOT-98 スズ換算0.1wt%以下の含有</xsl:if>
			<xsl:if test="$id='REACH17_0121'">DOT-99 該当なし</xsl:if>
			<xsl:if test="$id='REACH17_0122'">CR6-0 判断できない</xsl:if>
			<xsl:if test="$id='REACH17_0123'">CR6-1 皮革部分の乾燥総重量の0.0003重量%(3ppm)以上の六価クロムの含有</xsl:if>
			<xsl:if test="$id='REACH17_0124'">CR6-98 皮革部分の乾燥総重量の0.0003重量%(3ppm)未満の六価クロムの含有</xsl:if>
			<xsl:if test="$id='REACH17_0125'">CR6-99 皮革部分に該当しない</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='en'">
			<xsl:if test="$id='ELV_0001'">Noexemption</xsl:if>
			<xsl:if test="$id='ELV_0002'">Belowthreshold</xsl:if>
			<xsl:if test="$id='ELV_0041'">1(a) Steel for machining purposes and batch hot dip galvanised steel components containing up to 0,35 % lead by weight</xsl:if>
			<xsl:if test="$id='ELV_0042'">1(b) Continuously galvanised steel sheet containing up to 0,35 % lead by weight. Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0043'">2(a) Aluminium for machining purposes with a lead content up to 2 % by weight | As spare parts for vehicles put on the market before 1 July 2005</xsl:if>
			<xsl:if test="$id='ELV_0044'">2(b) Aluminium with a lead content up to 1,5 % by weight | As spare parts for vehicles put on the market before 1 July 2008</xsl:if>
			<xsl:if test="$id='ELV_0045'">2(c)(i) Aluminium alloys for machining purposes with a lead content up to 0,4 % by weight</xsl:if>
			<xsl:if test="$id='ELV_0079'">2(c)(ii) Aluminium alloys not included in entry 2(c)(i) with a lead content up to 0,4 % by weight</xsl:if>
			<xsl:if test="$id='ELV_0046'">3 Copper alloy containing up to 4 % lead by weight</xsl:if>
			<xsl:if test="$id='ELV_0047'">4(a) Bearing shells and bushes | As spare parts for vehicles put on the market before 1 July 2008</xsl:if>
			<xsl:if test="$id='ELV_0048'">4(b) Bearing shells and bushes in engines, transmissions and air conditioning compressors | 1July 2011 and spare parts for vehicles put on the market before 1 July 2011</xsl:if>
			<xsl:if test="$id='ELV_0049'">5 Batteries</xsl:if>
			<xsl:if test="$id='ELV_0080'">5(a) Lead in batteries in high-voltage systems * that are used only for propulsion in M1 and N1 vehicles(*: Systems that have a voltage of &gt; 75 V DC). Vehicles type-approved before 1 January 2019 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0081'">5(b) Lead in batteries for battery applications not included in entry 5(a)</xsl:if>
			<xsl:if test="$id='ELV_0050'">6 Vibration dampers | Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0051'">7(a) Vulcanising agents and stabilisers for elastomers in brake hoses, fuel hoses, air ventilation hoses, elastomer/metal parts in the chassis applications, and engine mountings | As spare parts for vehicles put on the market before 1 July 2005</xsl:if>
			<xsl:if test="$id='ELV_0052'">7(b) Vulcanising agents and stabilisers for elastomers in brake hoses, fuel hoses, air ventilation hoses, elastomer/metal parts in the chassis applications, and engine mountings containing up to 0,5 % lead by weight | As spare parts for vehicles put on the market before 1 July 2006</xsl:if>
			<xsl:if test="$id='ELV_0053'">7(c) Bonding agents for elastomers in powertrain applications containing up to 0,5 % lead by weight | As spare parts for vehicles put on the market before 1 July 2009</xsl:if>
			<xsl:if test="$id='ELV_0054'">8(a) Lead in solders to attach electrical and electronic components to electronic circuit boards and lead in finishes on terminations of components other than electrolyte aluminium capacitors, on component pins and on electronic circuit boards | Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0055'">8(b) Lead in solders in electrical applications other than soldering on electronic circuit boards or on glass | Vehicles type approved before 1 January 2011 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0056'">8(c) Lead in finishes on terminals of electrolyte aluminium capacitors | Vehicles type approved before 1 January 2013 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0057'">8(d) Lead used in soldering on glass in mass airflow sensors | Vehicles type approved before 1 January 2015 and spare parts of such vehicles</xsl:if>
			<xsl:if test="$id='ELV_0058'">8(e) Lead in high melting temperature type solders (i.e. lead-based alloys containing 85 % by weight or more lead)</xsl:if>
			<xsl:if test="$id='ELV_0059'">8(f) Lead in compliant pin connector systems</xsl:if>
			<xsl:if test="$id='ELV_0060'">8(g) Lead in solders to complete a viable electrical connection between semiconductor die and carrier within integrated circuit flip chip packages</xsl:if>
			<xsl:if test="$id='ELV_0061'">8(h) Lead in solder to attach heat spreaders to the heat sink in power semiconductor assemblies with a chip size of at least 1 cm2 of projection area and a nominal current density of at least 1 A/mm2 of silicon chip area | Vehicles type-approved before 1 january 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0062'">8(i) Lead in solders in electrical glazing applications on glass except for soldering in laminated glazing | Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0063'">8(j) Lead in solders for soldering in laminated glazing | Vehicles type-approved before 1 january 2020 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0077'">8(f)(a) Lead in compliant pin connector systems | Vehicles type-approved before 1 january 2017 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0078'">8(f)(b) Lead in compliant pin connector systems other than the mating area of vehicle harness connectors</xsl:if>
			<xsl:if test="$id='ELV_0064'">9 Valve seats | As spare parts for engine types developed before 1 July 2003</xsl:if>
			<xsl:if test="$id='ELV_0065'">10(a) Electrical and electronic components which contain lead in a glass or ceramic, in a glass or ceramic matrix compound, in a glass-ceramic material, or in a glass-ceramic matrix compound.This exemption does not cover the use of lead in:glass in bulbs and glaze of spark plugs,dielectric ceramic materials of components listed under 10(b), 10(c) and 10(d). | | X [5] (for components other than piezo in engines)</xsl:if>
			<xsl:if test="$id='ELV_0066'">10(b) Lead in PZT based dielectric ceramic materials of capacitors being part of integrated circuits or discrete semiconductors</xsl:if>
			<xsl:if test="$id='ELV_0067'">10(c) Lead in dielectric ceramic materials of capacitors with a rated voltage of less than 125 V AC or 250 V DC | Vehicles type approved before 1 January 2016 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0068'">10(d) Lead in the dielectric ceramic materials of capacitors compensating the temperature-related deviations of sensors in ultrasonic sonar systems | Vehicles type approved before 1 January 2017 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0069'">11 Pyrotechnic initiators | Vehicles type approved before 1 July 2006 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0070'">12 Lead-containing thermoelectric materials in automotive electrical applications to reduce CO2 emissions by recuperation of exhaust heat | Vehicles type approved before 1 January 2019 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0071'">13(a) Corrosion preventive coatings | As spare parts for vehicles put on the market before 1 July 2007</xsl:if>
			<xsl:if test="$id='ELV_0072'">13(b) Corrosion preventive coatings related to bolt and nut assemblies for chassis applications | As spare parts for vehicles put on the market before 1 July 2008</xsl:if>
			<xsl:if test="$id='ELV_0073'">14 As an anti-corrosion agent of the carbon steel cooling system in absorption refrigerators in motorcaravans up to 0,75 weight -% in the cooling solution except where the use of other cooling technologies is practicable (i.e. available on the market for the application in motor caravans) and does not lead to negative environmental, health and/or consumer safety impacts</xsl:if>
			<xsl:if test="$id='ELV_0074'">15(a) Discharge lamps for headlight application | Vehicles type approved before 1 July 2012 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0075'">15(b) Fluorescent tubes used in instrument panel displays | Vehicles type approved before 1 July 2012 and spare parts for these vehicles</xsl:if>
			<xsl:if test="$id='ELV_0076'">16 Batteries for electrical vehicles | As spare parts for vehicles put on the market before 31 December 2008</xsl:if>
			<xsl:if test="$id='RoHS_0001'">Noexemption</xsl:if>
			<xsl:if test="$id='RoHS_0002'">Belowthreshold</xsl:if>
			<xsl:if test="$id='RoHS_0201'">1(a) Mercury in single capped (compact) fluorescent lamps for general lighting purposes &lt; 30 W:not exceeding (per burner) 5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0202'">1(a) Mercury in single capped (compact) fluorescent lamps for general lighting purposes &lt; 30 W:not exceeding (per burner) 3.5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0203'">1(a) Mercury in single capped (compact) fluorescent lamps for general lighting purposes &lt; 30 W:not exceeding (per burner) 2.5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0204'">1(b) Mercury in single capped (compact) fluorescent lamps for general lighting purposes &gt;= 30 W and &lt; 50 W:not exceeding (per burner) 5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0205'">1(b) Mercury in single capped (compact) fluorescent lamps for general lighting purposes &gt;= 30 W and &lt; 50 W:not exceeding (per burner) 3.5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0206'">1(c) Mercury in single capped (compact) fluorescent lamps for general lighting purposes &gt;= 50 W and &lt; 150 W:not exceeding (per burner) 5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0207'">1(d) Mercury in single capped (compact) fluorescent lamps for general lighting purposes &gt;= 150 W:not exceeding (per burner) 15 mg</xsl:if>
			<xsl:if test="$id='RoHS_0208'">1(e) Mercury in single capped (compact) fluorescent lamps for general lighting purposes with circular or square structural shape and tube diameter &lt;= 17 mm</xsl:if>
			<xsl:if test="$id='RoHS_0209'">1(e) Mercury in single capped (compact) fluorescent lamps for general lighting purposes with circular or square structural shape and tube diameter &lt;= 17 mm:not exceeding (per burner) 7 mg</xsl:if>
			<xsl:if test="$id='RoHS_0210'">1(f) Mercury in single capped (compact) fluorescent lamps for special purposes: not exceeding (per burner) 5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0321'">1(g) Mercury in single capped (compact) fluorescent lamps for general lighting purposes &lt; 30 W with a lifetime equal or above 20 000 h:not exceeding (per burner) 3.5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0211'">2(a)(1) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter &lt; 9 mm (e.g. T2) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0212'">2(a)(1) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter &lt; 9 mm (e.g. T2) for general lighting purposes not exceeding (per lamp): 4 mg</xsl:if>
			<xsl:if test="$id='RoHS_0213'">2(a)(2) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter &gt;= 9 mm and &lt;= 17 mm (e.g. T5) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0214'">2(a)(2) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter &gt;= 9 mm and &lt;= 17 mm (e.g. T5) for general lighting purposes not exceeding (per lamp): 3 mg</xsl:if>
			<xsl:if test="$id='RoHS_0215'">2(a)(3) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter &gt; 17 mm and &lt;= 28 mm (e.g. T8) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0216'">2(a)(3) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter &gt; 17 mm and &lt;= 28 mm (e.g. T8) for general lighting purposes not exceeding (per lamp): 3.5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0217'">2(a)(4) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter &gt; 28 mm (e.g. T12) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0218'">2(a)(4) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with normal lifetime and a tube diameter &gt; 28 mm (e.g. T12) for general lighting purposes not exceeding (per lamp): 3.5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0219'">2(a)(5) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with long lifetime (&gt;= 25 000 h) for general lighting purposes not exceeding (per lamp): 8 mg</xsl:if>
			<xsl:if test="$id='RoHS_0220'">2(a)(5) Mercury in double-capped linear fluorescent lamps Tri-band phosphor with long lifetime (&gt;= 25 000 h) for general lighting purposes not exceeding (per lamp): 5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0221'">2(b)(1) Mercury in other fluorescent lamps Linear halophosphate lamps with tube &gt; 28 mm (e.g. T10 and T12) not exceeding (per lamp):10 mg</xsl:if>
			<xsl:if test="$id='RoHS_0222'">2(b)(2) Mercury in other fluorescent lamps Non-linear halophosphate lamps (all diameters) not exceeding (per lamp):15 mg</xsl:if>
			<xsl:if test="$id='RoHS_0223'">2(b)(3) Mercury in other fluorescent lamps Non-linear tri-band phosphor lamps with tube diameter &gt; 17 mm (e.g. T9)</xsl:if>
			<xsl:if test="$id='RoHS_0224'">2(b)(3) Mercury in other fluorescent lamps Non-linear tri-band phosphor lamps with tube diameter &gt; 17 mm (e.g. T9) not exceeding (per lamp): 15 mg</xsl:if>
			<xsl:if test="$id='RoHS_0225'">2(b)(4) Mercury in other fluorescent lamps for other general lighting and special purposes (e.g. induction lamps)</xsl:if>
			<xsl:if test="$id='RoHS_0226'">2(b)(4) Mercury in other fluorescent lamps for other general lighting and special purposes (e.g. induction lamps)not exceeding (per lamp): 15 mg</xsl:if>
			<xsl:if test="$id='RoHS_0227'">3(a) Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Short length (&lt;= 500 mm)</xsl:if>
			<xsl:if test="$id='RoHS_0228'">3(a) Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Short length (&lt;= 500 mm) not exceeding (per lamp): 3.5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0229'">3(b) Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Medium length (&gt; 500 mm and &lt;= 1 500 mm)</xsl:if>
			<xsl:if test="$id='RoHS_0230'">3(b) Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Medium length (&gt; 500 mm and &lt;= 1 500 mm) not exceeding (per lamp):5 mg</xsl:if>
			<xsl:if test="$id='RoHS_0231'">3(c) Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Long length (&gt; 1 500 mm)</xsl:if>
			<xsl:if test="$id='RoHS_0232'">3(c) Mercury in cold cathode fluorescent lamps and external electrode fluorescent lamps (CCFL and EEFL) for special purposes Long length (&gt; 1 500 mm) not exceeding (per lamp):13 mg</xsl:if>
			<xsl:if test="$id='RoHS_0233'">4(a) Mercury in other low pressure discharge lamps (per lamp)</xsl:if>
			<xsl:if test="$id='RoHS_0234'">4(a) Mercury in other low pressure discharge lamps not exceeding (per lamp):15 mg</xsl:if>
			<xsl:if test="$id='RoHS_0235'">4(b)-I Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra &gt; 60, P &lt;= 155 W</xsl:if>
			<xsl:if test="$id='RoHS_0236'">4(b)-I Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes not exceeding (per burner) in lamps with improved colour rendering index Ra &gt; 60, P &lt;= 155 W: 30 mg</xsl:if>
			<xsl:if test="$id='RoHS_0237'">4(b)-II Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra &gt; 60, 155 W &lt; P &lt;= 405 W</xsl:if>
			<xsl:if test="$id='RoHS_0238'">4(b)-II Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra &gt; 60, 155 W &lt; P &lt;= 405 W: 40 mg</xsl:if>
			<xsl:if test="$id='RoHS_0239'">4(b)-III Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra &gt; 60, P &gt; 405 W</xsl:if>
			<xsl:if test="$id='RoHS_0240'">4(b)-III Mercury in High Pressure Sodium (vapour) lamps for general lighting purposes with improved colour rendering index Ra &gt; 60, P &gt; 405 W: 40 mg</xsl:if>
			<xsl:if test="$id='RoHS_0241'">4(c)-I Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes P &lt;= 155 W</xsl:if>
			<xsl:if test="$id='RoHS_0242'">4(c)-I Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes P &lt;= 155 W not exceeding (per burner):25 mg</xsl:if>
			<xsl:if test="$id='RoHS_0243'">4(c)-II Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes 155 W &lt; P &lt;= 405 W</xsl:if>
			<xsl:if test="$id='RoHS_0244'">4(c)-II Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes 155 W &lt; P &lt;= 405 W not exceeding (per burner):30 mg</xsl:if>
			<xsl:if test="$id='RoHS_0245'">4(c)-III Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes P &gt; 405 W</xsl:if>
			<xsl:if test="$id='RoHS_0246'">4(c)-III Mercury in other High Pressure Sodium (vapour) lamps for general lighting purposes P &gt; 405 W not exceeding (per burner):40 mg</xsl:if>
			<xsl:if test="$id='RoHS_0247'">4(d) Mercury in High Pressure Mercury (vapour) lamps (HPMV). Expires on 13 April 2015</xsl:if>
			<xsl:if test="$id='RoHS_0248'">4(e) Mercury in metal halide lamps (MH)</xsl:if>
			<xsl:if test="$id='RoHS_0249'">4(f) Mercury in other discharge lamps for special purposes not specifically mentioned in this Annex</xsl:if>
			<xsl:if test="$id='RoHS_0340'">4(g) Mercury in hand crafted luminous discharge tubes used for signs, decorative or architectural and specialist lighting and light-artwork, where the mercury content shall be limited as follows: (a) 20 mg per electrode pair + 0.3 mg per tube length in cm, but not more than 80 mg, for outdoor applications and indoor applications exposed to temperatures below 20 ℃; (b) 15 mg per electrode pair + 0.24 mg per tube length in cm, but not more than 80 mg, for all other indoor applications.</xsl:if>
			<xsl:if test="$id='RoHS_0250'">5(a) Lead in glass of cathode ray tubes</xsl:if>
			<xsl:if test="$id='RoHS_0251'">5(b) Lead in glass of fluorescent tubes not exceeding 0,2 % by weight</xsl:if>
			<xsl:if test="$id='RoHS_0252'">6(a) Lead as an alloying element in steel for machining purposes and in galvanized steel containing up to 0,35 % lead by weight</xsl:if>
			<xsl:if test="$id='RoHS_0365'">6(a)-I Lead as an alloying element in steel for machining purposes containing up to 0,35 % lead by weight and in batch hot dip galvanised steel components containing up to 0,2 % lead by weight</xsl:if>
			<xsl:if test="$id='RoHS_0253'">6(b) Lead as an alloying element in aluminium containing up to 0,4 % lead by weight</xsl:if>
			<xsl:if test="$id='RoHS_0366'">6(b)-I Lead as an alloying element in aluminium containing up to 0,4 % lead by weight, provided it stems from lead-bearing aluminium scrap recycling</xsl:if>
			<xsl:if test="$id='RoHS_0367'">6(b)-II Lead as an alloying element in aluminium for machining purposes with a lead content up to 0,4 % by weight</xsl:if>
			<xsl:if test="$id='RoHS_0254'">6(c) Copper alloy containing up to 4 % lead by weight</xsl:if>
			<xsl:if test="$id='RoHS_0255'">7(a) Lead in high melting temperature type solders (i.e. lead- based alloys containing 85 % by weight or more lead)</xsl:if>
			<xsl:if test="$id='RoHS_0256'">7(b) Lead in solders for servers, storage and storage array systems, network infrastructure equipment for switching, signalling, transmission, and network management for telecommunications</xsl:if>
			<xsl:if test="$id='RoHS_0257'">7(c)-I Electrical and electronic components containing lead in a glass or ceramic other than dielectric ceramic in capacitors, e.g. piezoelectronic devices, or in a glass or ceramic matrix compound</xsl:if>
			<xsl:if test="$id='RoHS_0258'">7(c)-II Lead in dielectric ceramic in capacitors for a rated voltage of 125 V AC or 250 V DC or higher</xsl:if>
			<xsl:if test="$id='RoHS_0259'">7(c)-III Lead in dielectric ceramic in capacitors for a rated voltage of less than 125 V AC or 250 V DC.</xsl:if>
			<xsl:if test="$id='RoHS_0260'">7(c)-III Lead in dielectric ceramic in capacitors for a rated voltage of less than 125 V AC or 250 V DC may be used in spare parts for EEE placed on the market before 1 January 2013</xsl:if>
			<xsl:if test="$id='RoHS_0319'">7(c)-IV Lead in PZT based dielectric ceramic materials for capacitors being part of integrated circuits or discrete semiconductors</xsl:if>
			<xsl:if test="$id='RoHS_0261'">8(a) Cadmium and its compounds in one shot pellet type thermal cut-offs.</xsl:if>
			<xsl:if test="$id='RoHS_0262'">8(a) Cadmium and its compounds in one shot pellet type thermal cut-offs may be used in spare parts for EEE placed on the market before 1 January 2012</xsl:if>
			<xsl:if test="$id='RoHS_0263'">8(b) Cadmium and its compounds in electrical contacts</xsl:if>
			<xsl:if test="$id='RoHS_0264'">9 Hexavalent chromium as an anticorrosion agent of the carbon steel cooling system in absorption refrigerators up to 0,75 % by weight in the cooling solution</xsl:if>
			<xsl:if test="$id='RoHS_0265'">9(b) Lead in bearing shells and bushes for refrigerant-containing compressors for heating, ventilation, air conditioning and refrigeration (HVACR) applications</xsl:if>
			<xsl:if test="$id='RoHS_0360'">9(b)-(I) Applies to category 1;Lead in bearing shells and bushes for refrigerantcontaining hermetic scroll compressors with a stated electrical power input equal or below 9 kW for heating, ventilation, air conditioning and refrigeration (HVACR) applications.</xsl:if>
			<xsl:if test="$id='RoHS_0266'">11(a) Lead used in C-press compliant pin connector systems. May be used in spare parts for EEE placed on the market before 24 September 2010</xsl:if>
			<xsl:if test="$id='RoHS_0267'">11(b) Lead used in other than C-press compliant pin connector systems.</xsl:if>
			<xsl:if test="$id='RoHS_0268'">11(b) Lead used in other than C-press compliant pin connector systems may be used in spare parts for EEE placed on the market before 1 January 2013</xsl:if>
			<xsl:if test="$id='RoHS_0269'">12 Lead as a coating material for the thermal conduction module C-ring. May be used in spare parts for EEE placed on the market before 24 September 2010</xsl:if>
			<xsl:if test="$id='RoHS_0270'">13(a) Lead in white glasses used for optical applications</xsl:if>
			<xsl:if test="$id='RoHS_0271'">13(b) Cadmium and lead in filter glasses and glasses used for reflectance standards</xsl:if>
			<xsl:if test="$id='RoHS_0361'">13(b)-(I) Lead in ion coloured optical filter glass types</xsl:if>
			<xsl:if test="$id='RoHS_0362'">13(b)-(II) Cadmium in striking optical filter glass types; excluding applications falling under point 39 of this Annex III</xsl:if>
			<xsl:if test="$id='RoHS_0363'">13(b)-(III) Cadmium and lead in glazes used for reflectance standards</xsl:if>
			<xsl:if test="$id='RoHS_0272'">14 Lead in solders consisting of more than two elements for the connection between the pins and the package of microprocessors with a lead content of more than 80 % and less than 85 % by weight.</xsl:if>
			<xsl:if test="$id='RoHS_0273'">14 Lead in solders consisting of more than two elements for the connection between the pins and the package of microprocessors with a lead content of more than 80 % and less than 85 % by weight may be used in spare parts for EEE placed on the market before 1 January 2011</xsl:if>
			<xsl:if test="$id='RoHS_0274'">15 Lead in solders to complete a viable electrical connection between semiconductor die and carrier within integrated circuit flip chip packages</xsl:if>
			<xsl:if test="$id='RoHS_0275'">16 Lead in linear incandescent lamps with silicate coated tubes. Expires on 1 September 2013</xsl:if>
			<xsl:if test="$id='RoHS_0276'">17 Lead halide as radiant agent in high intensity discharge (HID) lamps used for professional reprography applications</xsl:if>
			<xsl:if test="$id='RoHS_0277'">18(a) Lead as activator in the fluorescent powder (1 % lead by weight or less) of discharge lamps when used as speciality lamps for diazoprinting reprography, lithography, insect traps, photochemical and curing processes containing phosphors such as SMS ((Sr,Ba) 2 MgSi 2 O 7 :Pb)</xsl:if>
			<xsl:if test="$id='RoHS_0278'">18(b) Lead as activator in the fluorescent powder (1 % lead by weight or less) of discharge lamps when used as sun tanning lamps containing phosphors such as BSP (BaSi 2 O 5 :Pb)</xsl:if>
			<xsl:if test="$id='RoHS_0279'">19 Lead with PbBiSn-Hg and PbInSn-Hg in specific compositions as main amalgam and with PbSn-Hg as auxiliary amalgam in very compact energy saving lamps (ESL). Expires on 1 June 2011</xsl:if>
			<xsl:if test="$id='RoHS_0280'">20 Lead oxide in glass used for bonding front and rear substrates of flat fluorescent lamps used for Liquid Crystal Displays (LCDs). Expires on 1 June 2011</xsl:if>
			<xsl:if test="$id='RoHS_0281'">21 Lead and cadmium in printing inks for the application of enamels on glasses, such as borosilicate and soda lime glasses</xsl:if>
			<xsl:if test="$id='RoHS_0282'">23 Lead in finishes of fine pitch components other than connectors with a pitch of 0,65 mm and less. May be used in spare parts for EEE placed on the market before 24 September 2010</xsl:if>
			<xsl:if test="$id='RoHS_0283'">24 Lead in solders for the soldering to machined through hole discoidal and planar array ceramic multilayer capacitors</xsl:if>
			<xsl:if test="$id='RoHS_0284'">25 Lead oxide in surface conduction electron emitter displays (SED) used in structural elements, notably in the seal frit and frit ring</xsl:if>
			<xsl:if test="$id='RoHS_0285'">26 Lead oxide in the glass envelope of black light blue lamps. Expires on 1 June 2011</xsl:if>
			<xsl:if test="$id='RoHS_0286'">29 Lead bound in crystal glass as defined in Annex I (Categories 1, 2, 3 and 4) of Council Directive 69/493/EEC ( 1 )</xsl:if>
			<xsl:if test="$id='RoHS_0287'">30 Cadmium alloys as electrical/mechanical solder joints to electrical conductors located directly on the voice coil in transducers used in high-powered loudspeakers with sound pressure levels of 100 dB (A) and more</xsl:if>
			<xsl:if test="$id='RoHS_0288'">31 Lead in soldering materials in mercury free flat fluorescent lamps (which e.g. are used for liquid crystal displays, design or industrial lighting)</xsl:if>
			<xsl:if test="$id='RoHS_0355'">31a(a) Lead, cadmium, hexavalent chromium, and polybrominated diphenyl ethers (PBDE) in spare parts recovered from and used for the repair or refurbishment of medical devices other than in vitro diagnostic medical devices, provided that the reuse takes place in auditable closed-loop business-to-business return systems and that each reuse of parts is notified to the customer.</xsl:if>
			<xsl:if test="$id='RoHS_0356'">31a(b) Lead, cadmium, hexavalent chromium, and polybrominated diphenyl ethers (PBDE) in spare parts recovered from and used for the repair or refurbishment of in vitro diagnostic medical devices, provided that the reuse takes place in auditable closed-loop business-to-business return systems and that each reuse of parts is notified to the customer.</xsl:if>
			<xsl:if test="$id='RoHS_0357'">31a(c) Lead, cadmium, hexavalent chromium, and polybrominated diphenyl ethers (PBDE) in spare parts recovered from and used for the repair or refurbishment of electron microscopes and their accessories, provided that the reuse takes place in auditable closed-loop business-to-business return systems and that each reuse of parts is notified to the customer.</xsl:if>
			<xsl:if test="$id='RoHS_0289'">32 Lead oxide in seal frit used for making window assemblies for Argon and Krypton laser tubes</xsl:if>
			<xsl:if test="$id='RoHS_0290'">33 Lead in solders for the soldering of thin copper wires of 100 μm diameter and less in power transformers</xsl:if>
			<xsl:if test="$id='RoHS_0291'">34 Lead in cermet-based trimmer potentiometer elements</xsl:if>
			<xsl:if test="$id='RoHS_0292'">37 Lead in the plating layer of high voltage diodes on the basis of a zinc borate glass body</xsl:if>
			<xsl:if test="$id='RoHS_0293'">38 Cadmium and cadmium oxide in thick film pastes used on aluminium bonded beryllium oxide</xsl:if>
			<xsl:if test="$id='RoHS_0294'">39 Cadmium in colour converting II-VI LEDs (&lt; 10 μg Cd per mm 2 of light-emitting area) for use in solid state illumination or display systems. Expires on 1 July 2014</xsl:if>
			<xsl:if test="$id='RoHS_0364'">39(a) Cadmium selenide in downshifting cadmium-based semiconductor nanocrystal quantum dots for use in display lighting applications</xsl:if>
			<xsl:if test="$id='RoHS_0320'">40 Cadmium in photoresistors for analogue optocouplers applied in professional audio equipment</xsl:if>
			<xsl:if test="$id='RoHS_0341'">41 Lead in solders and termination finishes of electrical and electronic components and finishes of printed circuit boards used in ignition modules and other electrical and electronic engine control systems, which for technical reasons must be mounted directly on or in the crankcase or cylinder of hand-held combustion engines (classes SH:1,SH:2, SH:3 of Directive 97/68/EC of the European Parliament and of the Council.</xsl:if>
			<xsl:if test="$id='RoHS_0342'">35 Mercury in cold cathode fluorescent lamps for back-lighting liquid crystal displays, not exceeding 5 mg per lamp, used in industrial monitoring and control instruments placed on the market before 22 July 2017.</xsl:if>
			<xsl:if test="$id='RoHS_0343'">36 Lead used in other than C-press compliant pin connector systems for industrial monitoring and control instruments.</xsl:if>
			<xsl:if test="$id='RoHS_0344'">36 Lead used in other than C-press compliant pin connector systems in spare parts for industrial monitoring and control instruments placed on the market before 1 January 2021.</xsl:if>
			<xsl:if test="$id='RoHS_0345'">37 Lead in platinized platinum electrodes used for conductivity measurements where at least one of the following conditions applies: (a) wide-range measurements with a conductivity range covering more than 1 order of magnitude (e.g. range between 0.1 mS/m and 5 mS/m) in laboratory applications for unknown concentrations; (b) measurements of solutions where an accuracy of +/– 1% of the sample range and where high corrosion resistance of the electrode are required for any of the following: (i) solutions with an acidity &lt; pH 1; (ii) solutions with an alkalinity &gt; pH 13; (iii) corrosive solutions containing halogen gas; (c) measurements of conductivities above 100 mS/m that must be performed with portable instruments.</xsl:if>
			<xsl:if test="$id='RoHS_0346'">38 Lead in solder in one interface of large area stacked die elements with more than 500 interconnects per interface which are used in X-ray detectors of CT (computed tomography) and X-ray systems.</xsl:if>
			<xsl:if test="$id='RoHS_0347'">38 Lead in solder in one interface of large area stacked die elements with more than 500 interconnects per interface which are used in spare parts for CT and X-ray systems placed on the market before 1 January 2020.</xsl:if>
			<xsl:if test="$id='RoHS_0348'">39 Lead in micro-channel plates (MCPs) used in medical devices and monitoring and control instruments where at least one of the following properties is present: (a) a compact size of the detector for electrons or ions, where the space for the detector is limited to a maximum of 3 mm/MCP (detector thickness + space for installation of the MCP), a maximum of 6 mm in total, and an alternative design yielding more space for the detector is scientifically and technically impracticable; (b) a two-dimensional spatial resolution for detecting electrons or ions, where at least one of the following applies: (i) a response time shorter than 25 ns; (ii) a sample detection area larger than 149 mm2; (iii) a multiplication factor larger than 1.3 X 10^3; (c) a response time shorter than 5 ns for detecting electrons or ions; (d) a sample detection area larger than 314 mm2 for detecting electrons or ions; (e) a multiplication factor larger than 4.0 X 10^7.</xsl:if>
			<xsl:if test="$id='RoHS_0349'">39 Lead in micro-channel plates (MCPs) used in in-vitro diagnostic medical devices where at least one of the following properties is present: (a) a compact size of the detector for electrons or ions, where the space for the detector is limited to a maximum of 3 mm/MCP (detector thickness + space for installation of the MCP), a maximum of 6 mm in total, and an alternative design yielding more space for the detector is scientifically and technically impracticable; (b) a two-dimensional spatial resolution for detecting electrons or ions, where at least one of the following applies: (i) a response time shorter than 25 ns; (ii) a sample detection area larger than 149 mm2; (iii) a multiplication factor larger than 1.3 X 10^3; (c) a response time shorter than 5 ns for detecting electrons or ions; (d) a sample detection area larger than 314 mm2 for detecting electrons or ions; (e) a multiplication factor larger than 4.0 X 10^7.</xsl:if>
			<xsl:if test="$id='RoHS_0350'">39 Lead in micro-channel plates (MCPs) used in industrial monitoring and control instruments where at least one of the following properties is present: (a) a compact size of the detector for electrons or ions, where the space for the detector is limited to a maximum of 3 mm/MCP (detector thickness + space for installation of the MCP), a maximum of 6 mm in total, and an alternative design yielding more space for the detector is scientifically and technically impracticable; (b) a two-dimensional spatial resolution for detecting electrons or ions, where at least one of the following applies: (i) a response time shorter than 25 ns; (ii) a sample detection area larger than 149 mm2; (iii) a multiplication factor larger than 1.3 X 10^3; (c) a response time shorter than 5 ns for detecting electrons or ions; (d) a sample detection area larger than 314 mm2 for detecting electrons or ions; (e) a multiplication factor larger than 4.0 X 10^7.</xsl:if>
			<xsl:if test="$id='RoHS_0351'">40 Lead in dielectric ceramic in capacitors for a rated voltage of less than 125 V AC or 250 V DC for industrial monitoring and control instruments.</xsl:if>
			<xsl:if test="$id='RoHS_0352'">40 Lead in dielectric ceramic in capacitors for a rated voltage of less than 125 V AC or 250 V DC in spare parts for industrial monitoring and control instruments placed on the market before 1 January 2021.</xsl:if>
			<xsl:if test="$id='RoHS_0353'">41 Lead as a thermal stabiliser in polyvinyl chloride (PVC) used as base material in amperometric, potentiometric and conductometric electrochemical sensors which are used in in-vitro diagnostic medical devices for the analysis of blood and other body fluids and body gases.</xsl:if>
			<xsl:if test="$id='RoHS_0354'">42 Mercury in electric rotating connectors used in intravascular ultrasound imaging systems capable of high operating frequency (&gt; 50 MHz) modes of operation.</xsl:if>
			<xsl:if test="$id='RoHS_0359'">43 Cadmium anodes in Hersch cells for oxygen sensors used in industrial monitoring and control instruments, where sensitivity below 10 ppm is required.</xsl:if>
			<xsl:if test="$id='RoHS_0295'">1 Lead, cadmium and mercury in detectors for ionising radiation</xsl:if>
			<xsl:if test="$id='RoHS_0296'">2 Lead bearings in X-ray tubes</xsl:if>
			<xsl:if test="$id='RoHS_0297'">3 Lead in electromagnetic radiation amplification devices: micro-channel plate and capillary plate</xsl:if>
			<xsl:if test="$id='RoHS_0298'">4 Lead in glass frit of X-ray tubes and image intensifiers and lead in glass frit binder for assembly of gas lasers and for vacuum tubes that convert electromagnetic radiation into electrons</xsl:if>
			<xsl:if test="$id='RoHS_0299'">5 Lead in shielding for ionising radiation</xsl:if>
			<xsl:if test="$id='RoHS_0300'">6 Lead in X-ray test objects</xsl:if>
			<xsl:if test="$id='RoHS_0301'">7 Lead stearate X-ray diffraction crystals</xsl:if>
			<xsl:if test="$id='RoHS_0302'">8 Radioactive cadmium isotope source for portable X-ray fluorescence spectrometers</xsl:if>
			<xsl:if test="$id='RoHS_0303'">1a Lead and cadmium in ion selective electrodes including glass of pH electrodes</xsl:if>
			<xsl:if test="$id='RoHS_0304'">1b Lead anodes in electrochemical oxygen sensors</xsl:if>
			<xsl:if test="$id='RoHS_0305'">1c Lead, cadmium and mercury in infra-red light detectors</xsl:if>
			<xsl:if test="$id='RoHS_0306'">1d Mercury in reference electrodes: low chloride mercury chloride, mercury sulphate and mercury oxide</xsl:if>
			<xsl:if test="$id='RoHS_0307'">9 Cadmium in helium-cadmium lasers</xsl:if>
			<xsl:if test="$id='RoHS_0308'">10 Lead and cadmium in atomic adsorption spectroscopy lamps</xsl:if>
			<xsl:if test="$id='RoHS_0309'">11 Lead in alloys as a superconductor and thermal conductor in MRI</xsl:if>
			<xsl:if test="$id='RoHS_0310'">12 Lead and cadmium in metallic bonds to superconducting materials in MRI and SQUID detectors</xsl:if>
			<xsl:if test="$id='RoHS_0311'">13 Lead in counterweights</xsl:if>
			<xsl:if test="$id='RoHS_0312'">14 Lead in single crystal piezoelectric materials for ultrasonic transducers</xsl:if>
			<xsl:if test="$id='RoHS_0313'">15 Lead in solders for bonding to ultrasonic transducers</xsl:if>
			<xsl:if test="$id='RoHS_0314'">16 Mercury in very high accuracy capacitance and loss measurement bridges and in high frequency RF switches and relays in monitoring and control instruments not exceeding 20 mg of mercury per switch or relay</xsl:if>
			<xsl:if test="$id='RoHS_0315'">17 Lead in solders in portable emergency defibrillators</xsl:if>
			<xsl:if test="$id='RoHS_0316'">18 Lead in solders of high performance infrared imaging modules to detect in the range 8–14 µm</xsl:if>
			<xsl:if test="$id='RoHS_0317'">19 Lead in Liquid crystal on silicon (LCoS) displays</xsl:if>
			<xsl:if test="$id='RoHS_0318'">20 Cadmium in X-ray measurement filters</xsl:if>
			<xsl:if test="$id='RoHS_0322'">12 Lead and cadmium in metallic bonds creating superconducting magnetic circuits in MRI, SQUID, NMR (Nuclear Magnetic Resonance) or FTMS (Fourier Transform Mass Spectrometer) detectors.</xsl:if>
			<xsl:if test="$id='RoHS_0323'">21 Cadmium in phosphor coatings in image intensifiers for X-ray images.</xsl:if>
			<xsl:if test="$id='RoHS_0324'">21 Cadmium in phosphor coatings in spare parts for X-ray systems placed on the EU market before 1 January 2020.</xsl:if>
			<xsl:if test="$id='RoHS_0325'">22 Lead acetate marker for use in stereotactic head frames for use with CT and MRI and in positioning systems for gamma beam and particle therapy equipment.</xsl:if>
			<xsl:if test="$id='RoHS_0326'">23 Lead as an alloying element for bearings and wear surfaces in medical equipment exposed to ionising radiation.</xsl:if>
			<xsl:if test="$id='RoHS_0327'">24 Lead enabling vacuum tight connections between aluminium and steel in X-ray image intensifiers.</xsl:if>
			<xsl:if test="$id='RoHS_0328'">25 Lead in the surface coatings of pin connector systems requiring nonmagnetic connectors which are used durably at a temperature below – 20 ℃ under normal operating and storage conditions.</xsl:if>
			<xsl:if test="$id='RoHS_0329'">26 Lead in: solders on printed circuit boards; termination coatings of electrical and electronic components and coatings of printed circuit boards; solders for connecting wires and cables; and solders connecting transducers and sensors; that are used durably at a temperature below – 20 ℃ under normal operating and storage conditions.</xsl:if>
			<xsl:if test="$id='RoHS_0358'">26 Lead in the following applications that are used durably at a temperature below - 20 °C under normal operating and storage conditions: (a)solders on printed circuit boards; (b)termination coatings of electrical and electronic components and coatings of printed circuit boards; (c)solders for connecting wires and cables; (d)solders connecting transducers and sensors. Lead in solders of electrical connections to temperature measurement sensors in devices which are designed to be used periodically at temperatures below - 150 °C.</xsl:if>
			<xsl:if test="$id='RoHS_0330'">27 Lead in: solders; termination coatings of electrical and electronic components and printed circuit boards; and connections of electrical wires, shields and enclosed connectors; which are used in (a) magnetic fields within the sphere of 1 m radius around the isocentre of the magnet in medical magnetic resonance imaging equipment, including patient monitors designed to be used within this sphere, or (b) magnetic fields within 1 m distance from the external surfaces of cyclotron magnets, magnets for beam transport and beam direction control applied for particle therapy.</xsl:if>
			<xsl:if test="$id='RoHS_0331'">28 Lead in solders for mounting cadmium telluride and cadmium zinc telluride digital array detectors to printed circuit boards.</xsl:if>
			<xsl:if test="$id='RoHS_0332'">29 Lead in alloys, as a superconductor or thermal conductor, used in cryo-cooler cold heads and/or in cryo-cooled cold probes and/or in cryo-cooled equipotential bonding systems, in medical devices (category 8) and/or in industrial monitoring and control instruments.</xsl:if>
			<xsl:if test="$id='RoHS_0333'">30 Hexavalent chromium in alkali dispensers used to create photocathodes in X-ray image intensifiers.</xsl:if>
			<xsl:if test="$id='RoHS_0334'">30 Hexavalent chromium in alkali dispensers used to create photocathodes in spare parts for X-ray systems placed on the EU market before 1 January 2020.</xsl:if>
			<xsl:if test="$id='RoHS_0335'">31 Lead, cadmium and hexavalent chromium in reused spare parts, recovered from medical devices placed on the market before 22 July 2014 and used in category 8 equipment placed on the market before 22 July 2021, provided that reuse takes place in auditable closed-loop business-to-business return systems, and that the reuse of parts is notified to the consumer.</xsl:if>
			<xsl:if test="$id='RoHS_0336'">32 Lead in solders on printed circuit boards of detectors and data acquisition units for Positron Emission Tomographs which are integrated into Magnetic Resonance Imaging equipment.</xsl:if>
			<xsl:if test="$id='RoHS_0337'">33 Lead in solders on populated printed circuit boards used in Directive 93/42/EEC class IIa mobile medical devices other than portable emergency defibrillators.</xsl:if>
			<xsl:if test="$id='RoHS_0338'">33 Lead in solders on populated printed circuit boards used in Directive 93/42/EEC class IIb mobile medical devices other than portable emergency defibrillators.</xsl:if>
			<xsl:if test="$id='RoHS_0339'">34 Lead as an activator in the fluorescent powder of discharge lamps when used for extracorporeal photopheresis lamps containing BSP (BaSi2O5 :Pb) phosphors.</xsl:if>
			<xsl:if test="$id='POPs_0101'">PFOS-0 No information to specify the intended use</xsl:if>
			<xsl:if test="$id='POPs_0102'">PFOS-1 Any photoresists or anti-reflective coatings for photolithography processes</xsl:if>
			<xsl:if test="$id='POPs_0103'">PFOS-2 Any photographic coatings applied to films, papers, or printing plates</xsl:if>
			<xsl:if test="$id='POPs_0104'">PFOS-3 Any mist suppressants for non-decorative hard chromium (VI) plating</xsl:if>
			<xsl:if test="$id='POPs_0105'">PFOS-4 Wetting agents for use in controlled electroplating systems</xsl:if>
			<xsl:if test="$id='POPs_0106'">PFOS-5 Any hydraulic fluids for aviation</xsl:if>
			<xsl:if test="$id='POPs_0107'">PFOS-98 Any mixtures in concentrations less than 10 mg/kg (0.001% by weight),or where the concentration of PFOS is less than 0.1% by weight calculated with reference to the mass of structurally or microstructurally distinct parts that contain PFOS, any textiles or other coated materials,or where the amount of PFOS is less than 1μg/m2 of the coated material</xsl:if>
			<xsl:if test="$id='POPs_0108'">PFOS-99 Not applicable</xsl:if>
			<xsl:if test="$id='REACH17_0110'">DBT-0 No information to specify the intended use</xsl:if>
			<xsl:if test="$id='REACH17_0111'">DBT-1 Any one-component and two-component room temperature vulcanization sealants (RTV-1 and RTV-2 sealant ) and adhesives which apply to the general public</xsl:if>
			<xsl:if test="$id='REACH17_0112'">DBT-2 Any paints and coating containing DBT compounds as catalysts when applied on articles which apply to the general public</xsl:if>
			<xsl:if test="$id='REACH17_0113'">DBT-3 Any soft polyvinyl chloride (PVC) profiles whether by themselves or co extruded with hard PVC which apply to the general public</xsl:if>
			<xsl:if test="$id='REACH17_0114'">DBT-4 Any fabrics coated with PVC containing DBT compounds as stabilizers when intended for outdoor applications which apply to the general public</xsl:if>
			<xsl:if test="$id='REACH17_0115'">DBT-5 Any outdoor rainwater pipes, gutters and fittings, as well as covering materials for roofing and facades which apply to the general public</xsl:if>
			<xsl:if test="$id='REACH17_0116'">DBT-98 Any use which the content is not greater than the threshold, the equivalent of 0.1% by weight of tin</xsl:if>
			<xsl:if test="$id='REACH17_0117'">DBT-99 Not applicable</xsl:if>
			<xsl:if test="$id='REACH17_0118'">DOT-0 No information to specify the intended use</xsl:if>
			<xsl:if test="$id='REACH17_0119'">DOT-1 Any articles other than the following articles- textile articles intended to come into contact with the skin,- gloves,- footwear or part of footwear intended to come into contact with the skin,- walls and floor coverings,- childcare articles,- female hygiene products,- nappies,- two-component room temperature vulcanization molding kits (RTV-2 molding kits)</xsl:if>
			<xsl:if test="$id='REACH17_0120'">DOT-98 Any use which the content is not greater than the threshold, the equivalent of 0.1% by weight of tin</xsl:if>
			<xsl:if test="$id='REACH17_0121'">DOT-99 Not applicable</xsl:if>
			<xsl:if test="$id='REACH17_0122'">CR6-0 No information to specify the intended use</xsl:if>
			<xsl:if test="$id='REACH17_0123'">CR6-1 Containing of chromium(VI) equal to or greater than 3 mg/kg (0.0003 % by weight) of the total dry weight of the leather.</xsl:if>
			<xsl:if test="$id='REACH17_0124'">CR6-98 Containing of chromium(VI) less than 3 mg/kg (0.0003 % by weight) of the total dry weight of the leather.</xsl:if>
			<xsl:if test="$id='REACH17_0125'">CR6-99 Not applicable as leather parts.</xsl:if>
		</xsl:if>
		<xsl:if test="$lang='zh'">
			<xsl:if test="$id='ELV_0001'">Noexemption 没有例外</xsl:if>
			<xsl:if test="$id='ELV_0002'">Belowthreshold 低于阈值</xsl:if>
			<xsl:if test="$id='ELV_0041'">1(a) 加工用钢及通过批量处理熔融镀锌的钢,其铅含量最高不超过0.35wt%</xsl:if>
			<xsl:if test="$id='ELV_0042'">1(b) 通过连续处理镀锌的钢版,其铅含量最高不超过0.35wt%.2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0043'">2(a) 加工用的铝,其铅含量最高不超过2wt%.作为2005年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0044'">2(b) 铝,其铅含量最高不超过1.5wt%.作为2008年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0045'">2(c)(i) 用于机械加工的铝合金,其铅含量最高不超过0.4(wt)</xsl:if>
			<xsl:if test="$id='ELV_0079'">2(c)(ii) 用于2(c)(i)之外用途的铝合金,其铅含量最高不超过0.4(wt)。(适用于非有意添加,但因利用回收废铝而导致含铅的铝合金)</xsl:if>
			<xsl:if test="$id='ELV_0046'">3 铜合金,其铅含量最高不超过4wt%</xsl:if>
			<xsl:if test="$id='ELV_0047'">4(a) 轴承壳套及轴衬.作为2008年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0048'">4(b) 引擎、变速箱及空调压缩机中的轴承壳套及轴衬.作为2011年7月1日及之前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0049'">5 电池</xsl:if>
			<xsl:if test="$id='ELV_0080'">5(a) 限用于驱动M1、N1车辆的高压系统(*)的电池中的铅(*:系统电压&gt;75VDC).2019年1月1日以前获得批准的车辆及其备件</xsl:if>
			<xsl:if test="$id='ELV_0081'">5(b) 用于5(a)之外电池用途的电池中的铅</xsl:if>
			<xsl:if test="$id='ELV_0050'">6 振动阻尼器.作为2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0051'">7(a) 弹性体之硫化剂及稳定剂,且该弹性体用于刹车油管、燃料管、通风管、底盘用弹性体/金属零部件及引擎脚.作为2005年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0052'">7(b) 弹性体之硫化剂及稳定剂,其铅含量最高不超过0.5%,且该弹性体用于刹车油管、燃料管、通风管、底盘用弹性体/金属零部件及引擎脚.作为2006年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0053'">7(c) 传动系统用弹性体的粘结剂,其铅含量最高不超过0.5%.作为2009年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0054'">8(a) 用于将电气电子零部件安装到电路板上的含铅焊锡以及铝电解电容器(electrolytealuminiumcapacitors)以外的零部件的端子上的零部件的接脚表面及电路板表面的加工剂中所含的铅.作为2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0055'">8(b) 电路板上或玻璃上用的焊锡以外的电气用途的含铅焊锡.作为2011年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0056'">8(c) 铝电解电容器的端子上的加工剂中所含的铅.作为2013年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0057'">8(d) 空气流量传感器中玻璃上的锡焊中使用的铅.作为2015年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0058'">8(e) 高熔点含铅焊锡(也即85%含铅量的铅合金)</xsl:if>
			<xsl:if test="$id='ELV_0059'">8(f) 顺压针连接器系统中的铅</xsl:if>
			<xsl:if test="$id='ELV_0060'">8(g) IC覆晶封装中形成半导体晶片与载体间切实电连接的含铅焊锡</xsl:if>
			<xsl:if test="$id='ELV_0061'">8(h) 在至少1c㎡的保护面积且至少1A/m㎡的公称电流密度大小的芯片的功率半导体组件中用以黏着导热片及散热片的含铅焊锡.作为2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0062'">8(i) 电气元件焊接在玻璃上用的含铅焊锡,焊接在胶合玻璃(laminatedglazing)中的含铅焊锡除外.2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0063'">8(j) 焊接在胶合玻璃中的含铅焊锡.作为2020年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0077'">8(f)(a) 顺压针连接器系统中的铅.作为2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0078'">8(f)(b) 车辆的线束接头结合部位以外的顺压针连接器系统中的铅。</xsl:if>
			<xsl:if test="$id='ELV_0064'">9 气门座.用于2003年7月1日前开发的引擎型号的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0065'">10(a) 玻璃或陶瓷中、玻璃或陶瓷基材配合物中、玻璃ー陶瓷材料中、或者玻璃ー陶瓷基材配合物中含铅的电气电子零部件。该免除不包含在如下使用的铅:-灯泡之玻璃及点火塞的釉料(glaze)-10(b)、10(c)及10(d)中列出的零部件的感应陶瓷材料中所含的铅</xsl:if>
			<xsl:if test="$id='ELV_0066'">10(b) 构成集成电路或个别半导体的一部分的电容器的PZT基底的感应陶瓷材料中所含的铅</xsl:if>
			<xsl:if test="$id='ELV_0067'">10(c) 具有较交流125V或直流250V更小的额定电压的电容器的感应陶瓷材料中所含的铅.2016年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0068'">10(d) 超声波探测系统中修正传感器的温度相关偏差的电容器的感应陶瓷材料中所含的铅。作为2017年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0069'">11 燃烧点火装置(pyrotechnicinitiators).2006年7月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0070'">12 为压缩废热回收引起的CO2排放的汽车电气用途中含铅的热传导材料.2019年1月1日前型号得到批准的车辆及用于这些车辆的备用零部件.</xsl:if>
			<xsl:if test="$id='ELV_0071'">13(a) 防腐蚀涂料.作为2007年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0072'">13(b) 用于底盘的螺栓及螺帽组件之防腐蚀涂料.作为2008年7月1日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0073'">14 冷却溶液中不超过0.75wt%的露营拖车的吸收式冷冻机(absorptionrefrigerators)的碳素铜冷却系统的防腐剂。但是,可以实施其他冷却技术的使用(也即,用于马达拖车而上市且可以利用),且其对环境、健康及/或消费者不产生不良影响的除外。</xsl:if>
			<xsl:if test="$id='ELV_0074'">15(a) 用于汽车前照灯的放电灯.2012年7月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0075'">15(b) 仪表盘显示器上使用的荧光管.2012年7月1日前型号得到批准的车辆及用于这些车辆的备用零部件</xsl:if>
			<xsl:if test="$id='ELV_0076'">16 电动车用电池.2008年12月31日前上市的用于车辆的备用零部件</xsl:if>
			<xsl:if test="$id='RoHS_0001'">Noexemption 没有例外</xsl:if>
			<xsl:if test="$id='RoHS_0002'">Belowthreshold 低于阈值</xsl:if>
			<xsl:if test="$id='RoHS_0201'">1(a) 功率小于30W的用于一般照明用途的单端荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0202'">1(a) 功率小于30W的用于一般照明用途的单端荧光灯中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0203'">1(a) 功率小于30W的用于一般照明用途的单端荧光灯中汞含量不得超过2.5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0204'">1(b) 功率大于或等于30W且小于50W的用于一般照明用途的单端荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0205'">1(b) 功率大于或等于30W且小于50W的用于一般照明用途的单端荧光灯中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0206'">1(c) 功率在50W和150W之间(含50W)的一般照明用途单端荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0207'">1(d) 功率大于或等于150W的用于一般照明用途的单端荧光灯中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0208'">1(e) 管直径小于17毫米的用于一般照明用途的圆形或方形的单端荧光灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0209'">1(e) 管直径小于17毫米的用于一般照明用途的圆形或方形的单端荧光灯中汞含量不得超过17毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0210'">1(f) 特殊用途的单端(紧凑型)荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0321'">1(g) 功率小于30W,使用寿命20000小时以上的用于一般照明用途的单端荧光灯中汞含量不得超过3.5毫克/盏</xsl:if>
			<xsl:if test="$id='RoHS_0211'">2(a)(1) 正常使用寿命下的管直径小于9毫米的三基色直型荧光灯(例如T2)中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0212'">2(a)(1) 正常使用寿命下的管直径小于9毫米的三基色直型荧光灯(例如T2)中汞含量不得超过4毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0213'">2(a)(2) 正常使用寿命下,管直径在9毫米和17毫米之间(含9毫米和17毫米)的三基色直型荧光灯(例如T5)中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0214'">2(a)(2) 正常使用寿命下,管直径在9毫米和17毫米之间(含9毫米和17毫米)的三基色直型荧光灯(例如T5)中汞含量不得超过3毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0215'">2(a)(3) 正常使用寿命下,管直径在17毫米和28毫米之间(含28毫米)的三基色直型荧光灯(例如T8中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0216'">2(a)(3) 正常使用寿命下,管直径在17毫米和28毫米之间(含28毫米)的三基色直型荧光灯(例如T8中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0217'">2(a)(4) 正常使用寿命下的管直径大于28毫米的三基色直型荧光灯(例如T12)中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0218'">2(a)(4) 正常使用寿命下的管直径大于28毫米的三基色直型荧光灯(例如T12)中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0219'">2(a)(5) 长效使用寿命(大于或等于25000小时)的三基色直型荧光灯中汞含量不得超过8毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0220'">2(a)(5) 长效使用寿命(大于或等于25000小时)的三基色直型荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0221'">2(b)(1) 管直径大于28毫米的盐磷酸盐直型荧光灯(如T10和T12)中汞含量不得超过10毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0222'">2(b)(2) 非直型盐磷酸盐荧光灯中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0223'">2(b)(3) 管直径大于17毫米的非直型三基色荧光灯(例如T9)中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0224'">2(b)(3) 管直径大于17毫米的非直型三基色荧光灯(例如T9)中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0225'">2(b)(4) 用于其他一般照明用途或特殊照明用途的灯(例如感应灯)中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0226'">2(b)(4) 用于其他一般照明用途或特殊照明用途的灯(例如感应灯)中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0227'">3(a) 较短长度(小于或等于500毫米)的冷阴极荧光灯和外置电极荧光灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0228'">3(a) 较短长度(小于或等于500毫米)的冷阴极荧光灯和外置电极荧光灯中汞含量不得超过3.5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0229'">3(b) 中等长度(在500毫米和1500毫米之间,含1500毫米)的冷阴极荧光灯和外置电极荧光灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0230'">3(b) 中等长度(在500毫米和1500毫米之间,含1500毫米)的冷阴极荧光灯和外置电极荧光灯中汞含量不得超过5毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0231'">3(c) 较长长度(大于1500毫米)的冷阴极荧光灯和外置电极荧光灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0232'">3(c) 较长长度(大于1500毫米)的冷阴极荧光灯和外置电极荧光灯中汞含量不得超过13毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0233'">4(a) 其他低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0234'">4(a) 其他低压放电灯中汞含量不得超过15毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0235'">4(b)-I 功率小于或等于155W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0236'">4(b)-I 功率小于或等于155W的低压放电灯中汞含量不得超过30毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0237'">4(b)-II 功率在155W和405W之间(含405W)的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0238'">4(b)-II 功率在155W和405W之间(含405W)的低压放电灯中汞含量不得超过40毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0239'">4(b)-III 功率大于405W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0240'">4(b)-III 功率大于405W的低压放电灯中汞含量不得超过40毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0241'">4(c)-I 功率小于或等于155W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0242'">4(c)-I 功率小于或等于155W的低压放电灯中汞含量不得超过25毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0243'">4(c)-II 功率在155W和405W之间或等于405W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0244'">4(c)-II 功率在155W和405W之间或等于405W的低压放电灯中汞含量不得超过30毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0245'">4(c)-III 功率大于405W的低压放电灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0246'">4(c)-III 功率大于405W的低压放电灯中汞含量不得超过40毫克/灯</xsl:if>
			<xsl:if test="$id='RoHS_0247'">4(d) 高压汞蒸气灯(HPMV)中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0248'">4(e) 金卤灯(MH)中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0249'">4(f) 本附录中未特别提及的其它特殊用途的放电灯中的汞</xsl:if>
			<xsl:if test="$id='RoHS_0340'">4(g) 用于标志、装饰、建筑、专业照明和灯光艺术的手工制作发光放电管中的汞,其汞含量限值为:(a)用于室外和温度低于20℃的室内时,按照20mg/电极对+0.3mg/cm×灯管长度计算,但不超过80mg;(b)用于其他室内环境时,按照15mg/电极对+0.24mg/cm×灯管长度计算,但不超过80mg。</xsl:if>
			<xsl:if test="$id='RoHS_0250'">5(a) 阴极射线管玻璃所含的铅</xsl:if>
			<xsl:if test="$id='RoHS_0251'">5(b) 荧光管玻璃内的铅含量不得超过其重量的0.2</xsl:if>
			<xsl:if test="$id='RoHS_0252'">6(a) 机械加工用钢和镀锌钢中合金元素中的铅含量小于0.35</xsl:if>
			<xsl:if test="$id='RoHS_0365'">6(a)-I 铅作为一种合金元素,在用于机械加工的钢中含量不超过0.35(wt),在用于批量热浸镀锌钢中铅含量不超过0.2(wt)。</xsl:if>
			<xsl:if test="$id='RoHS_0253'">6(b) 铝中合金元素中的铅含量小于0.4</xsl:if>
			<xsl:if test="$id='RoHS_0366'">6(b)-I 在回收的含铅废铝中,铅作为一种合金元素,在铝合金中的含量不超过0.4(wt)。</xsl:if>
			<xsl:if test="$id='RoHS_0367'">6(b)-II 铅作为一种合金元素,在用于机械加工的铝中含量不超过0.4(wt)。</xsl:if>
			<xsl:if test="$id='RoHS_0254'">6(c) 铜中合金元素中的铅含量小于4</xsl:if>
			<xsl:if test="$id='RoHS_0255'">7(a) 高熔化温度型焊料中的铅(即铅含量超过85的铅基合金焊料)</xsl:if>
			<xsl:if test="$id='RoHS_0256'">7(b) 用于服务器、存储器和存储列阵系统的焊料中的铅;用于交换、信号和传输,以及电信网络管理的网络基础设施设备中焊料中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0257'">7(c)-I 电子电气元件中玻璃或陶瓷材料(电容中陶瓷介质除外)所含的铅,如压电设备或玻璃/陶瓷复合元件</xsl:if>
			<xsl:if test="$id='RoHS_0258'">7(c)-II 额定电压为交流125V或直流250V及以上的电容中陶瓷介质所含的铅</xsl:if>
			<xsl:if test="$id='RoHS_0259'">7(c)-III 额定电压为交流125V或直流250V以下的电容中陶瓷介质所含的铅</xsl:if>
			<xsl:if test="$id='RoHS_0260'">7(c)-III 作为电气电子设备的备件的额定电压为交流125V或者直流250V以下的电容中陶瓷介质所含的铅</xsl:if>
			<xsl:if test="$id='RoHS_0319'">7(c)-IV 基于压电陶瓷介电陶瓷材料的铅,部分集成电路或分立半导体电容</xsl:if>
			<xsl:if test="$id='RoHS_0261'">8(a) 热熔断体中的镉及其化合物</xsl:if>
			<xsl:if test="$id='RoHS_0262'">8(a) 作为电气电子设备的备件统一投入混合颗粒成型的热熔断体中所含的镉及其化合物</xsl:if>
			<xsl:if test="$id='RoHS_0263'">8(b) 电触点中的镉及其化合物</xsl:if>
			<xsl:if test="$id='RoHS_0264'">9 吸收式电冰箱中作为碳钢冷却系统防腐剂的六价铬,其在冷却液中的含量不得超过0.75</xsl:if>
			<xsl:if test="$id='RoHS_0265'">9(b) 暖通空调(HVACR)设备压缩机轴承外壳及轴衬中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0360'">9(b)-(I) 类别第1项中的制冷剂管道的轴承和壳体以及套管中的铅・・・・包括加热器,通风,空调和冷冻机制冷(HVACR)设备中的额定功率为9kW或更低的含冷却液的密封涡旋式压缩机</xsl:if>
			<xsl:if test="$id='RoHS_0266'">11(a) C-press插脚式连接器系统中使用的铅</xsl:if>
			<xsl:if test="$id='RoHS_0267'">11(b) 除C-press以外的插脚式连接器系统中使用的铅</xsl:if>
			<xsl:if test="$id='RoHS_0268'">11(b) 作为电气电子设备的备件的除C-press以外的插脚式连接器系统中使用的铅</xsl:if>
			<xsl:if test="$id='RoHS_0269'">12 热导模组C环涂层中所用的铅</xsl:if>
			<xsl:if test="$id='RoHS_0270'">13(a) 光学应用的白色玻璃中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0271'">13(b) 滤光玻璃及反射率标准玻璃片中的铅和镉</xsl:if>
			<xsl:if test="$id='RoHS_0361'">13(b)-(I) 类别第1~第7、第10项中的离子色滤光片玻璃中的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0362'">13(b)-(II) 类别第1~第7、第10项中的有色滤光片玻璃中的镉。但,不含附件III中第39项的用途。</xsl:if>
			<xsl:if test="$id='RoHS_0363'">13(b)-(III) 类别第1~第7、第10项中的用于反射标准片中釉料中的镉和铅。</xsl:if>
			<xsl:if test="$id='RoHS_0272'">14 微处理器针脚及封装联接所使用的含两种以上组分焊料中的铅(铅含量在80与85之间)</xsl:if>
			<xsl:if test="$id='RoHS_0273'">14 作为电气电子设备的备件的微处理器针脚及封装联接所使用的含两种以上组分焊料中的铅(铅含量在80与85之间)</xsl:if>
			<xsl:if test="$id='RoHS_0274'">15 集成电路倒装芯片封装中半导体芯片及载体之间形成可靠联接所用焊料中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0275'">16 线形白炽灯硅酸盐灯管中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0276'">17 用于专业复印设备的高强度放电灯(HID)中用作激发的卤素铅</xsl:if>
			<xsl:if test="$id='RoHS_0277'">18(a) 用于重氮复印、平版印刷、捕虫器、光化学和食物加工过程的特种放电灯中含磷荧光粉触媒(如SMS(Sr,Ba)2MgSi2O7:Pb)中的铅,其含量在1以下</xsl:if>
			<xsl:if test="$id='RoHS_0278'">18(b) 仿日晒放电灯中含磷荧光粉触媒(如BSP(BaSi2O5:Pb))中的铅,其含量在1以下</xsl:if>
			<xsl:if test="$id='RoHS_0279'">19 紧凑型节能灯(ESL)中作为主要汞齐合金的特定成分(PbBiSn-Hg和PbinSg-Hg)中的铅及作为辅助汞合金PbSn-Hg中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0280'">20 液晶显示器(LCD)用于连接平面荧光灯前后基片用的玻璃中的氧化铅</xsl:if>
			<xsl:if test="$id='RoHS_0281'">21 用于玻璃(如硼硅玻璃及钠钙玻璃)瓷釉上印刷油墨中的铅和镉</xsl:if>
			<xsl:if test="$id='RoHS_0282'">23 细间距元器件(即不大于0.65mm的引脚间距)的表面处理中的铅,不包括连接器类</xsl:if>
			<xsl:if test="$id='RoHS_0283'">24 通孔盘状和平面阵列的多层陶瓷电容中焊料里的铅</xsl:if>
			<xsl:if test="$id='RoHS_0284'">25 表面传导式电子发射显示器(SED)构件所用的氧化铅,特别是密封玻璃和玻璃环</xsl:if>
			<xsl:if test="$id='RoHS_0285'">26 紫光灯/黑光灯(或称蓝黑灯)玻璃壳中的氧化铅</xsl:if>
			<xsl:if test="$id='RoHS_0286'">29 69/493/EEC指令附录I(1,2,3和4类)中限定的水晶玻璃中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0287'">30 用于位于音量大于或等于100分贝的大功率扩音器音圈上的电导体的电气或机械焊点的镉合金</xsl:if>
			<xsl:if test="$id='RoHS_0288'">31 用于无汞平面荧光灯(例如:用于液晶显示器、设计或工业照明)的焊料中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0355'">31a(a) 铅以及镉、六价铬、PBDE;从体外诊断用途以外的医疗设备回收,且含在用于修理和整修的备件中。但,其条件为:在可以监控的闭环BtoB回收系统中进行回收利用,而且需要通知消费者此信息。</xsl:if>
			<xsl:if test="$id='RoHS_0356'">31a(b) 铅以及镉、六价铬、PBDE;从体外诊断用途的医疗设备回收,且含在用于修理和整修的备件中。但,其条件为:在可以监控的闭环BtoB回收系统中进行回收利用,而且需要通知消费者此信息。</xsl:if>
			<xsl:if test="$id='RoHS_0357'">31a(c) 铅以及镉、六价铬、PBDE;从显微镜和其附件回收,且含在用于修理和整修的备件中。但,其条件为:在可以监控的闭环BtoB回收系统中进行回收利用,而且需要通知消费者此信息。</xsl:if>
			<xsl:if test="$id='RoHS_0289'">32 用于氩和氪激光管防护窗组合件的封装玻璃料里的铅的氧化物</xsl:if>
			<xsl:if test="$id='RoHS_0290'">33 电源变压器中直径100微米及以下细铜线所用焊料中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0291'">34 金属陶瓷质的微调电位计中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0292'">37 基于硼酸锌玻璃体的高压二极管的电镀层中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0293'">38 铝结合氧化铍的厚膜浆料中的镉和氧化镉</xsl:if>
			<xsl:if test="$id='RoHS_0294'">39 应用于固态照明或显示系统中的色彩转换II-VI族LED(镉含量低于10μg/mm2发光区域)中使用的镉</xsl:if>
			<xsl:if test="$id='RoHS_0364'">39(a) 用于显示照明用途中,降低镉基半导体纳结晶量子点的硒化镉。</xsl:if>
			<xsl:if test="$id='RoHS_0320'">40 适用于专业音频设备的模拟光耦合器的光敏电阻的镉</xsl:if>
			<xsl:if test="$id='RoHS_0341'">41 由于技术原因必须直接安装在便携式发动机(欧洲议会和理事会指令97/68/EC中的类别SH:1、SH:2、SH:3)的曲轴箱或气缸内的点火模块和其他电子电气发动机控制系统,其电子电气元件所含焊料和最终涂层、印刷电路板的最终涂层中的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0342'">35 在2017年7月22日之前投放市场的工业监控仪器中使用的背光液晶显示器冷阴极荧光灯中的汞,含量不超过5mg/灯。</xsl:if>
			<xsl:if test="$id='RoHS_0343'">36 工业监控仪器中除C-press以外的插脚式连接器系统中使用的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0344'">36 在2021年1月1日之前投放市场的工业监控仪器备用部件中,除C-press以外的插脚式连接器系统中使用的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0345'">37 用于电导率测试的镀铂铂电极中的铅,需应用于以下至少一种情况:(a)在未知浓度的实验室应用中的大范围测量,其测试的电导率范围超过一个数量级(例如范围在0.1mS/m到5mS/m之间)(b)精确度要求±1,且用于以下任意一种需使用高耐蚀性电极的溶液测试:(i)pH&lt;1的酸性溶液;(ii)pH&gt;13的碱性溶液;(iii)含有卤素气体的腐蚀性溶液;(c)必须使用便携式仪器进行的电导率超过100mS/m的测试。</xsl:if>
			<xsl:if test="$id='RoHS_0346'">38 用于CT(计算机断层扫描)和X射线系统的X射线探测器,每个交界面有超过500条连接线的大面积裸片堆叠元素单界面所用焊料中的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0347'">38 在2020年1月1日之前投放市场的CT(计算机断层扫描)和X射线系统的备用部件中,每个交界面有超过500条连接线的大面积裸片堆叠元素单界面所用焊料中的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0348'">39 医疗仪器及监控仪器所用微通道板(MCPs)中的铅,具有下列至少一种属性:(a)紧凑型的电子或离子探测器,该探测器的空间限制为最大3mm/MCP(包括探测器厚度+MCP安装空间),探测器总体不超过6mm,且对该探测器带来更多空间的代替设计在科学和技术角度上不可行。(b)检测电子或离子的二维空间分辨率,用于以下至少一种情况:(i)响应时间小于25ns;(ii)样本探测区域大于149mm2;(iii)倍增因子大于1.3×10^3;(c)监测电子或离子时响应时间小于5ns;(d)监测电子或离子时样本探测区域大于314mm2;(e)倍增因子大于4.0×10^7。</xsl:if>
			<xsl:if test="$id='RoHS_0349'">39 体外诊断医疗设备所用微通道板(MCPs)中的铅,具有下列至少一种属性:(a)紧凑型的电子或离子探测器,该探测器的空间限制为最大3mm/MCP(包括探测器厚度+MCP安装空间),探测器总体不超过6mm,且对该探测器带来更多空间的代替设计在科学和技术角度上不可行。(b)检测电子或离子的二维空间分辨率,用于以下至少一种情况:(i)响应时间小于25ns;(ii)样本探测区域大于149mm2;(iii)倍增因子大于1.3×10^3;(c)监测电子或离子时响应时间小于5ns;(d)监测电子或离子时样本探测区域大于314mm2;(e)倍增因子大于4.0×10^7。</xsl:if>
			<xsl:if test="$id='RoHS_0350'">39 工业监控设备所用微通道板(MCPs)中的铅,具有下列至少一种属性:(a)紧凑型的电子或离子探测器,该探测器的空间限制为最大3mm/MCP(包括探测器厚度+MCP安装空间),探测器总体不超过6mm,且对该探测器带来更多空间的代替设计在科学和技术角度上不可行。(b)检测电子或离子的二维空间分辨率,用于以下至少一种情况:(i)响应时间小于25ns;(ii)样本探测区域大于149mm2;(iii)倍增因子大于1.3×10^3;(c)监测电子或离子时响应时间小于5ns;(d)监测电子或离子时样本探测区域大于314mm2;(e)倍增因子大于4.0×10^7。</xsl:if>
			<xsl:if test="$id='RoHS_0351'">40 用于工业监控设备的额定电压为交流125V或直流250V以下的电容,其介电陶瓷中所含有的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0352'">40 在2021年1月1日之前投放市场,用于工业监控设备备用部件的额定电压为交流125V或直流250V以下的电容,其介电陶瓷中所含有的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0353'">41 用于血液、体液和体内气体分析的体外诊断医疗器械中电流、电位和电导传感器聚氯乙烯(PVC)基材中作为热稳定剂的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0354'">42 用于具有高频(&gt;50MHz)工作模式的血管内超声成像系统的电动旋转连接器中的汞。</xsl:if>
			<xsl:if test="$id='RoHS_0359'">43 用于工业监测和控制仪器的氧传感器赫希池检测器的镉阳极(低于10ppm)。</xsl:if>
			<xsl:if test="$id='RoHS_0295'">1 铅,镉,汞在电离辐射探测器</xsl:if>
			<xsl:if test="$id='RoHS_0296'">2 X射线管中的铅轴承</xsl:if>
			<xsl:if test="$id='RoHS_0297'">3 在电磁辐射放大装置的铅:微通道板和毛细管板</xsl:if>
			<xsl:if test="$id='RoHS_0298'">4 在X射线管和图像增强器和气体激光器装配在玻璃熔块的粘结剂铅熔块和玻璃真空管,电磁辐射转换成电子的铅</xsl:if>
			<xsl:if test="$id='RoHS_0299'">5 在电离辐射屏蔽的铅</xsl:if>
			<xsl:if test="$id='RoHS_0300'">6 在X射线铅的测试对象</xsl:if>
			<xsl:if test="$id='RoHS_0301'">7 硬脂酸铅X射线衍射晶体</xsl:if>
			<xsl:if test="$id='RoHS_0302'">8 便携式X射线荧光光谱仪的同位素放射性镉源</xsl:if>
			<xsl:if test="$id='RoHS_0303'">1a 包括pH电极的玻璃离子选择性电极的铅和镉</xsl:if>
			<xsl:if test="$id='RoHS_0304'">1b 铅阳极电化学氧传感器</xsl:if>
			<xsl:if test="$id='RoHS_0305'">1c 铅,镉,汞红外线探测器</xsl:if>
			<xsl:if test="$id='RoHS_0306'">1d 汞参比电极:低氯氯化汞,硫酸汞和氧化汞</xsl:if>
			<xsl:if test="$id='RoHS_0307'">9 氦镉激光器中的镉</xsl:if>
			<xsl:if test="$id='RoHS_0308'">10 铅和镉的原子吸收光谱灯</xsl:if>
			<xsl:if test="$id='RoHS_0309'">11 MRI热导体和超导体合金中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0310'">12 铅和镉金属键在核磁共振成像(MRI)和鱿鱼探测器的超导材料</xsl:if>
			<xsl:if test="$id='RoHS_0311'">13 在配重的铅</xsl:if>
			<xsl:if test="$id='RoHS_0312'">14 超声换能器在压电单晶材料的铅</xsl:if>
			<xsl:if test="$id='RoHS_0313'">15 超声换能器粘接焊料中铅</xsl:if>
			<xsl:if test="$id='RoHS_0314'">16 水星在非常高的精度电容和损耗测量桥梁和监测和控制仪器不超过20毫克每汞开关或继电器高频射频开关和继电器</xsl:if>
			<xsl:if test="$id='RoHS_0315'">17 在便携式紧急除颤器焊料中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0316'">18 铅焊料的高性能红外热成像模块检测范围8-14微米</xsl:if>
			<xsl:if test="$id='RoHS_0317'">19 铅在液晶硅(LCOS)显示</xsl:if>
			<xsl:if test="$id='RoHS_0318'">20 镉在X射线测量滤波器</xsl:if>
			<xsl:if test="$id='RoHS_0322'">12 在MRI、SQUID、NMR(核磁共振)、FTMS(傅里叶变换质谱仪)探测仪中用于创造超导磁回路的金属键中的铅和镉</xsl:if>
			<xsl:if test="$id='RoHS_0323'">21 X射线图像增强器的荧光涂层中的镉</xsl:if>
			<xsl:if test="$id='RoHS_0324'">21 2020年1月1日前投放EU市场的X射线系统备件荧光涂层中的镉</xsl:if>
			<xsl:if test="$id='RoHS_0325'">22 用于CT和MRI的头部立体定位架以及用于伽马射线和粒子诊疗设备定位系统的醋酸铅标记</xsl:if>
			<xsl:if test="$id='RoHS_0326'">23 作为合金元素用于电离辐射下医疗设备的轴承和磨损表面的铅</xsl:if>
			<xsl:if test="$id='RoHS_0327'">24 用于X射线图像加强器中的为了真空气密接合铝和铁的铅</xsl:if>
			<xsl:if test="$id='RoHS_0328'">25 能长期在-20℃的温度下正常使用和存放,要求非磁性插头的插头连接器系统的表面涂层中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0329'">26 能长期在-20℃的温度下正常使用和存放的以下部件中的铅:印刷电路板上的焊料、电气电子元件的终端涂层和印刷电路板的涂层、连接电线电缆的焊料、连接转换器和感应器的焊料</xsl:if>
			<xsl:if test="$id='RoHS_0358'">26 在正常操作和存储条件下,可在低于-20°C的条件长期使用的以下部位中的铅:(a)印刷电路板的焊料;(b)电子电气零部件的终端涂层和印刷电路板的涂层;(c)连接电线电缆的焊料;(d)连接转换器和传感器的焊料。用于低于-150°C条件下的定期测温传感器的电连接焊料中的铅。</xsl:if>
			<xsl:if test="$id='RoHS_0330'">27 焊料、电气电子元件和印刷电路板的终端涂层、电线连接、防护和封闭式连接器中的用于以下途径的铅:(a)医用磁共振成像设备等中心周围的半径1米的磁域,包括设计用于这个区域内的病人监护仪,或(b)用于距离粒子治疗的回旋加速器磁铁的外表面以及控制束流传输和束流方向的磁铁1米处的磁域内</xsl:if>
			<xsl:if test="$id='RoHS_0331'">28 在印刷电路板上安装碲化镉和碲化镉锌数字阵列探测器所用焊料中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0332'">29 医疗设备(8类)和/或工业监测控制仪器的低温冷机冷头和/或被低温冷却的探针和/或被低温冷却的等电位联结系统中,作为超导体或热导体所使用的合金中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0333'">30 在X射线图像增强器中用于制作光电阴极的碱分配器中的六价铬</xsl:if>
			<xsl:if test="$id='RoHS_0334'">30 2020年1月1日前投放EU市场的X射线系统备件中,用于制作光电阴极的碱分配器中的六价铬</xsl:if>
			<xsl:if test="$id='RoHS_0335'">31 从2014年7月22日前投放市场的医疗设备中回收,并用于2021年7月22日前投放市场的第8类设备的再利用备件中的铅、镉和六价铬。但条件是再利用发生在可对再利用进行监控的封闭式企业对企业回收系统中,且消费者会得到再利用的通知。</xsl:if>
			<xsl:if test="$id='RoHS_0336'">32 集成到磁共振成像设备中的正电子断层扫描探测仪和数据采集单元的印刷电路板所用焊料中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0337'">33 用于指令93/42/EEC第Ⅱa类移动医疗设备(除便携式应急除颤器外)的已实装的密集印刷电路板的焊料中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0338'">33 用于指令93/42/EEC第Ⅱb类移动医疗设备(除便携式应急除颤器外)的已实装的密集印刷电路板的焊料中的铅</xsl:if>
			<xsl:if test="$id='RoHS_0339'">34 用于体外光分离疗法灯(包括BSP(BaSi2O5:Pb)荧光粉)的放电灯的荧光粉中作为催化剂的铅</xsl:if>
			<xsl:if test="$id='POPs_0101'">PFOS-0 不能判断</xsl:if>
			<xsl:if test="$id='POPs_0102'">PFOS-1 用于相片石印工程的相片抵抗或反射防止膜</xsl:if>
			<xsl:if test="$id='POPs_0103'">PFOS-2 用于薄膜、纸、印刷版上摄影涂料</xsl:if>
			<xsl:if test="$id='POPs_0104'">PFOS-3 用于非装饰性硬质铬(VI)用防雾剂</xsl:if>
			<xsl:if test="$id='POPs_0105'">PFOS-4 可控电子电镀系统用湿润剂</xsl:if>
			<xsl:if test="$id='POPs_0106'">PFOS-5 航空用油压油</xsl:if>
			<xsl:if test="$id='POPs_0107'">PFOS-98 含量小于10mg/kg(质量百分比0.001%)的调剂、或者质量百分比浓度小于0.1%的半成品及成形品或其一部分、或者含量小于1μg/m2的纤维产品和其他的被覆盖物</xsl:if>
			<xsl:if test="$id='POPs_0108'">PFOS-99 不适用</xsl:if>
			<xsl:if test="$id='REACH17_0110'">DBT-0 不能判断</xsl:if>
			<xsl:if test="$id='REACH17_0111'">DBT-1 1组分及2组分室温硬化型密封剂(RTV-1及RTV-2密封剂)及粘合剂。用于一般用途。</xsl:if>
			<xsl:if test="$id='REACH17_0112'">DBT-2 含DBT化合物的涂料催化剂,用于一般用途</xsl:if>
			<xsl:if test="$id='REACH17_0113'">DBT-3 软质聚氯乙烯(PVC)(和单体・硬质聚氯乙烯的共通提取无关)用于一般用途</xsl:if>
			<xsl:if test="$id='REACH17_0114'">DBT-4 含DBT化合物的PVC涂装织物,作为室外用途的安定剂。用于一般用途</xsl:if>
			<xsl:if test="$id='REACH17_0115'">DBT-5 室外的雨水管及工具、屋顶及墙面覆盖材。用于一般用途</xsl:if>
			<xsl:if test="$id='REACH17_0116'">DBT-98 换算为锡元素的质量百分比含量小于等于0.1%时</xsl:if>
			<xsl:if test="$id='REACH17_0117'">DBT-99 不适用</xsl:if>
			<xsl:if test="$id='REACH17_0118'">DOT-0 不能判断</xsl:if>
			<xsl:if test="$id='REACH17_0119'">DOT-1 除下列用途之外的成形品-与皮肤接触的织物、-手套,-与皮肤接触的鞋类、-墙壁及地板的覆盖材,-育儿用品、-女性卫生用品、-尿布、-2组分室温硬化模压工具(RTV-2密封剂模压工具)</xsl:if>
			<xsl:if test="$id='REACH17_0120'">DOT-98 换算为锡元素的质量百分比含量小于等于0.1%时</xsl:if>
			<xsl:if test="$id='REACH17_0121'">DOT-99 不适用</xsl:if>
			<xsl:if test="$id='REACH17_0122'">CR6-0 不能判断</xsl:if>
			<xsl:if test="$id='REACH17_0123'">CR6-1 皮革干燥重量中的3mg/kg(0.0003%)以上的铬(VI)含有</xsl:if>
			<xsl:if test="$id='REACH17_0124'">CR6-98 皮革干燥的重量中的3mg/kg(0.0003%)的以下的铬(VI)含有</xsl:if>
			<xsl:if test="$id='REACH17_0125'">CR6-99 作为皮革不适用</xsl:if>
		</xsl:if>
	</xsl:template>
	
</xsl:stylesheet>