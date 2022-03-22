# I'm here
![alt](/app/assets/images/imhere.png)

「I'm here」はイベントと参加者を繋ぐマッチングサービスです。
単なる告知アプリではなく、サービスを通じて新たなコミュニティの創出、発見や
自身の暮らしの可能性を広げるられることを目的としています。

## URL
http://imhere.place/

## 目指した課題解決
ペルソナ
 - 22歳 男性 一人暮らし
 - 新卒会社員
 - 就職と共に上京
 - 趣味なし
 - 休日は寝て過ごす。
 - 仕事に不満はないがやりがいが持てない
 - なんの為に働いているのか分からなくなってきた

ペルソナの課題
|課題|解決策|
----|----
|気軽に話せる友人がいない|匿名で誰でも気軽に話が出来る|
|夢中になれるものがない|様々な人やモノに気軽に触れ合える|
|趣味を見つける機会が無い|気分に合わせてイベントを探せる|




## 使用技術

バックエンド
 - Ruby 2.6.8
 - Ruby on Rails 5.2.6
 - MySQL 5.7
 - NginX
 - puma
 - active_hash
 - mini_magick

フロントエンド
 - HTML/CSS
 - Javascript(サインアップ、ログイン、イベント登録、各種モーダル、お気に入り登録、メッセージ表示、TOPアニメーション)
 - kaminari

インフラ・開発環境
 - Git/GitHub
 - Docker/Docker-compose
 - AWS(EC2,VPC,S3,Route3,RDS)
 - CircleCI(CI)

## 機能一覧
・　基本機能
 - 新規会員登録、ログイン機能（非同期通信/Jquery Ajax）
 - ユーザーフォロー機能
 - マイページ機能
    -　ユーザー登録情報変更（アイコン画像、コメント）
    
・　催事に関する機能
 - 新規開催機能（モーダル/JavaScript,Jquery）
 - 催事のスケジュール追加機能
 - 参加者一覧機能
 - 同開催者のイベント一覧機能
 
・　コミュニケーション
 - メッセージ機能（JavaScript fetch）

