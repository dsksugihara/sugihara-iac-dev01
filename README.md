# sugihara-iac-dev01
 実行コマンドチートシート

## terraform 環境の初期化
$ docker-compose run --rm terraform init

## .tf ファイルの見た目を整える
$ docker-compose run --rm terraform fmt

## terraform の定義に変なところがないかチェックする
$ docker-compose run --rm terraform validate

## 実行によって起こる変更を確認する
$ docker-compose run --rm terraform plan

## 環境に変更を適応する
$ docker-compose run --rm terraform apply
