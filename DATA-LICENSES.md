# 同梱ファイルのライセンスと出典

無料配布でも、各ファイルの帰属表示、改変表示、非営利・継承条件等を維持してください。実装コードのMIT Licenseを辞書・モデルに適用していません。

| 対象 | ライセンス | 出典・加工の説明 |
|---|---|---|
| 実装コード、インストーラ、InputSources補助プログラム | MIT | [LICENSE](LICENSE) |
| `lexicon.tsv`、`matrix.bin` とUniDic由来の加工辞書 | CC BY-NC-SA 4.0 | 中古和文UniDic 2025.12、国立国語研究所「通時コーパス」プロジェクト／小木曽智信。[元のREADME](Resources/UniDic-README.md) |
| `orthography.tsv`、`supplement.tsv`、`lexeme-prior.tsv`、`proper-compounds.tsv`、`morphology-supplement.tsv` | CC BY-NC-SA 4.0 | UniDic、OpenCHJ-Genjiの形態論情報、CC0の校異源氏物語TEI等。[詳細](Resources/Orthography-LICENSE.md) |
| `ngram.json` | CC BY-SA 4.0 | Wikisourceの土佐日記・方丈記・徒然草、OpenCHJ歌経標式例歌。[出典と改変](Resources/Corpus-LICENSE.md) |
| `word-ngram.json` | CC BY 4.0 | CC0の校異源氏物語TEI本文とOpenCHJ-Genjiの形態論情報。[出典と改変](Resources/Corpus-LICENSE.md) |
| `reranker.json`、`lattice-reranker.json`、`incumbent-reranker.json` | CC BY-NC-SA 4.0 | UniDic由来の数値特徴、CC0本文、OpenCHJ形態論情報。[出典と改変](Resources/Reranker-LICENSE.md) |
| 来歴・生成条件を記録したメタデータ／歴史的読みの出典一覧 | 各説明対象の条件を併記・維持 | アプリ内の `model.json`、各 `*-model.json`、`orthography-metadata.json`、`historical-aliases.tsv` |

辞書・モデルはアプリの `Contents/Resources/` に同梱しています。原コーパス、原資料スナップショット、教師例、個人学習履歴はこの公開パッケージに含めません。

表記の加工には歴史的仮名キーへの索引変更、送り仮名・表記の正規化、口語活用の除外、語形・頻度の集計、コスト設定等を含みます。本文から作るN-gramや数値モデルは独立したファイルとして提供しています。元資料、使用版、改変内容はリンク先の出典文書を参照してください。

OpenCHJ-Genjiの形態論情報のCC BY 4.0表示を、元の本文を自由に再配布する根拠にはしていません。本文・語順の出典には、別途CC0等を確認した資料を使用しています。

出典文書には開発用の生成スクリプト、評価データ、古い評価報告への参照が残っています。この公開はバイナリ配布用のため、これらの開発用ファイルは含めていません。出典・ライセンス・改変の記録は保存しています。

CCの条件：

- [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.ja)
- [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.ja)
- [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.ja)
- [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/deed.ja)

無料というだけで商用利用・商用再配布が許可されるわけではありません。営利目的の利用はデータ提供元の条件や別途許諾を確認してください。この公開にあたり第三者データの権利条件を変更していません。
