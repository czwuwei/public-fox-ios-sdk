## リエンゲージメント計測を実施する場合の疎通テスト

マーケットへの申請までに、SDKを導入した状態で十分にテストを行い、アプリケーションの動作に問題がないことを確認してください。

インストール計測の通信は、起動後に一度のみ行わるため、続けて効果測定テストを行いたい場合には、アプリケーションをアンインストールし、再度インストールから行ってください。

* **テスト手順**


1. テスト用端末にテストアプリがインストールされている場合には、アンインストール
1. テスト用端末の「設定」→「Safari」→「Cookieとデータを消去」によりCookieを削除
1. 弊社より発行したテスト用URLをクリック
1. マーケットへリダイレクト
1. テスト用端末にテストアプリをインストール<br />
1. アプリを起動、ブラウザが起動<br />
ここでブラウザが起動しない場合には、正常に設定が行われていません。設定を見直していただき、問題が見当たらない場合には弊社へご連絡ください。
1. LTV地点まで画面遷移<br />
1. アプリを終了し、バックグラウンドからも削除<br />
1. SafariのCookieを削除し、リエンゲージメント計測テスト用URLをクリック。アプリが起動することを確認ください。
1. LTV地点へ到達
1. アプリを終了、バックグラウンドには消さずに残しておく。
1. SafariのCookieを削除し、リエンゲージメント計測テスト用URLをクリック。アプリが起動することを確認ください。
1. LTV地点まで画面遷移
1. 再度アプリを起動

弊社へ3、6、7、9、10、12、13の時間をお伝えください。正常に計測が行われているか確認いたします。弊社側の確認にて問題がなければテスト完了となります。

> テスト用URLは必ず標準のSafari上でリクエストされるようにしてください。Chromeなどの3rd partyブラウザ、メールアプリやQRコードアプリを利用されそのアプリ内WebViewで遷移した場合には計測できません。

> テストURLをクリックした際に、遷移先がなくエラーダイアログが表示される場合がありますが、疎通テストにおいては問題ありません。

> 3でアクセスして頂くテストURLと、9、12でアクセスして頂くリエンゲージメント計測テストURLは
異なるのでご注意ください。


