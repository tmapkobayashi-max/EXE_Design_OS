# EXE Design OS Workspace

EXE MATE の提案資料を、HTML を最終媒体として一貫して生成・検証・納品するための作業場です。

## 最初に読む

1. `AGENTS.md` - Codex の共通作業規約
2. `skills/proposal-slide-generator/SKILL.md` - 資料生成の実行手順
3. `exe-design-os/SOURCE_OF_TRUTH.md` - デザイン判断の優先順位
4. `exe-design-os/docs/07_ART_DIRECTION.md` - ビジュアルの必須ルール

## フォルダの役割

| フォルダ | 役割 |
|---|---|
| `exe-design-os/` | デザイン規約の原典。ルールを育てる場所 |
| `skills/` | Codex に任せる業務の実行手順 |
| `projects/` | 案件ごとの入力・作業・納品物 |
| `references/` | 参照用。通常の生成作業では編集しない |
| `archive/` | 過去の試作・旧資料。再利用は必要な部分だけ |
| `ops/` | 運用メモと旧導線 |
| `tools/` | HTMLデッキの画像化など、共通の検証補助 |

## 1案件の流れ

`projects/_template/` を複製し、案件情報を `01_brief/brief.md` に記入する。
Codex は素材を読んで `02_work/` に構成案・検証表を作り、最終HTMLと関連素材を `03_delivery/` に出力する。

中間市案件 `projects/nakama-1910/` は、最初の完成見本と検証対象として保持している。新規案件の雰囲気・密度・納品構成を確認するときに参照する。

## 見た目の検証

Edge が導入されたWindows環境では、次のように各スライドをPNG化できる。

```powershell
.\tools\render-deck.ps1 -DeckPath .\projects\<案件名>\03_delivery\deck.html -SlideCount 12
```

`out/` に出力された画像を、全ページ確認してから納品する。
## Git 運用方針

- このワークスペースは、Codex 運用に合わせた **新しい正本 repo** として扱う
- 旧 GitHub repo は参照用アーカイブとし、履歴を無理に接続しない
- 新規の案件整理、OS更新、納品物整備はこの repo 側で継続する
