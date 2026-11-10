# Trailmap Android app

Kotlin + Jetpack Compose mobile client for the Trailmap platform API (password login stub; FCM push wiring is TODO).

## Prerequisites

- Android Studio Ladybug or newer
- JDK 17
- Platform API reachable from the emulator (`10.0.2.2:8000` maps to host `localhost:8000`)

## Open the project

1. Android Studio → **Open** → select `apps/android/`.
2. Let Gradle sync finish.
3. Run on an emulator or device.

## API base URL

Default base URL is set in `app/src/main/java/com/trailmap/app/config/ApiConfig.kt`:

```kotlin
const val BASE_URL = "http://10.0.2.2:8000"
```

Override at build time with `API_BASE_URL` in `gradle.properties` if needed.

## Push alerts (stub)

`AlertReceivedHandler` defines the channel and a single entry point for alert delivery. Wire FCM → `onAlertReceived` when credentials exist.

## Layout

```
app/src/main/java/com/trailmap/app/
  TrailmapApp.kt          Application entry
  MainActivity.kt         Compose host
  config/ApiConfig.kt     API base URL
  push/                   Alert channel + handler stubs
  ui/login/LoginScreen.kt Password login shell
  ui/theme/Theme.kt       Material 3 theme
```
