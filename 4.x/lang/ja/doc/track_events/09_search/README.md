# Search(検索)イベント実装

検索イベントが発生する箇所で、下記に従ってアクセス解析のイベント計測機能を実装ください。

### 実装例

```java
import co.cyberz.fox.FoxTrack;
import co.cyberz.fox.support.event.SearchEvent;

SearchEvent event = new SearchEvent(12345);
event.addUserId("USER_A001");
     .addSearchTerm("XXXXXX")
     .addDestination("XXXXX")
     .addDin("YYYY-MM-DD")
     .addDout("YYYY-MM-DD")
     .addProduct("XXXX", "XXXXX");
FoxTrack.sendEvent(event);
```

### SearchEvent API

|返り値|メソッド|詳細|
|:---:|:---|:---:|:---|
|-|**SearchEvent** ( )|コンストラクター|
|-|**SearchEvent** ( int ltvPointId ) <br><br> `ltvPointId` : LTV成果地点ID|コンストラクター。規定のイベント名を内部で定義しているため、媒体連携を行う場合はこちらをお使いください。LTV成果地点IDは管理者が発行した値を指定ください。|
|-|**SearchEvent** ( String eventName, int ltvPointId ) <br><br> `eventName` : イベント名<br>`ltvPointId` : LTV成果地点ID|コンストラクター。任意のイベント名を指定する場合にはこちらを使用ください。|
|SearchEvent|**addUserId** ( String id )<br><br>`id` : アプリ内のユーザーID|ユーザーIDを指定する場合に使用します。|
|SearchEvent|**addSearchTerm** ( String searchTerm )<br><br>`searchTerm` : 検索文字列|検索文字列を指定する場合に使用します。|
|SearchEvent|**addDin** ( String din )<br><br>`din` : 日付 From|日付の指定のある場合に使用します。|
|SearchEvent|**addDout** ( String dout )<br><br>`dout` : 日付 To|日付の指定のある場合に使用します。|
|SearchEvent|**addDestination** ( String destination )<br><br>`destination` : 行き先(目的地)|旅行アプリなど目的地を指定する場合に使用します。|
|SearchEvent|**addOrigin** ( String origin )<br><br>`Origin` : 出発地点|旅行アプリなど出発地点を指定する場合に使用します。|
|SearchEvent|**addProduct** ( String id, String itemLocationId, String category, double price, String currency )<br><br>`id` : 商品ID<br>`itemLocationId` : ロケーションID(商品の広告を特定の場所や地域に訴求したい場合に設定)<br>`price` : 商品の価格<br>`currency` : 通貨|閲覧した商品の情報を指定する場合に使用します。|


### 連携対応済み媒体

* DynamicRemaketing

---
[戻る](/4.x/lang/ja/doc/track_events/README.md#supported_events)

[トップ](/4.x/lang/ja/README.md)
