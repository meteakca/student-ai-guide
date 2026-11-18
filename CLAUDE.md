# Student AI Guide (site)

Public student guide to AI use, live at https://meteakca.github.io/student-ai-guide/ (repo `meteakca/student-ai-guide`, branch `main`, Pages from root).

## Layout

- `guide.html` is the source. It is also the claude.ai preview (https://claude.ai/artifact/1n1Di3UHMna6zV2WxKqSAy), so it has no `<!doctype>`/`<head>`/`<body>` and is git-ignored.
- `index.html` is generated from `guide.html` for Pages. Never edit it by hand. Rebuild it by wrapping `guide.html` in a doctype/head/body with a `color-scheme: light` meta (see the command in the session that built it, or reproduce: head = charset + viewport + color-scheme meta + everything up to `</style>`; body = the rest).
- Content source of truth and decisions: `../student-ai-guide.md` (draft copy, quiz, acknowledgment). Change the wording there and in `guide.html` together.

## Conventions

- Footer credits "Created by Mete Akcaoglu" (linked to meteakcaoglu.com) and says the guide is not an official Georgia Southern publication, so the Code governs (2026-11-17). The PDFs carry no credit, by choice. No license notice; before adding CC BY in response to a request to adapt the guide, check the University System of Georgia's IP rules.
- Department-neutral: no LTHD references, and wording that fits undergraduate courses (decided 2026-11-17; may become a COE tool).
- Light theme only, off-white background, navy and gold. This is the student-facing look, separate from Mete's Swiss brand. Since 2026-11-18 it follows a printed-handbook style. Headings and quiz questions are in Newsreader 600, and everything else is in Atkinson Hyperlegible Next. Corners are 3–4px. There are no pills, chips, or all-caps labels. AI levels shade the whole table cell. At ≥1240px the page sits on a paper column with a two-tone surround, as on meteakcaoglu.com. Public Sans was dropped because it read as a generic AI-built site.
- A welcome view (`#vIntro`, "About This Guide") opens on every visit. "Start the guide" leads to section 1, and Back on section 1 returns to it (2026-11-18). Sections 1–2 are Doing the Work Yourself and Limits of AI, moved to the front the same day; quiz `s:` values are 1-based section numbers.
- Guide sections are equal-height slides with a sticky Back/Next bar; the quiz is one question per screen and unlocks after the last slide.
- Section list: a left rail of headings at ≥1180px; narrower screens show "Section N of 10 · Title". Quiz "Review section" labels read the slide h2s, so a renamed heading needs no JS change.
- Counting (2026-11-18): GoatCounter (`gsu-ai-guide.goatcounter.com`) logs page views plus one event per certificate download at path `certificate`. Since 2026-11-18 (later) no course number is sent either: everything the student types stays on the device, and the welcome screen, certificate form, and footer say so. Earlier rows at `certificate/<COURSE>` are from before that change. Ad blockers cause undercounting.
- Certificate and guide PDFs are made in the browser with jsPDF 2.5.1 (cdnjs). Downloads do not work in the claude.ai preview; test on the live site or with Playwright.
- After any change: syntax-check the script (`node --check` on the extracted `<script>`), rebuild `index.html`, commit, push. Commits end with the Co-Authored-By line.
