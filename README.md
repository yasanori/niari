# niari
写真を撮ることが好きなアマチュアカメラマンと、旅行先や何かの記念として思い出を写真として残したい人などをつなげるアプリです。

![トップページ](https://user-images.githubusercontent.com/38156084/79716214-f9b00800-8310-11ea-9a83-5b11552f2975.gif)


## 開発経緯
素敵な写真を撮ることができるアマチュアカメラマンの方が多くいらっしゃいます。
そのため写真を撮りたいが、被写体となってくれる人がいないというカメラマンの悩みと、思い出を綺麗な写真として残したいがプロにお願いするのは気が引けるといった写真を撮って欲しい人の悩みを解決するため開発いたしました。

## アプリ概要
- 写真が好きなアマチュアカメラマンと、思い出を写真として残したい人などをつなげるアプリ
- ユーザー登録行う
- カメラマンか撮って欲しい人かを設定で決める（デフォルトは撮って欲しい人）
- カメラマンを活動拠点か名前で検索する
- 気に入ったカメラマンがいればフォロー出来る
- DMで撮影交渉を行う


## デモ
デモページ公開中です。
[nairi](http://niari.site/)
トップページ下部、または右上ログインボタンを押し、ログイン画面からGuest Userでログインが出来ます。

## 機能
Ruby on Railsで制作したアプリとなります

- ユーザー機能
- 画像投稿機能
- ユーザー間フォロー機能
- DM機能
- カメラマンとして登録することで検索対象となる
- 名前、活動拠点でのカメラマン検索機能
![ユーザー検索](https://user-images.githubusercontent.com/38156084/79716262-27954c80-8311-11ea-8b56-4fe4c70636eb.gif)

### 使用Gem
- Devise
- Carrierwave
- MiniMagick
- acts_as_follower
- active_hash
- font-awesome-sass 等

## こだわり
- トップページで投稿画像の最新１０件を自動スライド表示
- 画像投稿の際、ファイル選択した時点でプレビュー表示
- 名前検索はインクリメンタルサーチを実装
- DM機能には既読、未読判定を付与
- DMリストに未読メッセージ数を表示
- DMリストをメッセージの新しい順に随時並び替わる

## 使い方
トップページ下部、又は画面右上「ログイン」からGuest Userとしてログインできます。
ログイン後、トップページ左上からカメラマンを検索できます。
画面右上、「Guest User」からメニューが表示できます。

## インストール
- $ git clone https://github.com/yasanori/niari.git
- $ cd niari
- $ bundle install

## 本アプリの今後
カメラマンの人柄をより伝えるため、星や数値ではない評価制度の導入。
現在のDMでの交渉に加えて、ワンタッチで出来る申請機能

## 作者
[優典: Twitter](https://twitter.com/___yu_suke___)

## ライセンス
This project is licensed free.
ご自由にご利用ください
