# アプリケーション名
* bar-research

## サイト概要
![bar-top](https://user-images.githubusercontent.com/73866971/107849477-c1009280-6e3e-11eb-8924-5eff2184dbbe.png)
バーの検索と口コミを投稿した人同士が話し合えるSNS融合型サイトです。
外出自粛が求められる中で、お酒好き同士が交流の場として活用できるサイトを作成したいという思いから
仕上げたサイトになります。

「bar-research」は店舗検索、口コミ投稿、お気に入り、ブックマーク、チャット、ランキングを活用し、行きたいお店へ
効率よく訪問することが可能です。

店舗を経営しているオーナーも店舗を登録することができ、口コミも閲覧することが可能です。

ユーザーもオーナーも「bar-research」を活用することによってwin-winの関係になるようなサイトを目指しています。

## 作成において意識をしたこと
ユーザー、オーナー、管理者とdeviseが3つ存在するため、URLのエンドポイントはこだわりを持って作成しました。
基本的なことではありますが、スコープとネームスペース、URLのネストなど必要に応じて使用しています。
railsの1つ1つの機能はとてもシンプルなものばかりですが、実際にリリースされて運用後のことも視野にいれながら
エンドユーザー目線で分かりやすいサイトに仕上げました。

* オーナーだけがアクセスできる店舗側画面
* 管理者だけがアクセスできる管理者画面
* いたずら登録を防ぐためのメール認証機能
* チャットの論理削除、送信取り消し（物理削除）を利用したユーザー同士のメッセージ機能
* 各種APIを利用した機能（googleログインやGoogleマップなど）
* 不具合が起きた時に管理者へ問い合わせができるメール機能
* CI/CDツールを使った自動デプロイ
※詳細は下記のチャレンジ機能を確認いただければと思います。

## ER図
![bar-research](https://user-images.githubusercontent.com/73866971/107846156-e4b6df00-6e24-11eb-9cca-2455ecc5b241.png)
リンク：https://app.diagrams.net/#G115vqiVhrjZdZwjBZaCUUVVPAjkSslJ4d

## テーブル定義
リンク：https://docs.google.com/spreadsheets/d/1rNdNEBlheH6Bb6mQGHpOWYyYcdKFIpz9DnPuCx4vQX0/edit#gid=0

## 詳細設計図
リンク：https://docs.google.com/spreadsheets/d/12iote3ggFBUZOFDjRXSGxFajgqEtcYYEzCJJjykoNzc/edit#gid=0

## チャレンジ要素一覧
リンク：https://docs.google.com/spreadsheets/d/1fJtzsWF3Lze7gZq9Cak0vdvZvlFt_Ub7u7pfVLzGBBc/edit#gid=0

## 開発環境
* OS：Linux(CentOS)
* 言語：HTML,CSS,JavaScript,Ruby,SQL
* フレームワーク：Ruby on Rails
* JSライブラリ：jQuery, Raty
* IDE：AWS

