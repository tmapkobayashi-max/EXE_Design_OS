# EXE Design OS - Customer Proposal Template

Version: 1.0

---

# Purpose

This is the universal base template for EXE MATE proposals.

It defines the minimum structure that every proposal must satisfy, regardless of category.

All other templates inherit from this template and extend it.

```
customer-proposal.md   ← parent (this file)
        │
        ├── system-development.md
        ├── business-improvement.md
        ├── website-renewal.md
        ├── ai-introduction.md
        └── ec-proposal.md
```

---

# Template Selection Rule

| Situation | Template |
|-----------|----------|
| Category is unclear | customer-proposal |
| First meeting / short proposal | customer-proposal |
| Multiple categories mixed | customer-proposal |
| System build, cloud migration, infrastructure | system-development |
| Paper / Excel / manual operation improvement | business-improvement |
| Corporate site, clinic site, renewal | website-renewal |
| AI, RAG, OCR, automation | ai-introduction |
| EC, Shopify, LINE, CRM | ec-proposal |

When two templates apply, select the child template and keep this file's mandatory slides.

---

# Proposal Goal

Every proposal must answer three questions in order.

1. What is the client struggling with now?

2. What does EXE MATE do about it?

3. What improves, by how much, and by when?

The proposal must end with one clear next action.

---

# Standard Slide Structure

| No. | Slide | Primary Component | Main Color |
|-----|-------|-------------------|------------|
| 1 | Cover | Hero | Base Black |
| 2 | Current Situation | Compare | Sub Grey |
| 3 | Issue Analysis | Cards | Sub Grey |
| 4 | EXE Proposal | Hero | EXE Pink |
| 5 | Structure | Relationship | EXE Pink |
| 6 | Expected Benefits | Numbers | EXE Pink |
| 7 | Implementation Steps | Flow | EXE Pink |
| 8 | Schedule | Timeline | EXE Pink / Sub Grey |
| 9 | Investment | Cards or Table | Base Black |
| 10 | Next Action | Hero | EXE Pink |

Minimum required slides: 1, 2, 4, 6, 10.

Slides 3, 5, 7, 8, 9 may be omitted only for short proposals.

---

# Slide Objectives

## 1. Cover

Purpose

Deliver confidence in the first three seconds.

Content

Client name / Proposal title / Date / EXE MATE logo.

Rule

No decorative background. White only.

---

## 2. Current Situation

Purpose

Describe the client's present operation in the client's own words.

Component

Compare

Color

Sub Grey. Never use EXE Pink on this slide.

Japanese example

```
現状：紙の伝票を手入力 → 転記ミスが月20件
```

---

## 3. Issue Analysis

Purpose

Explain why the problem happens, not just that it happens.

Component

Cards

Recommended

3 to 6 cards.

Component rule

3 or fewer items: circle shapes.

4 or more items: square shapes.

Color

Sub Grey.

---

## 4. EXE Proposal

Purpose

Present the "necessary technique" (必殺技) that solves the problem with one button.

Component

Hero

Color

EXE Pink.

Rule

State the solution as a business outcome, not a technology name.

Japanese example

```
スマホで棚をスキャンするだけ。在庫は自動で合う。
```

---

## 5. Structure

Purpose

Show how it works, as a diagram.

Component

Relationship

Rule

Diagram : Text = 6 : 4.

Avoid product names and technical detail the client did not ask for.

---

## 6. Expected Benefits

Purpose

Present measurable improvement.

Component

Numbers

Rule

Headline numbers must use Level 1 typography (three times body size or larger).

Japanese example

```
コスト 20% 削減 / 作業時間 50% 短縮 / 入力ミス 0件
```

Never present a number without its measurement basis in small text.

---

## 7. Implementation Steps

Purpose

Show that the project is controlled and low risk.

Component

Flow

Component rule

3 to 4 steps: horizontal flow.

5 or more steps: vertical flow.

---

## 8. Schedule

Purpose

Make the timing concrete.

Component

Timeline (Gantt)

Rule

Use monthly units. Show the go-live month explicitly.

Color

