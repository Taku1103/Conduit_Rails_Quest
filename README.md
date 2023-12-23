# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

やること
* indexページのarticleの動的描画
  * 〇dbにサンプル挿入
  * 〇それを描画
    * タグは一つのみ
    * 作成日
    * いいね数はランダム

* newページ
  * newページのarticleのcreate
  * バリデーション
  * バリデーションの警告表示

* 〇showページ
* 〇showページに遷移
  * 〇showページでdelete
  * 〇showページでeditページ遷移
  * 〇update
* 〇new,editとフォーム共通化

* 〇test環境整える(minitest install,migrate)

* 〇article validation


* 〇users
  * 〇モデル作成
  * 〇secureなパスワード
  * 〇users バリデーション
  * 〇users showページ,newページ,createアクション
  * 〇作成時のflash

* users-articles　テーブルを多対多で結びつけて中間テーブルを作る
* 記事とのリンク
* 記事のユーザー押したときのページ遷移


* 〇users
  * userのedit,delete権限
* 〇log-in
  * 〇一時セッション
  * 永続セッション
  * クッキーで永続する？
* ヘッダーログイン時で表示切替
* 〇log-out


* 〇画面遷移にプロフ画像がデカく表示される local
  renderの描画を小分けにしたりすると上手くいった
* ページネーション
* popular tags

* (xやらない)タグは配列にして描画時にイテレートして描画させる
* (xやらない)