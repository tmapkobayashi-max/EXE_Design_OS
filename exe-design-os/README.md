# EXE Design OS

EXE MATE株式会社の提案資料を、誰が・いつ作っても同じ品質になるようにするための仕組み。

AIに「いい感じに作って」と頼むのではなく、
**色・寸法・部品・型を先に決めておき、AIには組み立てだけをさせる。**

---

## まず読む

| 目的 | ファイル |
|---|---|
| **資料を1本つくりたい** | [`prompts/01_資料をつくる.md`](prompts/01_資料をつくる.md) ← これをCodexに貼る |
| ファイルが食い違っていた | [`SOURCE_OF_TRUTH.md`](SOURCE_OF_TRUTH.md) ← どれが正しいかの判断基準 |
| 見た目の作り方を知りたい | [`docs/07_ART_DIRECTION.md`](docs/07_ART_DIRECTION.md) |
| 完成形を見たい | [`examples/nakama-1910/deck.html`](examples/nakama-1910/deck.html) |

---

## 構成

```
exe-design-os
│
├─ README.md                    このページ
├─ SOURCE_OF_TRUTH.md           ★食い違ったときの判断基準
├─ exe_visual_regulation.md     ブランドの原典（色・フォント・命名規則）
│
├─ docs/                        ルール
│   ├─ 01_PHILOSOPHY.md         なぜこう作るか
│   ├─ 02_VISUAL_SYSTEM.md      視覚の規則
│   ├─ 03_COMPONENT_LIBRARY.md  使ってよい部品
│   ├─ 04_TEMPLATE_SYSTEM.md    話の運び方
│   ├─ 05_PROMPT_SYSTEM.md      AIへの指示の考え方
│   ├─ 06_VALIDATION_SYSTEM.md  出す前の自己採点
│   └─ 07_ART_DIRECTION.md      ★見た目の作り方。イラストの発注方法まで
│
├─ templates/                   案件別の骨格
│   ├─ customer-proposal.md     汎用（迷ったらこれ）
│   ├─ system-development.md    システム開発・クラウド移行
│   └─ illustration-brief.md    イラスト発注書の書式
│
├─ prompts/                     AIへの依頼文
│   └─ 01_資料をつくる.md         ★これ1枚で1本作れる
│
├─ examples/                    見本。AIはこれを真似る
│   └─ nakama-1910/             中間市「未来レンガ」15枚
│
└─ assets/
    └─ pptx-guide.md            pptxで出す場合の技法
```

---

## 資料ができるまで

```
① prompts/01_資料をつくる.md をCodexに貼り、案件欄を埋める
        ↓
② 3点セットが返る
   ・deck.html      … 資料そのもの
   ・イラスト発注書   … 絵の注文書
   ・検証表          … AIの自己採点
        ↓
③ 発注書をChatGPTの画像生成に1枚ずつ投げる（1チャット1画像）
        ↓
④ 届いたPNGを sozai/illust/ に保存 → Codexに差し込ませる
        ↓
⑤ ブラウザで確認 →「PDFで保存」で納品物になる
```

**イラストは後から足せる。** まず骨格を作って社内で合意し、それから絵を入れるほうが速い。

---

## 守るべきこと（要点だけ）

- 色は `SOURCE_OF_TRUTH.md` の表以外を使わない。近い色で代用しない
- Main は **EXE Pink `#FF6366`**（強み・解決策・強調）／Sub Grey `#D6E4E7`（現状・課題）
- 1スライド1メッセージ。本文は2〜3行以内
- 実績数字はページ内で最大サイズ
- 図：テキスト＝6:4（入り口資料は7:3）
- 外余白は最低40px（1920px幅なら104px）
- ノンブルは算用数字のみ。ラベル文字を付けない
- **レイアウトは必ずグリッドで組む。`position:absolute` で文字を置かない**（重なるため）
- 部品は `docs/03_COMPONENT_LIBRARY.md` にあるものだけ使う。新しいレイアウトを発明しない

---

## AIに任せてよいこと／いけないこと

| 任せてよい | 任せてはいけない |
|---|---|
| どの型を使うか | 色 |
| イラストの中身・構図 | フォント |
| 見出しの言い回し | 文字サイズの階層 |
| 何枚に分けるか | 余白の最小値 |
| 1枚に載せる要素の数 | ノンブルの表記と位置 |

**色とフォントと余白はEXEのもの。絵と言葉はAIのもの。**

---

## 品質の目安

出す前に `docs/06_VALIDATION_SYSTEM.md` と `docs/07_ART_DIRECTION.md` のチェックリストで
自己採点する。90点未満は出さない。

最後に自分へ問う。**「これを自信を持って客先に出せるか？」**
