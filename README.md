# INHYLO Tablet UI Starter

A responsive Flutter starter for the INHYLO driver tablet experience. The home page is a developer dashboard with links to the screen routes. Those routes currently show labeled placeholders, ready to be replaced with finished screens.

## Requirements

- [Git](https://git-scm.com/downloads)
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (includes Dart)
- Google Chrome, for running the web app locally

After installing Flutter, make sure `flutter` and `dart` are available in your terminal. Check with:

```sh
flutter --version
dart --version
flutter doctor
```

If Flutter is installed but not on `PATH`, use the full path to `flutter.bat` in PowerShell, such as `C:\path\to\flutter\bin\flutter.bat`.

## Clone and set up

Replace `<repository-url>` with this project's Git URL:

```sh
git clone <repository-url>
cd inhylo_flutter_starter
flutter pub get
```

`flutter pub get` downloads the dependencies declared in `pubspec.yaml`.

## Run in Chrome

```sh
flutter run -d chrome
```

Flutter opens the app in Chrome and keeps a local development server running in the terminal. Leave the terminal open while using the app. Press `q` in that terminal to stop the app. If Chrome is not listed as an available device, check `flutter doctor` and make sure Chrome is installed.

To run on another available device, list devices and select one:

```sh
flutter devices
flutter run -d <device-id>
```

## Validate changes

Run these commands from the project root:

```sh
dart format lib test
flutter analyze
flutter test
```

## Project overview

- `lib/main.dart` starts the app.
- `lib/app.dart` configures the app theme and router.
- `lib/core/router/` defines the route paths and `go_router` setup.
- `lib/core/theme/` contains shared colors, spacing, typography, and theme styles.
- `lib/features/developer_dashboard/` contains the route index shown at `/`.
- `lib/pages/` contains placeholder screen data, the placeholder page, and not-found UI.
- `lib/shared/layouts/` and `lib/shared/widgets/` contain reusable tablet layouts and UI components.
- `test/` contains widget and route tests.

## Routes

| Route | Screen |
| --- | --- |
| `/` | Developer dashboard |
| `/t1a`–`/t1c` | Link this tablet |
| `/t2a`–`/t2e` | Download ads |
| `/t3a`–`/t3c` | Go active |
| `/t4a`–`/t4e` | Driver menu |

The numbered routes currently render placeholders. To implement a screen, provide its HTML (or a clear design reference), any required images, icons, and fonts, and the interactions it needs. The screen can then be built using the shared theme and layout components.