EXE work in EXE Pink, client-side work in Sub Grey.

---

## 9. Investment

Purpose

Present cost without weakening the proposal.

Component

Cards or Table

Rule

Place cost after benefit, never before.

Separate initial cost and monthly cost.

State clearly what is included and what is not.

Color

Base Black. Do not emphasize cost in EXE Pink.

---

## 10. Next Action

Purpose

Make the next step obvious and easy to say yes to.

Component

Hero

Rule

One action only.

Japanese example

```
次回、御社の伝票を1週間分お預かりして、実データで試作します。
```

---

# Mandatory Layout Rules

These come from `exe_visual_regulation.md` and override any generated preference.

Background

Pure white (#FFFFFF). No gradient, no decorative background.

Page number (ノンブル)

Top center, fixed.

Arabic numerals only.

Never output "Number:", "Page:", "[Nombre: X]" or any label.

Size Level 4 (smallest), color Sub Grey (#D6E4E7).

Margins

40px or more on all four sides.

Ratio

Diagram : Text = 6 : 4.

Icons

Thin line icons only.

Text

Two or three lines per block. Four lines or more must be restructured, not shrunk.

Font

EXE brand font, 100% applied.

File name

`YYYYMMDD_顧客名_案件名_EXE提案書.pdf`

---

# Color Logic

| Element | Color |
|---------|-------|
| Current problem, existing method, competitor, supplement | Sub Grey #D6E4E7 |
| EXE strength, solution, emphasized number, EXE flow | Main Pink #FF6366 |
| Body text, logo | Base Black #1E1C1C |
| Limited accent | Accent Yellow #F8E700 |

Rule

Pink marks value. If everything is pink, nothing is.

Use Pink on no more than one focal element per slide.

---

# Writing Rules

One message per slide.

Business language, not technical language.

Prefer a diagram to a paragraph.

Numbers must be specific. Avoid "significantly" and "greatly".

Never repeat the same explanation on two slides.

---

# AI Generation Rules

Before generating:

1. Identify the client's industry and current operation.

2. Identify the problem in one sentence.

3. Identify the EXE "necessary technique" in one sentence.

4. Select the template.

5. Generate the slide sequence.

6. Select components.

7. Apply the Visual System (`02_VISUAL_SYSTEM.md`).

8. Validate (`06_VALIDATION_SYSTEM.md`) and attach the output specification below.

---

# Output Specification (Validation Table)

The AI must attach this table to every generated proposal.

| 検証項目 | ルール内容 | AI確認 |
| :--- | :--- | :--- |
| **命名規則** | `YYYYMMDD_顧客名_案件名_EXE提案書` 形式か | ✅/❌ |
| **ノンブル表記** | ラベルを排除し、**算用数字のみ**か | ✅/❌ |
| **配置固定** | 背景は白(#FFFFFF)か、ノンブルは上部中央か | ✅/❌ |
| **カラー論理** | 解決策は Pink(#FF6366)、課題は Grey(#D6E4E7)か | ✅/❌ |
| **テキスト量** | 全スライドで説明文が3行以内に収まっているか | ✅/❌ |
| **緩急の指定** | 実績数字をページ内最大サイズ（Level 1）に指定したか | ✅/❌ |
| **余白・比率** | 余白40px、図解：テキスト＝6:4の指示を含めたか | ✅/❌ |
| **必須スライド** | 1・2・4・6・10 がすべて存在するか | ✅/❌ |
| **費用の位置** | 費用スライドが効果スライドより後にあるか | ✅/❌ |
| **次の一手** | 最終スライドの次アクションが1つに絞られているか | ✅/❌ |

Any ❌ must be repaired before output.

---

# Success Criteria

✓ The client recognizes their own situation on slide 2.

✓ The solution on slide 4 is understandable without IT knowledge.

✓ The numbers on slide 6 have a stated basis.

✓ The cost on slide 9 does not arrive before the value.

✓ The next action on slide 10 can be agreed to in one sentence.

The client should finish thinking:

「うちのことをちゃんと分かってくれている。これなら進められる。」
