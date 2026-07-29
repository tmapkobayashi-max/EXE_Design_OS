# Codex 作業規約 - EXE 提案資料

この作業場では、PowerPoint を主成果物にしない。最終成果物は **1920 x 1080 のHTML提案資料** とする。

目標品質は `https://codex-deck-benefits-v2.vercel.app/` のように、1枚ごとの主張と
全面ビジュアルで読み手を前へ進める提案資料。Codexが、構成・文章・図解・必要な画像生成・
HTML実装・原寸検証までを一貫して担う。

## 開始時に読む順序

1. `skills/proposal-slide-generator/SKILL.md`
2. `exe-design-os/SOURCE_OF_TRUTH.md`
3. `exe-design-os/docs/07_ART_DIRECTION.md`
4. `exe-design-os/examples/nakama-1910/deck.html`

案件固有の指示がある場合は、その案件の `01_brief/brief.md` と `01_brief/source/` を先に読む。

## 絶対ルール

- ブランド判断は `exe-design-os/SOURCE_OF_TRUTH.md` を最優先する。
- HTMLは CSS Grid を基本に組み、文字配置に `position: absolute` を使わない。
- スライドは 1920 x 1080、1枚につき主張は1つ、図と文字の比率は原則 6:4 以上にする。
- 数字・金額・実績は根拠のある資料にない限り作らない。不明な値は `未定` または要確認として扱う。
- 画像内には文字・数字・ロゴを入れない。文字はHTMLのテキストレイヤーで扱う。
- 既存案件とアーカイブは削除・上書きしない。新しい成果物は案件内の `02_work/` または `03_delivery/` に保存する。
- 納品前に、各スライドを画像化して見た目を確認する。崩れを見つけたら修正し、再確認する。
- 「整ったカードを並べただけ」の画面で終わらせない。主張の中心となるモノ・場面・変化を、画面の大部分を使って見せる。

## 作業後の扱い

- 新しい失敗パターンは、案件内の検証表だけで終わらせず、再発防止のルール候補として報告する。
- 恒久ルールを変更する場合は、先に `SOURCE_OF_TRUTH.md` を更新し、影響する見本と指示文も整合させる。
