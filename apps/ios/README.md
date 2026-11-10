# Trailmap iOS app

SwiftUI client for the Trailmap platform API (password login stub; APNs push wiring is TODO).

The Xcode target sources live under `AssessmentApp/` (legacy folder name). Product display name and bundle id use **Trailmap** / `com.trailmap.app`.

## Prerequisites

- Xcode 15+
- Platform API running locally (`http://127.0.0.1:8000`) or staging URL

## Generate / open Xcode project

With [XcodeGen](https://github.com/yonaskolb/XcodeGen):

```bash
cd apps/ios
xcodegen generate
open TrailmapApp.xcodeproj   # or AssessmentApp.xcodeproj if not renamed locally
```

Manual setup:

1. Create an iOS App project.
2. Product name `Trailmap`, bundle id `com.trailmap.app`.
3. Replace generated sources with the files under `AssessmentApp/`.

## API base URL

Default base URL is in `AssessmentApp/Config/ApiConfig.swift` (create if missing from template).

## Push alerts (stub)

Configure APNs keys in `Push/PushConfig.swift`. Route notification payloads through `Push/AlertReceivedHandler.onAlertReceived`.

## Layout

```
AssessmentApp/
  AssessmentAppApp.swift   @main entry
  LoginView.swift          Password login
  Push/                    APNs stubs
```
