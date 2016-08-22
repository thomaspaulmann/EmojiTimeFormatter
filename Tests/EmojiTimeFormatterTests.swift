//
//  EmojiTimeFormatterTests.swift
//  EmojiTimeFormatterTests
//
//  Created by Thomas Paul Mann on 21/08/16.
//  Copyright © 2016 Thomas Paul Mann. All rights reserved.
//

import XCTest
@testable import EmojiTimeFormatter

class EmojiTimeFormatterTests: XCTestCase {

    let hour = TimeInterval(3600)
    let minute = TimeInterval(60)

    let formatter = EmojiTimeFormatter()

    // MARK: - Example

    func testExampleDateToEmoji() {
        let now = Date()
        let formatter = EmojiTimeFormatter()
        let clockFaceEmoji = formatter.clockFace(from: now)

        print("It's \(clockFaceEmoji) o'clock.")
    }

    func testExampleEmojiToDate() {
        let twelveThirty = ClockFaceEmoji.twelveThirty
        let formatter = EmojiTimeFormatter()
        let date = formatter.date(from: twelveThirty)

        print("It's \(date).")
    }

    // MARK: - Input

    func testInvalidObjects() {
        XCTAssert(formatter.string(for: Calendar.current) == nil)
        XCTAssert(formatter.getObjectValue(nil, for: "Whatever you want", errorDescription: nil) == false)
    }

    func testValidObjects() {
        XCTAssert(formatter.string(for: Date()) != nil)
        XCTAssert(formatter.getObjectValue(nil, for: ClockFaceEmoji.twelve.rawValue, errorDescription: nil) == true)
    }

    // MARK: - Date to Emoji

    func testTwentyFourHours() {
        var minutes = Date(timeIntervalSince1970: 0)

        XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelve,
                  "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")

        // 12 AM

        for _ in 0..<14 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelve,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelveThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 1 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.one,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.oneThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 2 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.two,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twoThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 3 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.three,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.threeThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 4 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.four,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.fourThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 5 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.five,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.fiveThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 6 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.six,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.sixThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 7 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.seven,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.sevenThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 8 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eight,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eightThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 9 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.nine,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.nineThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 10 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.ten,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.tenThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 11 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eleven,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.elevenThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 12 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelve,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelveThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 1 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.one,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.oneThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 2 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.two,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twoThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 3 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.three,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.threeThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 4 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.four,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.fourThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 5 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.five,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.fiveThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 6 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.six,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.sixThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 7 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.seven,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.sevenThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 8 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eight,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eightThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 9 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.nine,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.nineThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        // 10 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.ten,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.tenThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }
        
        // 11 PM
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eleven,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.elevenThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }
        
        // 12 AM
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelve,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelveThirty,
                      "\(formatter.clockFace(from: minutes)) is not correct for \(minutes)")
        }
    }

    // MARK: - Emoji To Date

    func testEmojis() {
        XCTAssert(formatter.date(from: .twelve) == Date(timeIntervalSince1970: 0))
        XCTAssert(formatter.date(from: .twelveThirty) == Date(timeIntervalSince1970: 1800))

        // ...
    }

}
