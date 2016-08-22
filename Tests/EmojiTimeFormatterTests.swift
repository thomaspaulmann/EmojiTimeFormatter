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

        XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelve)

        // 12 AM

        for _ in 0..<14 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelve)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelveThirty)
        }

        // 1 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.one)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.oneThirty)
        }

        // 2 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.two)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twoThirty)
        }

        // 3 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.three)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.threeThirty)
        }

        // 4 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.four)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.fourThirty)
        }

        // 5 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.five)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.fiveThirty)
        }

        // 6 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.six)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.sixThirty)
        }

        // 7 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.seven)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.sevenThirty)
        }

        // 8 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eight)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eightThirty)
        }

        // 9 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.nine)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.nineThirty)
        }

        // 10 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.ten)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.tenThirty)
        }

        // 11 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eleven)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.elevenThirty)
        }

        // 12 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelve)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelveThirty)
        }

        // 1 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.one)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.oneThirty)
        }

        // 2 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.two)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twoThirty)
        }

        // 3 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.three)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.threeThirty)
        }

        // 4 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.four)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.fourThirty)
        }

        // 5 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.five)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.fiveThirty)
        }

        // 6 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.six)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.sixThirty)
        }

        // 7 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.seven)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.sevenThirty)
        }

        // 8 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eight)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eightThirty)
        }

        // 9 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.nine)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.nineThirty)
        }

        // 10 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.ten)
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.tenThirty)
        }
        
        // 11 PM
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.eleven)
        }
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.elevenThirty)
        }
        
        // 12 AM
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelve)
        }
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.clockFace(from: minutes) == ClockFaceEmoji.twelveThirty)
        }
    }

    // MARK: - Emoji To Date

    func testEmojis() {
        XCTAssert(formatter.date(from: .twelve) == Date(timeIntervalSince1970: 0))
        XCTAssert(formatter.date(from: .twelveThirty) == Date(timeIntervalSince1970: 1800))

        // ...
    }

}
