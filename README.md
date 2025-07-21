# restrers-fanbook2025
リストラーズ大百科Vol.2原稿予定地

# docker

```
#ビルド
docker compose build
#実行
docker compose run --rm review review
# コンテナのシェルに入る(終わると消えるのでDockerfileに書いてbuildをやり直す)
docker compose run --rm review /bin/bash
```




## Dictionary conversion script

`tools/convert_to_dict.rb` は辞書データを `01-dict.re` に貼り付けやすい形式へ変換するシンプルな Ruby スクリプトです。すべての行を読み込み終えてからまとめて出力するため、パイプで連続処理するときも安心です。
次のようにタブ区切りの入力を与えると、用語と説明だけを取り出して整形します。

```bash
$ echo -e 'きぎょうせんし\tにょもこ\t企業戦士\t企業戦士。社畜の言い換え' | tools/convert_to_dict.rb
    企業戦士
     * 企業戦士。社畜の言い換え
```

