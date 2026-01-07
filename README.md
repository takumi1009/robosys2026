# robosys2026
ロボットシステム学課題3
# prefecture_checker

日本の都道府県名を **標準入力**で受け取り,
その都道府県が属する **地域** と **県庁所在地** を **標準出力**に表示するコマンドです。

---

## 概要

このコマンドは，標準入力から与えられた都道府県名をもとに，

- 地域（例：関東，近畿 など）
- 県庁所在地

を出力します。 
シェルスクリプトと `awk` を用いて実装されています。

---

## 使い方

### 基本的な使い方

```bash
$echo 千葉県 | ./prefecture_checker
関東 千葉市
```

エラー例

存在しない都道府県名を入力した場合：

```bash
$echo 架空県 | ./prefecture_checker
Unknown prefecture: 架空県
```

異なる地域（関東・近畿）のケースを確認

テスト済み環境

Python 3.7

Python 3.8

Python 3.9

Python 3.10

Python 3.11

Python 3.12

Python 3.13

※ 本コマンド自体は bash + awk で実装されていますが，
GitHub Actions の matrix 機能を用いて上記 Python 環境でテストを実行しています。

ライセンス

BSD-3-Clause License

各ファイルには SPDX 形式の著作権・ライセンス表記を含んでいます。

著作権

© 2026 Komiya Takumi
