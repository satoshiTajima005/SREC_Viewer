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
			<xsl:if test="$id='effectiveDate'">発効日</xsl:if>
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

</xsl:stylesheet>