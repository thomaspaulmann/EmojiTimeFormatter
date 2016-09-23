[![Swift](https://img.shields.io/badge/Swift-3.0-green.svg)](https://swift.org) 
[![Swift Package Manager compatible](https://img.shields.io/badge/SPM-compatible-blue.svg?style=flat)](https://swift.org/package-manager/)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods compatible](https://img.shields.io/badge/CocoaPods-compatible-red.svg?style=flat)](https://cocoapods.org)

# EmojiTimeFormatter

Format your dates/times as emojis 🕟 🕑 🕗

## Description

You can build easy to understand user interfaces with EmojiTimeFormatter or can do funny things like that:

![Screencast](https://raw.githubusercontent.com/PowerOfEmojis/EmojiClock/master/Screencasts/emojiclock-300px.gif)

The example is accessable via [Power of Emojis](https://github.com/PowerOfEmojis/EmojiClock).

## Installation

EmojiTimeFormatter supports multiple methods for installing the library in a project. You can find the latest version in the [release tab](https://github.com/thomaspaulmann/EmojiTimeFormatter/releases/latest). 

**There are some troubles with distributing frameworks that are written in Swift 2.3/3.0. The easiest way to use EmojiTimeFormatter is to use SPM which is already included in Xcode 8.**

### Installation with Swift Package Manager 

To integrate EmojiTimeFormatter into your Xcode project using [Swift Package Manager](https://swift.org/package-manager/), specify it in your `Package.swift` file:

``` Swift
import PackageDescription

let package = Package(
    [...]
    dependencies: [
        .Package(url: "https://github.com/thomaspaulmann/EmojiTimeFormatter.git", majorVersion: XYZ)
    ]
)
```

### Installation with CocoaPods (WIP)

To integrate EmojiTimeFormatter into your Xcode project using [CocoaPods](https://cocoapods.org), specify it in your `Podfile`:

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

target 'TargetName' do
    pod 'EmojiTimeFormatter', '~> X.Y.Z'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
```

Then, run the `pod install` and enjoy your new framework.

### Installation with Carthage

To integrate EmojiTimeFormatter into your Xcode project using [Carthage](https://github.com/Carthage/Carthage), specify it in your `Cartfile`:

```
github "thomaspaulmann/EmojiTimeFormatter" ~> X.Y.Z
```

Run `carthage update --toolchain com.apple.dt.toolchain.XcodeDefault` to build the framework and drag the built EmojiTimeFormatter.framework into your Xcode project. It's important to specify your [toolchain in the Xcode beta builds](https://github.com/Carthage/Carthage/issues/1417).

### Installation without anything

To integrate EmojiTimeFormatter into your Xcode project using nothing but your hands, copy the [Sources](/Sources) folder to your Xcode project. It's only two files and 200 lines of code.

## Usage

You can convert dates to clock face emojis and vice versa.

### Date to Emoji

Create a new `EmojiTimeFormatter`, get the `ClockFaceEmoji` for your `Date` and print it. It's that simple.

``` Swift
let now = Date()
let formatter = EmojiTimeFormatter()
let clockFaceEmoji = formatter.clockFace(from: now)

print("It's \(clockFaceEmoji) o'clock.") // Output: It's 🕢 o'clock.
```

### Emoji to Date

It's also possible to convert a `ClockFaceEmoji` back to a `Date`. Create a new `EmojiTimeFormatter`, get the `Date` for your `ClockFaceEmoji` and print it. It's that simple, again.

``` Swift
let twelveThirty = ClockFaceEmoji.twelveThirty
let formatter = EmojiTimeFormatter()
let date = formatter.date(from: twelveThirty)

print("It's \(date).") // Output: It's 1970-01-01 00:30:00 +0000.
```

Note: Actually it's not a date, it's a time relative to 00:00:00 UTC on 1 January 1970.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
