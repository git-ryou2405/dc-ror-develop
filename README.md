# qa-coin

## Member
#### 名前と好きなメソッドを記入してください
- 名前: 海老名翔平
  - 好きなメソッド: where
- 名前: Tatty
  - 好きなメソッド: pluck
- 名前：yukihiko
  _ 好きなメソッド: to_s
- 名前：yuu_tanaka
  _ 好きなメソッド: to_i
- 名前：yama_ryoji
  - 好きなメソッド: present

## Docker操作
ゼロからdocker環境を立ち上げる場合は、上から順にコマンドを実行すればOK
### docker imageのビルド
```
docker-compose build
```
### docker-compose起動
```
docker-compose up
```
`docker-compose up --build`にすると、`docker-compose up` の前に`docker-compose build`を自動的に実行してくれる
`docker-compose up -d`にすると、バックグラウンドでdocker-composeが起動する

### docker-composeで起動しているコンテナを確認する
```
docker-compose ps
```

### docker環境でbundle install
```
docker-compose exec web bundle install # docker-composeを起動中の場合
docker-compose run web bundle install # docker-composeを起動していない場合
```
`docker-compose run --rm web bundle install`で、bundle installしながらdocker-composeが起動し、install完了後コンテナが停止する
### railsコマンドを実行する
##### docker-composeで起動しているコンテナに入る
コンテナに入った後、railsコマンドが実行できる
```
docker-compose exec web bash
```
- DBを作成する
```
# rails db:create
```
- マイグレーション実行
```
# rails db:migrate
```
※railsページが見れるようになります。http://localhost:3000/

- コンテナから出る
```
# exit
```
##### ※コンテナに入らずrailsコマンド実行する方法
コンテナに入らず`docker-compose exec web`の引数に指定したrailsコマンドを実行します。
```
例：

docker-compose exec web rails db:create

docker-compose exec web rails db:migrate
```
### 起動中のdocker-composeコンテナを停止
```
docker-compose stop
```
`docker-compose down`を実行すると、`docker-compose stop`後に`docker-compose rm`を自動的に実行してくれる
停止した後起動したい場合は、`docker-compose up`,又は`docker-compose start`を実行する

### ログの確認
```
docker-compose logs
```
### 停止中のdocker-composeコンテナの削除
※対象：カレントディレクトリのdocker-composeコンテナ
```
docker-compose rm
```
### Dockerのイメージ、コンテナ、ネットワーク、ボリューム一括削除
- 未使用なイメージ、コンテナ、ネットワークを一括削除（volumeも含め全て削除）
```
docker system prune -a --volumes
```
### Dockerコンテナ一覧表示
```
docker ps

docker-compose ps
```
※-aオプションをつけると終了したコンテナも表示される

## rubocop操作
### rubocopとは
既定のフォーマットから違反している部分を指摘してくれるツール。 -a オプションで簡単な違反を自動修正する。

### 使用方法
- 違反している箇所を表示する。
```
rubocop
```
- 違反している箇所を自動的に修正する。
```
rubocop -a
```
- その他のオプションを確認する。
```
rubocop --help
```

## 出力の基本構文
1箇所の違反に対し、3行でワンセットです。
```
問題のファイルの相対パス:行番号:列番号: 違反レベル: 違反種別: 違反メッセージ
ここに違反した部分が表示される
　　  ^^^　← ^で該当箇所を示してくれる
```
実際には以下のように出力されます。
```
Gemfile:44:25: C: Layout/SpaceAfterColon: Space missing after colon.
  gem 'rubocop', require:false
```
この程度であれば rubocop -a で自動修正されます。

