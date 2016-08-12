# AchieveLevel(レベルアップ)イベント実装

主にゲームアプリなどのレベルアップイベントが発生する箇所に、下記に従ってアクセス解析のイベント計測機能を実装ください。

### 実装例

```java
import co.cyberz.fox.FoxTrack;
import co.cyberz.fox.support.event.AchievedLevelEvent;

AchievedLevelEvent event = new AchievedLevelEvent(12345);
event.addUserId("USER_A001")
     .addEventLabel("MonthlyEvent")
     .addEventField(123)
     .addMainLevel(10)
     .addSubLevel(9)
     .addDescription("XXXXXXXXXXX")
FoxTrack.sendEvent(event);
```

### AchievedLevelEvent API

|返り値|メソッド|詳細|
|:---:|:---|:---:|:---|
|-|**AchievedLevelEvent** ( )|コンストラクター|
|-|**AchievedLevelEvent** ( int ltvPointId ) <br><br> `ltvPointId` : LTV成果地点ID|コンストラクター。規定のイベント名を内部で定義しているため、媒体連携を行う場合はこちらをお使いください。LTV成果地点IDは管理者が発行した値を指定ください。|
|-|**AchievedLevelEvent** ( String eventName, int ltvPointId ) <br><br> `eventName` : イベント名<br>`ltvPointId` : LTV成果地点ID|コンストラクター。任意のイベント名を指定する場合にはこちらを使用ください。|
|AchievedLevelEvent|**addUserId** ( String id )<br><br>`id` : アプリ内のユーザーID|ユーザーIDを指定する場合に使用します。|
|AchievedLevelEvent|**addItemId** ( String id )<br><br>`id` : アイテムID|アイテムIDを指定する場合に使用します。|
|AchievedLevelEvent|**addEventLabel** ( String eventLabel )<br><br>`eventLabel` : イベントラベル|ゲーム内のイベント名を指定する場合に使用します。|
|AchievedLevelEvent|**addEventField** ( int eventField )<br><br>`eventField` : イベントに対するID|Chartboostと連携を行う場合に必須となります。詳細は[こちら](http://partners.chartboost.com/#general-event-tracking-information)|
|AchievedLevelEvent|**addMainLevel** ( String mainLevel )<br><br>`mainLevel` : メインレベル|レベルを指定する場合に使用します。|
|AchievedLevelEvent|**addSubLevel** ( String subLevel )<br><br>`subLevel` : サブレベル|レベルを指定する場合に使用します。|
|AchievedLevelEvent|**addDescription** ( String description )<br><br>`description` : レベルの説明|レベルの説明を指定する場合に使用します。|


### 連携対応済み媒体

* Chartboost

---
[戻る](/4.x/lang/ja/doc/track_events/README.md#supported_events)

[トップ](/4.x/lang/ja/README.md)
