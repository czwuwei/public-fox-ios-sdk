# ViewListing(複数商品閲覧)イベント実装

View Listing（複数商品閲覧）イベントが発生する箇所に、下記に従ってイベント計測機能を実装ください。上位３つの商品が計測されます。

### 実装例

```java
import co.cyberz.fox.FoxTrack;
import co.cyberz.fox.support.event.ViewListingEvent;

ViewListingEvent event = new ViewListingEvent(12345);
event.addUserId("USER_A001")
     .addCriteoPartnerId("XXXXX")
     .addProduct(111, null, "movie", 1890, 1)
     .addProduct(121, null, "sport", 2300, 1)
     .addDin("2016-05-01")
     .addDout("2016-05-05");
FoxTrack.sendEvent(event);
```

### ViewListingEvent API

|返り値|メソッド|詳細|
|:---:|:---|:---:|:---|
|-|**ViewListingEvent** ( )|コンストラクター|
|-|**ViewListingEvent** ( int ltvPointId ) <br><br> `ltvPointId` : LTV成果地点ID|コンストラクター。規定のイベント名を内部で定義しているため、媒体連携を行う場合はこちらをお使いください。LTV成果地点IDは管理者が発行した値を指定ください。|
|-|**ViewListingEvent** ( String eventName, int ltvPointId ) <br><br> `eventName` : イベント名<br>`ltvPointId` : LTV成果地点ID|コンストラクター。任意のイベント名を指定する場合にはこちらを使用ください。|
|ViewListingEvent|**addUserId** ( String id )<br><br>`id` : アプリ内のユーザーID|ユーザーIDを指定する場合に使用します。|
|ViewListingEvent|**addDin** ( String din )<br><br>`din` : 日付 From|日付の指定のある場合に使用します。|
|ViewListingEvent|**addDout** ( String dout )<br><br>`dout` : 日付 To|日付の指定のある場合に使用します。|
|ViewListingEvent|**addDestination** ( String destination )<br><br>`destination` : 行き先(目的地)|旅行アプリなど目的地を指定する場合に使用します。|
|ViewListingEvent|**addOrigin** ( String origin )<br><br>`Origin` : 出発地点|旅行アプリなど出発地点を指定する場合に使用します。|
|ViewListingEvent|**addProduct** ( int id, String itemLocationId, String category, double price, String currency )<br><br>`id` : 商品ID<br>`itemLocationId` : ロケーションID(商品の広告を特定の場所や地域に訴求したい場合に設定)<br>`price` : 商品の価格<br>`currency` : 通貨|閲覧した商品の情報を指定する場合に使用します。|
|ViewListingEvent|**addCriteoPartnerId** ( String id )<br><br>`id` : CriteoアカウントID|CriteoアカウントIDが同一アプリで異なる場合は入力。|


### 連携対応済み媒体

* Criteo
* DynamicRemarketing
* DynalystCommerce


---
[戻る](/4.x/lang/ja/doc/track_events/README.md#supported_events)

[トップ](/4.x/lang/ja/README.md)
