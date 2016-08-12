# ViewHome(アプリトップ訪問)イベント実装

View Home（ホーム画面）イベントが発生する箇所に、下記に従ってアクセス解析のイベント計測機能を実装ください。

### 実装例

```java
import co.cyberz.fox.FoxTrack;
import co.cyberz.fox.support.event.ViewToppageEvent;

ViewToppageEvent event = new ViewToppageEvent(12345);
event.addUserId("USER_A001")
     .addCriteoPartnerId("XXXXX");
FoxTrack.sendEvent(event);
```

### ViewToppageEvent API

|返り値|メソッド|詳細|
|:---:|:---|:---:|:---|
|-|**ViewToppageEvent** ( )|コンストラクター|
|-|**ViewToppageEvent** ( int ltvPointId ) <br><br> `ltvPointId` : LTV成果地点ID|コンストラクター。規定のイベント名を内部で定義しているため、媒体連携を行う場合はこちらをお使いください。LTV成果地点IDは管理者が発行した値を指定ください。|
|-|**ViewToppageEvent** ( String eventName, int ltvPointId ) <br><br> `eventName` : イベント名<br>`ltvPointId` : LTV成果地点ID|コンストラクター。任意のイベント名を指定する場合にはこちらを使用ください。|
|ViewToppageEvent|**addUserId** ( String id )<br><br>`id` : アプリ内のユーザーID|ユーザーIDを指定する場合に使用します。|
|ViewToppageEvent|**addDin** ( String din )<br><br>`din` : 日付 From|日付の指定のある場合に使用します。|
|ViewToppageEvent|**addDout** ( String dout )<br><br>`dout` : 日付 To|日付の指定のある場合に使用します。|
|ViewToppageEvent|**addCriteoPartnerId** ( String id )<br><br>`id` : CriteoアカウントID|CriteoアカウントIDが同一アプリで異なる場合は入力。|


### 連携対応済み媒体

* Criteo

---
[戻る](/4.x/lang/ja/doc/track_events/README.md#supported_events)

[トップ](/4.x/lang/ja/README.md)
