Here are 100, all Mac-friendly, mostly CLI, each scoped to an evening or less. Grouped so you can structure the repo folders the same way. Rough difficulty is implied by order within each group (easy → spicier).

Files & desktop chores

Downloads folder janitor — sort files into subfolders by type/age, run via launchd nightly
Screenshot renamer — watch Desktop, rename Screenshot 2026... to shot-{app-name}-{n}.png using frontmost app
Duplicate file finder — hash-based, with a dry-run mode and a "move to /dupes" action
Desktop zero — anything on Desktop older than 7 days gets archived to ~/Attic/{month}/
Big-file hunter — top 50 largest files/folders, ncdu-style but as a one-shot report
Old node_modules reaper — find node_modules/venv/.tox dirs untouched >30 days, report reclaimable GB, delete on confirm
Auto-unzip-and-clean — watch Downloads, extract archives, trash the .zip
PDF merger/splitter CLI — pdfkit merge a.pdf b.pdf, wraps pypdf
Image batch resizer/compressor — drop folder in, get web-ready images out
HEIC → JPG converter watching your AirDrop landing zone
mdfind wrapper — fuzzy Spotlight search from terminal with fzf picker that opens the file
Clipboard history daemon — log clipboard to SQLite, fzf to re-copy old entries
Clipboard cleaner — strip tracking params (utm_*, fbclid) from any URL the moment it's copied
Text-expander lite — watch clipboard for ;sig, ;addr style triggers, replace with snippets
Wallpaper rotator — pull daily image (NASA APOD / Unsplash) and set via osascript
Screen-time snapshotter — log frontmost app every 30s to SQLite, weekly "where did my time go" chart
Auto file-away for invoices — watch Downloads for PDFs matching "invoice/receipt", file into ~/Finance/{year}/
Folder diff reporter — compare two directory trees, HTML report of added/removed/changed
Disk-space canary — launchd job that notifies when free space <10%
trash improvements — safe-rm that moves to Trash with an undo log
Bulk renamer with regex preview — show before/after table, confirm, rename
EXIF scrubber — strip GPS/metadata from images before you share them
Photo deduper by perceptual hash (not just byte hash) — catches resized copies
Font previewer — render every installed font as a sample-sentence PNG contact sheet
Auto-backup dotfiles — detect changes to ~/.zshrc, .gitconfig etc., commit to a private repo

Dev workflow & GitHub
26. Repo readme-stats badge updater — cron job that refreshes stats in your profile README
27. git standup — what did I commit yesterday, across all repos in ~/code
28. New-project scaffolder — mkproj name → git init, README, .gitignore, license, first commit, gh repo create
29. Branch janitor — list local branches merged/gone-on-remote, bulk delete with confirm
30. WIP auto-committer — commits to a wip/ branch every 30 min while you work (crash insurance)
31. PR review queue notifier — GitHub API poll, macOS notification when you're requested
32. Issue-to-todo sync — pull your assigned GitHub issues into a local TODO.md each morning
33. Stars organizer — export your GitHub stars to a categorized markdown "awesome" list (this one gets stars itself)
34. License checker — scan a project's deps and report licenses
35. Commit-message linter hook — enforce conventional commits locally
36. gh-clone-all — clone/pull every repo of a user/org in parallel
37. Dead-code detector wrapper — run vulture/ts-prune, pretty report
38. Dependency freshness report — how outdated is each dep, in one table across all your repos
39. Port killer — killport 3000 finds and kills whatever holds a port
40. Env-file auditor — find .env files anywhere in ~/code, check none are tracked by git
41. Secret scanner pre-push hook — regex for API-key shapes before code leaves your machine
42. Local CI — file-watcher that runs tests on save and shows red/green in the menu bar (via SwiftBar)
43. README table-of-contents generator/updater
44. Code screenshot generator — pipe a snippet, get a carbon-style PNG for posting
45. GitHub contribution graph in the terminal — render your green squares as ASCII
46. Repo health checker — does it have a README, license, CI, tests? Score every repo you own
47. uses page generator — parse your Brewfile + VS Code extensions into a published USES.md
48. Brewfile auto-sync — dump brew bundle daily, commit if changed
49. SSH config manager — fzf picker over hosts, add/edit entries interactively
50. Snippet manager — save shell one-liners with tags, fzf recall, auto-paste
51. Changelog generator from conventional commits since last tag
52. GitHub notification triage TUI — inbox zero for the notifications API
53. Auto-labeler for your own issues — tiny classifier or keyword rules via API
54. git undo — human-friendly wrapper for the ten most common "oh no" recoveries
55. Cross-repo TODO/FIXME collector — scan all repos, aggregate into one dashboard with age

