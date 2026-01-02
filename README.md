# SwiftGreeting 👋

SwiftGreeting is a lightweight Swift package for generating
time-based greetings in **English and Indonesian** without using
the localization system.

Perfect for iOS, macOS, and Swift Package projects that need
simple greeting logic.

---

## Features

- ⏰ Time-based greetings
- 🌍 Supports English & Indonesian
- 👤 Optional user name
- 🚀 Lightweight & fast
- ❌ No localization files required

---

## Installation

### Swift Package Manager (Xcode)

1. Open your project in Xcode
2. Go to **File → Add Package Dependencies**
3. Enter the repository URL:


```swift
https://github.com/johnylie/swift-greeting.git
```

4. Select the version and click **Add Package**

---

## Usage

### English Greeting

```swift
import SwiftGreeting

let greeting = SwiftGreeting(
 language: .english,
 firstName: "Swift"
)

print(greeting.greetingTitle)
```

Output:
```swift
Good Morning, Swift
```

### Indonesia Greeting

```swift
import SwiftGreeting

let greeting = SwiftGreeting(
 language: .indonesia,
 firstName: "Swift"
)

print(greeting.greetingTitle)
```

Output:
```swift
Selamat Pagi, Swift
```
