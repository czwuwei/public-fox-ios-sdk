# イベント計測の詳細

以下、各種イベントを実装する際の詳細を説明します。<br>
ダイナミック配信連携を行う際に必要となる実装も含まれます。本実装を行うことで、媒体を横断したイベント計測連携が可能となります。

<div id="install_extension"></div>
## 1. イベント計測拡張プラグインモジュールのインポート

アプリ内の各種イベントの計測を補助するためのサポートライブラリをインポートすることで、イベント計測の実装が容易になります。
サポートライブラリでは[`FoxEvent`](/4.x/lang/ja/doc/sdk_api/README.md#foxevent)クラスを拡張し、各種イベント毎のクラスを提供しています。

```
repositories {
    maven {
        url "https://github.com/cyber-z/public--android-sdk/raw/master/mavenRepo"
    }
}

dependencies {
    // 計測用モジュール
    compile 'co.cyberz.fox:foxtrack-core:4.0.0'
    // イベント計測拡張プラグインモジュール
    compile 'co.cyberz.fox.support:foxtrack-extension:1.0.0'
}
```
<div id="supported_events"></div>
## 2. 対応しているイベント計測

> #### 1. [ViewToppageイベント](./01_view_toppage/README.md)
> #### 2. [ViewListingイベント](./02_view_listing/README.md)
> #### 3. [ViewProductイベント](./03_view_product/README.md)
> #### 4. [ViewBasketイベント](./04_view_basket/README.md)
> #### 5. [TrackTransactionイベント](./05_track_transaction/README.md)
> #### 6. [AchieveLevelイベント](./06_achieve_level/README.md)
> #### 7. [ViewCategoryイベント](./07_view_category/README.md)
> #### 8. [TutorialCompletionイベント](./08_tutorial_completion/README.md)
> #### 9. [Searchイベント](./09_search/README.md)

---
[トップ](/4.x/lang/ja/README.md)
