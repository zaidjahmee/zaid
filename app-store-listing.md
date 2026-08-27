# App Store Connect — Listing Draft

Fill in the bracketed parts, then paste into App Store Connect when you set up the app record.

## App name
Ledger — Shift & Sales Tracker
(Or shorter, e.g. just "Ledger", if that name is taken in the App Store — check first.)

## Subtitle (30 characters max)
Inventory, cash & shifts

## Category
Primary: Business
Secondary: Productivity

## Description
Ledger is a simple daily tracker for [FILL IN YOUR BUSINESS TYPE] with multiple store
locations. Each day, staff log inventory counts, cash/card collected, and employee shifts —
Ledger calculates expected revenue, flags any cash shortages or overages, and tracks payroll
automatically.

Features:
- Daily inventory counts with automatic sold/revenue calculation
- Cash reconciliation (expected vs. collected, flags shortages)
- Employee shift & payroll logging
- Multiple store support with per-store history
- Weekly totals across all stores
- Works offline, syncs automatically across devices when back online

This is an internal tool for [FILL IN YOUR BUSINESS NAME] staff.

## Keywords (100 characters max, comma separated)
inventory,sales,cash,shift,payroll,tracker,retail,store,reconciliation,employee

## Support URL
[FILL IN — can be an email-based page, or a simple contact page]

## Privacy Policy URL
[FILL IN — host privacy.html somewhere, e.g. https://yourdomain.com/privacy.html]

## Age rating
4+ (no objectionable content) — answer "No" to all content questions in App Store Connect.

## App Privacy (data collection disclosure in App Store Connect)
When asked "Do you collect data from this app," answer yes, and disclose:
- Contact Info: Name (employee name entered in shifts) — linked to user: your call, but
  typically "Yes" since it's tied to a specific staff member — used for App Functionality only,
  not used for tracking.
- Financial Info: none collected from the *user of the device* (the pay/cash figures are
  business records, not personal financial info about the app user, but Apple's category
  definitions can be picky here — when in doubt, disclose it under a relevant category rather
  than omitting it).

## Screenshots needed
Apple requires screenshots sized for specific device classes. Your current screenshots
(1080x1920 and 1920x1080) don't match Apple's required iPhone sizes. You'll need at minimum:
- 6.9" display: 1320 x 2868 px (or 1290 x 2796)
- 6.5" display: 1242 x 2688 px (or 1284 x 2778)
Easiest way to get these: open the app in Safari on an actual iPhone (or the iOS Simulator)
at those screen sizes and take fresh screenshots — don't just stretch the existing ones.

## Build notes
- This app is a wrapped PWA (via PWABuilder) — see the earlier setup steps for generating
  the Xcode project.
- Uses Supabase for cloud sync — make sure SUPABASE_URL / SUPABASE_ANON_KEY in index.html
  are set to your production project before building, not left as placeholders.
