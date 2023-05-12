# sugihara-iac-dev01
 実行コマンドチートシート

## terraform 環境の初期化
$ docker-compose run --rm tf init

## .tf ファイルの見た目を整える
$ docker-compose run --rm tf fmt

## terraform の定義に変なところがないかチェックする
$ docker-compose run --rm tf validate

## 実行によって起こる変更を確認する
$ docker-compose run --rm tf plan

## 環境に変更を適応する
$ docker-compose run --rm tf apply
$ docker-compose run --rm -e TF_VAR_container_image="us-docker.pkg.dev/cloudrun/container/hello:latest" terraform apply