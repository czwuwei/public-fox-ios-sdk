## 最新バージョンへのアップデートについて

以前のF.O.X SDKが導入されたアプリに最新のSDKを導入する際に必要な手順は以下の通りです。

1. 以前のバージョンの下記のファイルがプロジェクトに組み込まれていれば、それらを削除
* AppAdForce.plist
* libAppAdForce.a
* AdManager.h
* AnalyticsManager.h
* Ltv.h
* Notify.h
* libFoxSdk.a
* DLAdStateDelegate.h
* DLBannerView.h
* DLInterstitialViewController.h

2. 「[1. インストール](../../README.md#install_sdk)」からドキュメントに従いもう一回導入手順を実施


SDK のアップデート後は、必ず効果測定テストを実施し、計測及びアプリケーションの動作に問題ないことを確認してください。


---
[トップ](../../README.md)
