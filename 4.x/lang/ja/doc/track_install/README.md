# インストール計測の詳細

* [1. インストール計測の実装](#track_install_basic)
* [2. インストール計測の実装(オプション指定)](#track_install_optional)

<div id="track_install_basic"></div>
## 1. インストール計測の実装

`onLaunch`メソッドを利用することで、インストール計測を行うことができます。Cookie計測を利用する場合には、外部ブラウザ或いは`SFSafariViewController`が起動されます。この際、遷移先を`FOXTrackOption`のインスタンスにURL文字列を指定することができます。

プロジェクトのソースコードを編集し、アプリケーションの起動時に`didFinishLaunchingWithOptions`メソッド内、次の通り実装を行ってください。
また`SFSafariViewController`でのインストール計測を行った後に`SFSafariViewController`を閉じるため、`-(BOOL)application:openURL:sourceApplication:annotation:`メソッド内、`[FOXTrack handleOpenURL:url]`を実装を行ってください。

![Language](http://img.shields.io/badge/language-Objective–C-blue.svg?style=flat)
```objc
-(BOOL) application:(UIApplication *) application didFinishLaunchingWithOptions:(NSDictionary *) launchOptions {
	// ...
	[[FOXConfig configWithAppId:0000 salt:@"xxxxx" appKey:@"xxxx"] activate];
	[FOXTrack onLaunch];
	// ...
	return YES; // openURL:メソッドをコールさせるため必ずYESを返してください
}

-(BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {

	[FOXTrack handleOpenURL:url];

	return YES;
}
```
![Language](https://img.shields.io/badge/language-Swift-orange.svg?style=flat)
```Swift
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
	// ...
	FOXConfig.init(appId:0000,salt:"xxxxx",appKey:"xxxxx")!.activate()
	FOXTrack.onLaunch()
	// ...
}

func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {

        FOXTrack.handleOpenURL(url)

        return true
}
```

> ※ 引数を指定せず`onLaunch`メソッドを呼び出すと、F.O.X管理画面上での設定内容が優先されます。Cookie計測の際のリダイレクト先URLを指定する場合は、以降の説明をご確認ください。

> ※ onLaunchメソッドは、特に理由がない限りはアプリケーションの起動時に呼び出される`didFinishLaunchingWithOptions`メソッド内に実装してください。それ以外の箇所に実装された場合にはインストール数が正確に計測できない場合があります。<br>
アプリケーションの起動時に呼び出される`didFinishLaunchingWithOptions`メソッド内に実装していない状態でインストール成果型の広告を実施する際には、必ず広告代理店もしくは媒体社の担当にその旨を伝えてください。正確に計測が行えない状態でインストール成果型の広告を実施された際には、計測されたインストール数以上の広告費の支払いを求められる恐れがあります。

<div id="track_install_optional"></div>
## 2. インストール計測の実装(オプション指定)

インストール計測が完了したことをコールバックで受け取りたい場合、特定のURLヘ遷移させる場合や、アプリケーションで動的にURLを生成したい場合には、以下の[FOXTrackOption](../sdk_api/README.md#foxtrackoption)クラスを使用します。<br>

![Language](http://img.shields.io/badge/language-Objective–C-blue.svg?style=flat)
```objc
-(BOOL) application:(UIApplication *) application didFinishLaunchingWithOptions:(NSDictionary *) launchOptions {
	// after activate
	FOXTrackOption* foxOption = [FOXTrackOption new];
	foxOption.redirectURL = @"myapp://top";
	foxOption.buid = @"USER ID";
	foxOption.optout = YES;
	foxOption.onTrackFinished = ^ {
		NSLog(@"callback after tracking finished");
	}
	[FOXTrack onLaunchWithOption:foxOption];
	// ...
	return YES; // openURL:メソッドをコールさせるため必ずYESを返してください
}
```
![Language](https://img.shields.io/badge/language-Swift-orange.svg?style=flat)
```Swift
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

  let foxOption: FOXTrackOption = FOXTrackOption.init()
  foxOption.redirectURL = "myapp://top"
  foxOption.buid = "USER ID"
  foxOption.optout = true
  foxOption.onTrackFinished = {
    print("callback after tracking finished")
  }
  FOXTrack.onLaunchWithOption(foxOption)
}
```

> 上記のサンプルコードでは、リダイレクト先・BUID・オプトアウトの有無・計測完了のコールバックを受け取る処理の実装例となっています。<br>`onTrackFinished`をセットした上で計測処理が完了すると`Block`が呼ばれますので、インストール計測完了直後に実行したい処理はこちらに実装してください。

> オプトアウトを有効にした場合、その後そのユーザーを広告の配信対象から外すことが可能です。<br>
尚、オプトアウトはユーザーに対しオプトアウトの意思表示を選択させるような機能をアプリ内で実装している場合に有効です。

> F.O.X SDKのAPI仕様は[こちら](../sdk_api/README.md)でご確認ください。
