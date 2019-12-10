# SREC_Viewer
### 環境負荷物質報告書ビューワ (JAMP-AIS・MSDSplus/JGPSSI/JAMA/chemSHERPA/IEC62474 対応)

### これなに？
電気/電子/自動車関連業界で環境情報伝達ファイルとして普及している
- JAMP
    - AIS (*.xml)
    - MSDSplus (*.xml)
- ~~JGPSSI (*.jgp4)~~ 実務上ほぼ使われなくなったので、バージョンアップ時に削除しました
- JAMA/JAPIA 統一データシート (*.csv)
- chemSHERPA
    - 成形品(*.shai)
    - 化学品(*.shci)
- IEC62474 (*.xml)
の各ファイルの内容を参照することができます。

・[ベクター](http://www.vector.co.jp/soft/winnt/business/se486453.html)に公開しているフリーソフトのパッケージング前のソースコードです。

・[オンライン版](https://satoshitajima005.github.io/SREC-Viewer-Web/)も公開しました

### TODO
- nw-builder 0.42.6-osx64 のみパッケージングができない(パッケージング用のファイルに'UnhandledPromiseRejectionWarning'がある？)

### 使い方
開発環境には[NW.js](https://nwjs.io/)を使用しているので、
 - [公式ドキュメント](http://docs.nwjs.io/en/latest/For%20Users/Package%20and%20Distribute/)
 - [Electronよりもお手軽に！NW.jsならデザイナーでもデスクトップアプリが作れる - WPS](https://www.webprofessional.jp/cross-platform-desktop-app-nw-js/)

を参考にパッケージングしてください。
具体的には、管理者権限でcmd.exeを起動し、

```sh
git clone https://github.com/satoshiTajima005/SREC_Viewer.git
cd SREC_Viewer
npm install
npm run prod
```

となります。

### なんでGitHubにあげてるの？
当初、私自身が業務上必要な為に作ったツールで、これは便利だなと思ったので公開しておりましたが、その後、環境負荷物質管理業務をメインとしない形に変わったため、できればだれか更新作業やってくれるといいなーという淡い期待を抱いています。
ただ、個人での開発しかしたことが無いため、じつは私自身あまりGitHubの使い方に慣れていません..プルリクってなんだよ・・・勉強します。
