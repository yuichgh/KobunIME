# 追加コーパスとN-gramの利用条件

確認日：2026-09-17。`ngram.json` とそのコーパス由来の派生データは **CC BY-SA 4.0** で提供します。実装コードのMIT、既存UniDic加工辞書・接続行列のCC BY-NC-SA 4.0とは別のデータです。ライセンスを同一視しないでください。

CC BY-SA 4.0は出典表示・改変表示・同一ライセンスの維持を条件として加工と再配布を許可します。ライセンス本文： https://creativecommons.org/licenses/by-sa/4.0/legalcode.ja 。CC BY 4.0本文： https://creativecommons.org/licenses/by/4.0/legalcode.ja 。

追加データの出典：

- **土佐日記 (國文大觀)** — 紀貫之 / 國文大觀編者（丸岡桂・松下大三郎） / Wikisource contributors。元データ：CC-BY-SA-4.0。
  - 出典：https://ja.wikisource.org/w/index.php?oldid=206519
  - ライセンス：https://creativecommons.org/licenses/by-sa/4.0/
  - 寄稿者履歴：https://ja.wikisource.org/w/index.php?title=土佐日記_(國文大觀)&action=history
- **方丈記 (國文大觀)** — 鴨長明 / 國文大觀編者（丸岡桂・松下大三郎） / Wikisource contributors。元データ：CC-BY-SA-4.0。
  - 出典：https://ja.wikisource.org/w/index.php?oldid=240182
  - ライセンス：https://creativecommons.org/licenses/by-sa/4.0/
  - 寄稿者履歴：https://ja.wikisource.org/w/index.php?title=方丈記_(國文大觀)&action=history
- **徒然草 (國文大觀)** — 吉田兼好 / 國文大觀編者（丸岡桂・松下大三郎） / Wikisource contributors。元データ：CC-BY-SA-4.0。
  - 出典：https://ja.wikisource.org/w/index.php?oldid=240239
  - ライセンス：https://creativecommons.org/licenses/by-sa/4.0/
  - 寄稿者履歴：https://ja.wikisource.org/w/index.php?title=徒然草_(國文大觀)&action=history
- **OpenCHJ 歌経標式例歌** — 小木曽智信（形態論情報・仮名転写）; Frellesvig, Bjarke, Stephen Wright Horn et al. (eds.) 2025, Oxford-NINJAL Corpus of Old Japanese（本文）。元データ：CC-BY-4.0。
  - 出典：https://github.com/togiso/OpenCHJ-JodaiKayo
  - ライセンス：https://creativecommons.org/licenses/by/4.0/

Wikisourceの対象は國文大觀所収の古典原文のみです。各作品のパブリックドメイン表示とサイトのCC BY-SA 4.0表示を確認し、追加の編集・転写部分も含めてCC BY-SA 4.0を維持します。作者・底本編者・Wikisource寄稿者を上記に表示しました。ページの固定版リンクに加え、取得HTML全体をSHA-256で固定しています（転写元ページの更新による差も含め再現可能）。

歌経標式例歌はOpenCHJ READMEにより、ONCOJ本文・形態論情報の双方がCC BY 4.0であることを確認しました。原データのローマ字から仮名への転写は小木曽智信によるものです。ONCOJ帰属：Frellesvig, Bjarke, Stephen Wright Horn et al. (eds.) 2025. Oxford-NINJAL Corpus of Old Japanese. https://oncoj.ninjal.ac.jp/ 。確認資料： https://oncoj.github.io/front_page_Japanese.html 。

改変内容：本文のみ抽出、校注とルビを除外、NFC正規化、一部旧字体を通用字体に置換、かなの踊り字を展開、段落単位で学習・開発・評価へ分割、文内の文字unigram/bigram/trigramを集計。作品専用の切替や例文置換はありません。原文の校訂そのものではなくIME向け統計への加工です。

OpenCHJ-Genjiの**本文**は権利条件を本モデルの再配布根拠に使わず、本文由来の文順・連続トークンも取り込んでいません。通常のCHJ／中納言の検索結果、権利不明の教材、現代語訳は使用していません。

## 0.1.8の独立した語N-gram

`word-ngram.json` の語の並びは、[校異源氏物語テキストDBのTEI本文](https://github.com/kouigenjimonogatari/kouigenjimonogatari.github.io/tree/master/xml/master)から作成しました。東京大学の[デジタル源氏物語](https://genji.lib.u-tokyo.ac.jp/)はこのテキストデータをCC0と表示し、リポジトリREADMEは `xml/master/*.xml` の各ファイルを **CC0 1.0**、リポジトリ全体をCC BY 4.0と区別しています。全54ファイルの `<availability>` にCC0があることも生成スクリプトで検証します。取得版はcommit `89a60fe7b18c1eebb91f160c068b31e857776022`。本文そのものはアプリに同梱しません。

分かち書きには[OpenCHJ-Genji](https://github.com/togiso/OpenCHJ-Genji)の **CC BY 4.0** の形態論情報から取り出した孤立した語形集合を使います。OpenCHJの元の本文は著作権表示が別であり、こちらから語順・位置・文境界を採取しません。語形とCC0本文の照合で得た語1〜3-gramの加工モデルであり、分かち書きは近似です。OpenCHJ形態論情報の帰属先は小木曽智信、取得版はcommit `4a85a539934bad6b938322ad9bbb169daa7625c6`。出典と改変を明示し、このモデル単体はCC BY 4.0として提供します。既存 `ngram.json` のCC BY-SA 4.0、UniDic由来の辞書・接続行列のCC BY-NC-SA 4.0とはファイルを分けています。

学習に使った巻は02〜43、01と44〜54は語N-gramから除外しました。複数の資料からなる旧文字N-gramを主信号とし、新語N-gramのスコア差に20%だけ重みをかけます。生成方法は `Tools/prepare_word_ngram_experiment.py`、語数・モデルサイズは `Evaluation/word-ngram-experiment-model.json` に記録しました。モデルは文字列そのものを復元できる語の連接統計を含みますが、語順の出典は再配布可能と明記されたCC0本文です。

ソースの版・ハッシュは `ngram-model.json` と `Corpora/sources.json`、原資料スナップショットはソース配布の `Corpora/`、生成方法は `Tools/prepare_ngram.py` にあります。ソース配布には `Corpora/OpenCHJ-README.md` も保存しています。

国立国語研究所・ONCOJ・Wikisourceによる推奨や認定を意味しません。元ライセンスに従う無保証のデータです。
