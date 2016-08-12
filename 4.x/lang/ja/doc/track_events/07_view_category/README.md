# ViewCategory(カテゴリページ)イベント実装

イベントが発生する箇所に、下記に従ってアクセス解析のイベント計測機能を実装ください。

### 実装例

```java
import co.cyberz.fox.FoxTrack;
import co.cyberz.fox.support.event.ViewCategoryEvent;

ViewCategoryEvent event = new ViewCategoryEvent(12345);
event.addUserId("USER_A001")
     .addCategoryId("furniture")
FoxTrack.sendEvent(event);
```

### ViewCategoryEvent API

|返り値|メソッド|詳細|
|:---:|:---|:---:|:---|
|-|**ViewCategoryEvent** ( )|コンストラクター|
|-|**ViewCategoryEvent** ( int ltvPointId ) <br><br> `ltvPointId` : LTV成果地点ID|コンストラクター。規定のイベント名を内部で定義しているため、媒体連携を行う場合はこちらをお使いください。LTV成果地点IDは管理者が発行した値を指定ください。|
|-|**ViewCategoryEvent** ( String eventName, int ltvPointId ) <br><br> `eventName` : イベント名<br>`ltvPointId` : LTV成果地点ID|コンストラクター。任意のイベント名を指定する場合にはこちらを使用ください。|
|ViewCategoryEvent|**addUserId** ( String id )<br><br>`id` : アプリ内のユーザーID|ユーザーIDを指定する場合に使用します。|
|ViewCategoryEvent|**addCategoryId** ( String id )<br><br>`id` : カテゴリID|閲覧したカテゴリIDを指定する場合に使用します。|


### 連携対応済み媒体

* Vizury

---
[戻る](/4.x/lang/ja/doc/track_events/README.md#supported_events)

[トップ](/4.x/lang/ja/README.md)
