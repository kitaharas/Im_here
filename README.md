# I'm here

「I'm here」はイベントと参加者を繋ぐマッチングサービスです。
単なる告知アプリではなく、サービスを通じて新たなコミュニティの創出、発見や
自身の暮らしの可能性を広げるられることを目的としています。

## URL
http://imhere.place/

## 目指した課題解決

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

