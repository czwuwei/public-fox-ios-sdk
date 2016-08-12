# ViewBasket(買い物かご)イベント実装

View Basket（商品購入予定一覧）イベントが発生する箇所に、下記に従ってアクセス解析のイベント計測機能を実装ください。

### 実装例

```java
import co.cyberz.fox.FoxTrack;
import co.cyberz.fox.support.event.AddToCartEvent;

AddToCartEvent event = new AddToCartEvent(12345);
event.addUserId("USER_A001")
     .addCurrency("JPY")
     .addProduct(111, null, null, 0, 0)
     .addProduct(212, null, null, 0, 0)
     .addProduct(513, null, null, 0, 0)
     .addCriteoPartnerId("XXXXX")
     .addDin("2016-05-01")
     .addDout("2016-05-05");
FoxTrack.sendEvent(event);
```

### AddToCartEvent API

|返り値|メソッド|詳細|
|:---:|:---|:---:|:---|
|-|**AddToCartEvent** ( )|コンストラクター|
|-|**AddToCartEvent** ( int ltvPointId ) <br><br> `ltvPointId` : LTV成果地点ID|コンストラクター。規定のイベント名を内部で定義しているため、媒体連携を行う場合はこちらをお使いください。LTV成果地点IDは管理者が発行した値を指定ください。|
|-|**AddToCartEvent** ( String eventName, int ltvPointId ) <br><br> `eventName` : イベント名<br>`ltvPointId` : LTV成果地点ID|コンストラクター。任意のイベント名を指定する場合にはこちらを使用ください。|
|AddToCartEvent|**addUserId** ( String id )<br><br>`id` : アプリ内のユーザーID|ユーザーIDを指定する場合に使用します。|
|AddToCartEvent|**addItemId** ( String id )<br><br>`id` : アイテムID|アイテムIDを指定する場合に使用します。addProductメソッドを使用する場合は呼び出さなくて結構です。|
|AddToCartEvent|**addCurrency** ( String currency )<br><br>`currency` : 通貨|商品の価格の通貨を指定する場合に使用します。|
|AddToCartEvent|**addDin** ( String din )<br><br>`din` : 日付 From|日付の指定のある場合に使用します。|
|AddToCartEvent|**addDout** ( String dout )<br><br>`dout` : 日付 To|日付の指定のある場合に使用します。|
|AddToCartEvent|**addDestination** ( String destination )<br><br>`destination` : 行き先(目的地)|旅行アプリなど目的地を指定する場合に使用します。|
|AddToCartEvent|**addOrigin** ( String origin )<br><br>`Origin` : 出発地点|旅行アプリなど出発地点を指定する場合に使用します。|
|AddToCartEvent|**addProduct** ( int id, String itemLocationId, String category, double price, String currency )<br><br>`id` : 商品ID<br>`itemLocationId` : ロケーションID(商品の広告を特定の場所や地域に訴求したい場合に設定)<br>`price` : 商品の価格<br>`currency` : 通貨|閲覧した商品の情報を指定する場合に使用します。|
|AddToCartEvent|**addCriteoPartnerId** ( String id )<br><br>`id` : CriteoアカウントID|CriteoアカウントIDが同一アプリで異なる場合は入力。|


### 連携対応済み媒体

* Vizury
* DynamicRemaketing
* DynalystCommerce


---
[戻る](/4.x/lang/ja/doc/track_events/README.md#supported_events)

[トップ](/4.x/lang/ja/README.md)
