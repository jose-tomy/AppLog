# AppLog

A lightweight, generic wrapper around Apple's `OSLog` for unified logging in iOS and macOS apps.

## Features

- **Generic & Reusable**: Decoupled from any specific app domain.
- **Simple API**: Static accessors for distinct log levels (`debug`, `info`, `warning`, `error`, `fault`).
- **OSLog Integration**: Built on top of Apple's unified logging system.
- **Customizable**: Override the default logger if needed.

## Requirements

- iOS 14.0+
- macOS 11.0+
- Swift 5.5+

## Installation

### Swift Package Manager

Add `AppLog` to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/yourusername/AppLog.git", from: "1.0.0")
]
```

## Usage

Import the module and use the static `Log` methods anywhere in your app.

```swift
import AppLog

// 1. Simple logging
Log.debug("Fetching user data...")
Log.info("User logged in successfully")
Log.warning("Network latency is high")
Log.error("Failed to parse JSON")
Log.fault("Database corruption detected")
```

### Custom Subsystem

By default, `AppLog` uses your app's bundle identifier as the subsystem. If you want to customize it:

```swift
// In your app launch code (e.g., AppDelegate or @main)
let myLogger = SystemLogger(subsystem: "com.myapp.networking", category: "API")
Log.logger = myLogger
```

## License

This project is licensed under the MIT License.
