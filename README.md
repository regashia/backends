# 前提条件
[docker-compose](https://docs.docker.com/compose/install/) がインストールされている必要がある。

# インストール
```bash
curl https://raw.githubusercontent.com/regashia/backends/master/bin/install.sh | sh
```

backends コマンドが `/usr/local/bin` に追加される。

# 使い方
```
$ backends help
Usage:
  backends [command]

Environments:
  MYSQL_VERSION
    default: latest
  MYSQL_PORT
    default: 3306
  REDIS_VERSION
    default: latest
  REDIS_PORT
    default: 3306

Commands:
  start
    立ち上げる
  stop
    コンテナをとめる
  remove_container
    コンテナを削除する
  remove_all
    コンテナ、データを含め、全てを削除する
  help
    ヘルプを表示する
```

mysql 最新バージョンを 3306 ポート、 redis 最新バージョンを 6379 ポートで立ち上げる。

```bash
$ backends start

$ docker ps
CONTAINER ID  IMAGE         ...      PORTS                   NAMES
xxx           redis:latest  ...      0.0.0.0:6379->6379/tcp  redis
xxx           mysql:latest  ...      0.0.0.0:3306->3306/tcp  mysql
```

mysql 5.7 を 8888 ポート、 redis 2.8 を 9999 ポートで立ち上げる。

```bash
$ MYSQL_VERSION=5.7 MYSQL_PORT=8888 REDIS_VERSION=2.8 REDIS_PORT=9999 backends start

$ docker ps
CONTAINER ID  IMAGE      ...  PORTS                   NAMES
xxx           mysql:5.7  ...  0.0.0.0:8888->3306/tcp  mysql
xxx           redis:2.8  ...  0.0.0.0:9999->6379/tcp  redis
```

# カスタマイズ
`${HOME}/.config/backends/docker-compose.yml` を編集する。