Web, social & content
56. HN front-page digest — top 10 with comment counts, emailed or notified at 9am
57. Reddit saved-posts exporter — dump your saved posts to markdown before they vanish
58. YouTube → transcript → summary CLI — paste URL, get bullet summary (yt-dlp + an LLM call)
59. Watch-later downloader — yt-dlp your playlist for offline, cron weekly
60. RSS-to-digest — aggregate feeds into one daily markdown brief
61. Price watcher — scrape a product page daily, notify on drop
62. Back-in-stock checker — same pattern, different selector
63. Website change detector — hash a page section, diff + notify on change
64. Dead-link checker for your blog/readmes
65. X/Twitter bookmark exporter — Playwright, save bookmarks to markdown with media
66. Thread unroller — given a tweet URL, save the full thread as clean markdown
67. Newsletter declutterer — IMAP script that auto-archives newsletters into a weekly digest email
68. Unsubscribe assistant — scan inbox for List-Unsubscribe headers, one-click purge list
69. Wayback saver — CLI that submits a URL to archive.org and returns the snapshot link
70. Read-later to Kindle — send an article URL, get cleaned EPUB delivered
71. Article → audio — pipe a URL through readability + macOS say (or a TTS API) to an mp3
72. Speedtest logger — hourly speedtest to SQLite, monthly "is my ISP lying" chart
73. Wifi network logger — track which networks you join and when (where do I actually work?)
74. Lyrics/now-playing fetcher — current Spotify/Apple Music track via AppleScript, fetch lyrics in terminal
75. Spotify playlist backup — export all playlists to CSV/JSON monthly
76. Weather in menu bar — SwiftBar script with your own rules ("bike day?")
77. Domain availability checker — feed it name ideas, get a table
78. Job-board watcher — scrape a careers page for new postings matching keywords
79. LLM CLI clipboard assistant — fix, summarize, translate commands that act on clipboard contents
80. Meme/OG-image generator — text in, branded social card PNG out (Pillow)

Daily life & glue
81. Morning brief script — weather + calendar (icalBuddy) + top HN + your GitHub issues, one terminal page or notification
82. Focus mode toggle — one command: quits Slack/mail, enables DND via Shortcuts CLI, starts a timer
83. Pomodoro in the menu bar — SwiftBar + notifications
84. Meeting-in-5 warning — read calendar, loud notification with the join link, auto-open Zoom
85. Auto "shut down the day" — at 6pm, commit WIP everywhere, close work apps, log the day's summary
86. Break reminder that actually works — locks the screen for 60s every hour (aggressive mode optional)
87. Water/stretch nudger with escalating snark
88. Expense logger — spent 14.50 lunch appends to CSV, monthly chart auto-generated
89. Subscription tracker — CSV of subs + renewal dates, notify 3 days before each renewal
90. Currency/stock ticker CLI for the pairs you actually care about
91. Countdown board — days until deadlines/trips, printed in every new terminal session
92. Habit tracker CLI — did meditate, streaks rendered as a GitHub-style graph in terminal
93. Journal prompt — nightly notification, one-line answer appended to a dated markdown journal
94. Sleep guard — pmset-based report of when your Mac was actually in use late at night
95. Battery health logger — daily cycle-count/capacity log, chart degradation over time
96. Auto-pause music when headphones disconnect / on lock (Hammerspoon)
97. QR code generator CLI — text/URL in, QR in terminal (ASCII) and PNG out
98. Text-to-calendar — cal "lunch with sam friday 1pm" parses and creates the event
99. Package tracker — check tracking numbers, notify on status change
100. "Where's my phone" — trigger Find My sound via Shortcuts CLI