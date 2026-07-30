# Deploying `emr_one_shell_web` to the `emrapps-dev` Firebase project

## What this is

`packages/emr_one_shell_web` is configured for Firebase Hosting via:

- `packages/emr_one_shell_web/.firebaserc` — default project alias points at Firebase
  project ID `emrapps-dev` (confirmed via `firebase projects:list`, logged in as
  `a2isoftech@gmail.com`).
- `packages/emr_one_shell_web/firebase.json` — hosting config, serves
  `build/web` as the public dir, with a single-page-app rewrite (`**` -> `/index.html`).

There's only one hosting site on this project (the default one) — no
`hosting.site`/`hosting.target` entries, so `firebase deploy` always goes to the
project's default site.

**Note:** the app's own Firebase config for the `dev` environment
(`lib/firebase_options_dev.dart`) uses Firebase project ID `emrappsdev` (no
hyphen) — a *different* project from the hosting target `emrapps-dev`. This is
existing, intentional-looking setup (not something to "fix"): `emrappsdev` is
where the app's Firebase Auth/Remote Config/etc. live, while `emrapps-dev` is
just where the compiled web bundle is hosted.

## Which entry point to build

Each environment has its own `main_*.dart` in `packages/emr_one_shell_web/lib/`.
For the `dev` environment (matching the `emr one web (dev)` / `emr one web (dev
- release mode)` launch configs in `.vscode/launch.json`), that's
`lib/main_dev.dart`.

## Steps

From the repo root:

```bash
# 1. Make sure workspace deps are current (run after switching branches / pulling)
flutter pub get

# 2. Build the release web bundle for the dev environment
cd packages/emr_one_shell_web
flutter build web --release -t lib/main_dev.dart
```

This produces `packages/emr_one_shell_web/build/web`, which is what
`firebase.json`'s `hosting.public` points at.

```bash
# 3. Deploy (still from packages/emr_one_shell_web, so the local .firebaserc/firebase.json apply)
firebase deploy --only hosting
```

`firebase deploy --only hosting` uses the `default` project alias from
`.firebaserc` (`emrapps-dev`), so no `--project` flag is needed unless you want
to target something else explicitly (`firebase deploy --only hosting --project emrapps-dev`).

## Known gotcha: `doorAccess` l10n key

The first deploy attempt from this repo state failed at the dart2js compile
step with:

```
../emr_one_localisations/lib/emr_one_localisations.dart:94:21:
Error: The getter 'doorAccess' isn't defined for the type 'EmrAppsLocalisations'.
```

Cause: `packages/emr_one_localisations/lib/emr_one_localisations.dart` contains
a **hand-maintained** `byKey(String key)` switch (used by
`EORouteConverter.fromJson` in `emr_one_core` to resolve server-driven
`displayNameKey` values from `routing/emr_apps.json`, e.g. the door-access
module's top-level menu entry which has `"displayNameKey": "doorAccess"`).
That switch had a `'doorAccess' => doorAccess,` entry, but no `"doorAccess"`
key was ever added to `packages/emr_one_localisations/l10n/app_en.arb` — so
the generated `EmrAppsLocalisations` class never had a matching getter. This
is a pre-existing gap (introduced in commit `0fd0432`, unrelated to any
change made during this deployment) — `dart analyze` doesn't catch it because
it wasn't run against the `emr_one_localisations` package itself, and it
doesn't surface in debug-mode `flutter run`; only a release (dart2js) web
build fails on it.

Fixed by adding `"doorAccess": "Door Access"` to `app_en.arb` (and
`"[doorAccess]"` to the `app_zu.arb` placeholder locale), then re-running
`melos l10n` before rebuilding. If this error resurfaces after adding a new
`displayNameKey` to `routing/emr_apps.json`, check that the corresponding key
exists in `app_en.arb` **and** that
`packages/emr_one_localisations/lib/emr_one_localisations.dart`'s `byKey`
switch has a matching case — that file is not auto-generated and must be kept
in sync by hand.

## Prerequisites / gotchas

- **Firebase CLI auth**: must be logged in as an account with access to the
  `emrapps-dev` project. Check with `firebase login:list`; log in with
  `firebase login` if needed. (As of this writing, `a2isoftech@gmail.com` has
  access.)
- **Debug-mode web will not build/run right** for this — always build with
  `--release`. Debug-mode (DDC) is known to hit
  `net::ERR_INSUFFICIENT_RESOURCES` in Chrome on this codebase (see root
  `CLAUDE.md`); this only affects local `flutter run`, not `flutter build`, but
  it's a reminder that `-t lib/main_dev.dart` + `--release` is the combination
  that's actually been verified to work.
- **No hot reload after deploy** — obviously; this is a full static rebuild +
  upload each time.
- **`main_trimmed` branch scope**: this branch only has the door-access module
  wired up (see root `CLAUDE.md`). Building/deploying from this branch serves a
  door-access-only build of the app, not the full EMRApps suite.
- Build output (`build/web`) is git-ignored; nothing about the build artifact
  itself needs to be committed. Only source changes do.

## Verifying the deploy

`firebase deploy --only hosting` prints the live Hosting URL on success
(`https://emrapps-dev.web.app` / `https://emrapps-dev.firebaseapp.com` by
Firebase's default naming for a project ID with no custom domain configured).
Open it and confirm the app loads and the login screen renders — that
confirms the Firebase config, hosting rewrite, and static asset paths are all
correct end-to-end.
