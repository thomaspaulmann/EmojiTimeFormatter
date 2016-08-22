# EmojiTimeFormatter

Format your dates/times as emojis 🕟 🕑 🕗

## Installation

EmojiTimeFormatter supports multiple methods for installing the library in a project.

### Installation with Swift Package Manager 

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

To integrate EmojiTimeFormatter into your project using Swift Packager Manager, specify it in your `Package.swift` file:

``` Swift
import PackageDescription

let package = Package(
    [...]
    dependencies: [
        .Package(url: "https://github.com/thomaspaulmann/EmojiTimeFormatter.git", majorVersion: 1)
    ]
)
```

## Usage

You can convert dates to clock face emojis and vice versa.

### Date to Emoji

Create a new `EmojiTimeFormatter`, get the `ClockFaceEmoji` for your `Date` and print it. It's that simple.

``` Swift
let now = Date()
let formatter = EmojiTimeFormatter()
let clockFaceEmoji = formatter.clockFace(from: now)

print("It's \(clockFaceEmoji) o'clock.")
```

### Emoji to Date

It's also possible to convert a `ClockFaceEmoji` back to a `Date`. Create a new `EmojiTimeFormatter`, get the `Date` for your `ClockFaceEmoji` and print it. It's that simple, again.

``` Swift
let twelveThirty = ClockFaceEmoji.twelveThirty
let formatter = EmojiTimeFormatter()
let date = formatter.date(from: twelveThirty)

print("It's \(date).")
```

Note: Actually it's not a date, it's a time relative to 00:00:00 UTC on 1 January 1970.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
