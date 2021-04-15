# Recettes

### <アプリケーション概要>

このアプリはプロの料理人👨‍🍳に向けて作ったレシピアプリです。

アカウントの登録、レシピの投稿ができます。

自分が調べたい料理名や使いたい食材で検索をする事が出来ます。

### < URL >
52.68.191.45

### <テスト用アカウント>

 Email: test@gmail.com

 pass: test1234

 ### <利用方法>

* 作りたい料理や使いたい食材で検索をかけて、気に入ったレシピをいいねする事が出来ます。

* 投稿する側は、自分の料理を多くの料理人に知ってもらう事が目的です。

### <目指した課題解決>

* 新人料理人が多くの料理人の料理を手軽に知る機会を作りたいと思った。

* 腕のある料理人が自分の料理をアピールする場所を増やしたかった。

### <洗い出した要件>
| 優先順位 | 機能 | 目的 | 詳細 | ストーリー(ユースケース) |
|---------|------|----|------|----------------------|
| 3        | ユーザー管理機能 |投稿に紐ずくユーザーを認識できるようにするため |deviseを使ったユーザー管理機能の実装 |・名前、メールアドレス、パスワード、アバターを決め登録する<br>・名前、メールアドレス、パスワード、アバターは変更する事ができる<br>・ログイン、ルグアウトする事ができる
| 3       | レシピの投稿 | レシピを投稿することで、自分の料理をいろんなユーザーに認知してもらう | 写真付きのレシピを投稿できるようにする |・写真、料理名、食材、作り方、ジャンルを入力し投稿する<br>・投稿したレシピは編集、削除ができる |
| 2       | レシピの検索  | ユーザーが簡単に自分の調べたいレシピを見つけられる | 写真付きのレシピを投稿できるようにする |・写真、料理名、食材、作り方、ジャンルを入力し投稿する<br>・投稿したレシピは編集、削除ができる|
| 2       | ジャンル一覧 | ジャンル分けされたレシピ一覧を見ることで考えを絞る事ができる | レシピのジャンル毎の一覧ページを作成する | ・ジャンル毎の一覧ボタンを押すことで一覧ページへ遷移する事ができる |
| 1      | いいね | jqueryを使った非同期通信の実装方法を習得 | ユーザーが気に入った投稿にいいねできる | ・いいねを押すとボタンの色が変化する<br>・いいねされている状態でもう一度ボタンを押すといいねが消される。|

### <実装した機能>

* ユーザー管理機能
  * ログイン、ログアウトが出来ます
  [![Image from Gyazo](https://i.gyazo.com/08a80f42ed17e4c44898330e02468244.gif)](https://gyazo.com/08a80f42ed17e4c44898330e02468244)

  * ユーザー情報を編集する事が出来ます。
  [![Image from Gyazo](https://i.gyazo.com/fd6d9948facd056121849b7e11e8add2.gif)](https://gyazo.com/fd6d9948facd056121849b7e11e8add2)

  * ユーザーに紐ずくレシピを見る事が出来ます
  [![Image from Gyazo](https://i.gyazo.com/7e73f3faac93d9879b55f4dd8681e340.gif)](https://gyazo.com/7e73f3faac93d9879b55f4dd8681e340)

* レシピ投稿機能
  * 写真付きのレシピを投稿する事ができます
  [![Image from Gyazo](https://i.gyazo.com/351dc0e9a1132fad814712b6ad4fc951.gif)](https://gyazo.com/351dc0e9a1132fad814712b6ad4fc951)

  * 投稿内容を編集、削除できます
  [![Image from Gyazo](https://i.gyazo.com/cbd1754499e2f56e1440cc32bb4bedd4.gif)](https://gyazo.com/cbd1754499e2f56e1440cc32bb4bedd4)

* 検索機能
  * 材料、料理名で検索をかける事が出来ます。
  [![Image from Gyazo](https://i.gyazo.com/e3d4708f187c69f5c810785f27a565df.gif)](https://gyazo.com/e3d4708f187c69f5c810785f27a565df)


* いいね機能
  * 投稿されたレシピにいいねをする事が出来ます。
  [![Image from Gyazo](https://i.gyazo.com/7b58568b7cff2bf5619479b69bae7f89.gif)](https://gyazo.com/7b58568b7cff2bf5619479b69bae7f89)

* タグ付け機能
  * 投稿にタグをつけることでタグ一覧機能を実装しました。
  [![Image from Gyazo](https://i.gyazo.com/4058b65e25be5bb7604cfd1891f40cc5.gif)](https://gyazo.com/4058b65e25be5bb7604cfd1891f40cc5)

  ※gifが上手く表示されておらず申し訳ありません

  ### <実装予定の機能>
  * プレビュー機能

  
  * いいねした投稿一覧機能

  ### <データベース設計>
  [![Image from Gyazo](https://i.gyazo.com/377c7899656860a69ccde3c9bc460e5f.png)](https://gyazo.com/377c7899656860a69ccde3c9bc460e5f)
