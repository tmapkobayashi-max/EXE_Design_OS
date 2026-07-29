# EXE Design OS - 06 Validation System

Version: 1.0

---

# Purpose

The Validation System ensures that every proposal generated using the EXE Design OS meets the same quality standards.

Validation is mandatory.

No proposal should be delivered before completing the validation process.

The purpose of validation is to improve understanding, consistency, and client trust.

---

# Validation Workflow

Every proposal must pass the following process.

Proposal Generated

↓

Visual Validation

↓

Content Validation

↓

Narrative Validation

↓

Component Validation

↓

Quality Score

↓

Repair (if required)

↓

Re-validation

↓

Final Output

Never skip validation.

---

# Validation Categories

Every proposal must be evaluated in the following areas.

| Category | Purpose |
|-----------|---------|
| Philosophy | Matches EXE philosophy |
| Narrative | Story is logical |
| Visual | Follows Visual System |
| Components | Correct components selected |
| Content | Information is accurate and concise |
| Readability | Easy to understand |
| Brand | Consistent with EXE identity |

---

# Philosophy Validation

Confirm the proposal:

✓ Explains the client's problem first

✓ Presents a clear future vision

✓ Builds trust

✓ Focuses on business value

✓ Ends with a clear next action

---

# Narrative Validation

Confirm:

✓ Story flows naturally

✓ No missing steps

✓ No repeated information

✓ Each slide supports the next slide

✓ Proposal has a clear beginning, middle, and end

---

# Visual Validation

Confirm:

✓ Paper background (#F7F3EC)

✓ Correct EXE color usage

✓ Official EXE font

✓ Minimum 40px margins

✓ Diagram : Text = 6 : 4

✓ Thin line icons

✓ Medium information density

✓ Consistent spacing

✓ Minimal animation only

---

# Component Validation

Confirm:

✓ One primary component per slide

✓ Correct component selected

✓ No custom layouts

✓ Component improves understanding

✓ Consistent component usage

---

# Content Validation

Confirm:

✓ Text limited to two or three lines

✓ No unnecessary technical jargon

✓ Business-focused language

✓ No duplicated explanations

✓ Key message is immediately clear

---

# Readability Validation

Confirm:

✓ One message per slide

✓ Titles clearly describe the slide

✓ Diagrams easier to understand than paragraphs

✓ Visual hierarchy is obvious

✓ Important information stands out

---

# Brand Validation

Confirm:

✓ EXE philosophy maintained

✓ EXE colors correctly applied

✓ Consistent visual identity

✓ Proposal feels like EXE MATE

Never generate slides that appear generic.

---

# Quality Score

Evaluate each category.

| Score | Result |
|--------|--------|
| 90–100 | Excellent |
| 80–89 | Ready with minor improvements |
| 70–79 | Requires revision |
| Below 70 | Regenerate proposal |

The target score is 90 or higher.

---

# Repair Rules

If validation fails,

repair before output.

Possible repairs include:

- Split overloaded slides
- Replace paragraphs with diagrams
- Improve component selection
- Shorten text
- Improve spacing
- Correct color usage
- Improve visual hierarchy
- Remove unnecessary decoration

Repeat validation until all critical issues are resolved.

---

# AI Self-review

Before completing the proposal,

AI should ask:

Does the client immediately understand the problem?

↓

Does the solution clearly solve that problem?

↓

Is every slide easy to understand?

↓

Would this proposal increase trust?

↓

Would I confidently present this to a client?

If any answer is "No",

repair the proposal before output.

---

# Final Approval Checklist

Before delivery, confirm:

✓ Proposal category identified

✓ Correct template selected

✓ Story is complete

✓ Components correctly selected

✓ Visual System applied

✓ Design rules satisfied

✓ Validation score above 90

✓ Proposal builds trust

✓ Client-ready

Only after all checks are complete may the proposal be delivered.

---

# Continuous Improvement

Every completed proposal should be treated as a learning opportunity.

When feedback is received,

update the Design OS rather than making isolated exceptions.

The Design OS should evolve through controlled improvements,

ensuring that every future proposal benefits from accumulated knowledge.
---

# 2026-07-29 Addendum

The `nakama-1910` project confirmed three practical validation points.

1. A deck may satisfy layout rules and still feel weak if it relies on tidy cards instead of one dominant visual. Validation should reject "card-only" slides when a scene, object, or change should carry the claim.
2. HTML delivery should not rely only on browser print. The viewer should expose a visible PDF action so a client can save or download the matching PDF without guessing the workflow.
3. Terminal display issues can look like mojibake even when the HTML file itself is valid UTF-8. Check file encoding before treating visible text corruption as a source-file defect.

## Extra Visual Checks

- Hero slides are visual-first, not card-first
- Full-bleed illustration slides keep text readable through fade or scrim treatment
- Dense slides with 4 to 5 items still read cleanly at 1920 x 1080

## Extra Final Approval Checks

- The HTML viewer includes a clear PDF save or download path
- The matching PDF is stored in the delivery folder with a corresponding file name
- The final HTML has been checked slide by slide at near-full size
