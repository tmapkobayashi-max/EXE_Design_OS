# EXE MATE 提案資料プロジェクト

ここはEXE MATE株式会社の提案資料をつくる作業場です。
着手前に、必ず下の「最初に読む」を実行してください。記憶や推測で進めないこと。

---

## 最初に読む（毎回）

```
exe-design-os/SOURCE_OF_TRUTH.md     ← どのファイルが正しいかの判断基準
exe-design-os/README.md              ← 全体の構成と作業の流れ
exe-design-os/docs/07_ART_DIRECTION.md ← 見た目の作り方。最重要
exe-design-os/examples/nakama-1910/deck.html ← 品質の基準。迷ったらこれを真似る
```

`exe-design-os/` は GitHub `tmapkobayashi-max/exe-design-os` のクローンです。
最新かどうか不安なら `git -C exe-design-os fetch origin` してから
`git diff origin/main HEAD` で差を確認する。

---

## このフォルダの中身

```
EXE提案資料テンプレ/
├─ CLAUDE.md                    このファイル
├─ exe-design-os/               ★Design OS本体（GitHubと同じ中身）
├─ 中間市提案_一式_20260721/       案件：中間市
│   ├─ 01_完成版/                HTML・PDF・illust（作業はここ）
│   ├─ 02_送付用/                送付ZIPとチャットワーク文面
│   ├─ 03_発注書/                イラスト発注書2本
│   ├─ 04_素材/                  sozai・NAKAMATE元資料
│   └─ 05_旧版/                  旧デッキ・試作・元pptx/docx/py
├─ exe_visual_regulation.md     ブランド原典（リポジトリ内と同じ）
└─ パワポテンプレート_exe.pptx     実テンプレ（色・寸法の実測元）
```

---

## 決まっていること

- **Main = EXE Pink `#FF6366`**（強み・解決策・強調）／Sub Grey `#D6E4E7`（現状・課題）
  ／Base `#1E1C1C`／地の色は生成り `#F7F3EC`。2026-07-23確定（小林さん判断）
- `assets/pptx-guide.md` の「青 `#0071BC` がPrimary」は**採用しない**。
  ただし座標計算・python-pptxの技法・画像発注の分業（第8章）は有効
- スライドは **1920×1080**。レイアウトは **必ずCSS Grid**。
  `position:absolute` で文字を置かない（重なるため）
- 図の中の文字は HTMLで重ねず **SVG内の `<text>`** で置く
- 参照デッキ `codex-deck-benefits-v2.vercel.app` の構造は解析済み。
  **あのスライドは18枚ともPNG画像で、HTMLは画像ビューア**。
  HTMLでカードを並べる方式ではあの見た目にならない

## 決まっていないこと

- なし（色・地の色・pptx方針はすべて2026-07-23に決定済み）

## 直近の作業予定

日々変わる宿題・TODOは `TODO.md` を参照。CLAUDE.mdには恒久的な決定事項のみ置く。

---

## 作業のやり方

### スライドの見た目を確認する（★必ずやる★）

座標を決め打ちして目で見ずに作ると、必ず文字が重なる。
Edgeのヘッドレスで自分で画像化して確認すること。

```powershell
$edge="C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
& $edge --headless=new --disable-gpu --hide-scrollbars --window-size=1920,1080 `
  --screenshot="out\p07.png" "file:///<deckのパス>?p=7"
```

deck.html には `?p=N` の検査モードが入っていて、N枚目だけを原寸で表示する。
出力したPNGをReadツールで開いて、自分の目で破綻を確認してから報告する。

### GitHubへの反映

**pushはできない**（認証情報が無く、非対話シェルでログインできない）。
コミットまではローカルで行い、**小林さんがGitHubのWeb UIで手動アップロード**する。

手順を伝えるときは、変更したファイル／フォルダを具体的に列挙すること。
`git diff --name-status origin/main HEAD` で出せる。

### 画像（イラスト）

- **Codex（コード生成側）では画像を作れない。** ChatGPTのチャット画面の画像生成を使う
- 有料契約は松浦社長。小林さんの手元では叩けない
- 画像なしでも成立するよう、SVGの線画図解で作る。
  後からPNGに差し替えられるようスロットを残しておく

---

## 姉妹プロジェクト

- `komatsubara_patientlist` / `komatsubara_CS+LINE`（コマツバラ形成外科）
- 将来、この基盤をカウンセリングシートのビジュアル強化に転用する構想がある。
  ただし**色は必ず作り直す**（ピンク＋生成りはEXEのブランド）。
  患者様向け文面は CS+LINE 側の担当。医療広告ガイドラインの制約にも注意する
