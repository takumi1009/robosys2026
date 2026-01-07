# ロボットシステム学課題3
# prefecture_checker
![test](https://github.com/takumi1009/robosys2026/actions/workflows/test.yml/badge.svg)

日本の都道府県名を標準入力で受け取り,
その都道府県が属する **地域** と **県庁所在地** を標準出力に表示するコマンドです。

---

## 概要

このコマンドは，標準入力から与えられた都道府県名をもとに，

- 地域（例：関東，近畿 など）
- 県庁所在地

を出力します。 

---

## 使い方
リポジトリをクローン
```bash
$ git clone https://github.com/takumi1009/robosys2026
$ cd robosys2026
```
## 実行方法
```bash
$ echo 都道府県名　| ./prefecture_checker
地域　県庁所在地
```

### 実行例

```bash
$ echo 千葉県 | ./prefecture_checker
関東 千葉市
```

### エラー例

存在しない都道府県名を入力した場合：

```bash
$ echo 架空県 | ./prefecture_checker
Unknown prefecture: 架空県
```

異なる地域（関東・近畿）のケースを確認

## 必要なソフトウェア
- Python
テスト済みバージョン: 3.8〜3.13
- Ubuntu 24.04 LTS

## ライセンス
このソフトウェアはBSD-3-Clauseライセンスの下で公開されます。
外部ライブラリ依存なし（標準ライブラリのみ）
© 2026 Komiya Takumi
