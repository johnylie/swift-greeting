# ``SwiftGreeting``

SwiftGreeting is a lightweight library for generating time-based greetings
in **English and Indonesian**, without using the localization system.

It is designed to be simple, fast, and easy to integrate into iOS, macOS,
or Swift Package projects.

---

## Overview

SwiftGreeting automatically selects a greeting based on the current time:

| Time | English | Indonesian |
|-----|--------|------------|
| 00 - 11 | Good morning | Selamat pagi |
| 12 - 17 | Good afternoon | Selamat siang |
| 18 - 23 | Good evening | Selamat malam |

The greeting can optionally include the user's first name.

---

## Usage

### English Greeting

```swift
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
