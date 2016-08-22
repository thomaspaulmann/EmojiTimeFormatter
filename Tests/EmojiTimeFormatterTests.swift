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

        XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelve.rawValue,
                  "\(formatter.string(from: minutes)) is not correct for \(minutes)")

        // 12 AM

        for _ in 0..<14 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelve.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelveThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 1 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.one.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.oneThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 2 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.two.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twoThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 3 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.three.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.threeThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 4 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.four.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.fourThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 5 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.five.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.fiveThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 6 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.six.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.sixThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 7 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.seven.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.sevenThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 8 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eight.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eightThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 9 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.nine.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.nineThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 10 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.ten.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.tenThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 11 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eleven.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.elevenThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 12 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelve.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelveThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 1 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(for: minutes) == ClockFaceEmoji.one.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.oneThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 2 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.two.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twoThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 3 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.three.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.threeThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 4 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.four.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.fourThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 5 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.five.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.fiveThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 6 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.six.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.sixThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 7 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.seven.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.sevenThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 8 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eight.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eightThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 9 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.nine.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.nineThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        // 10 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.ten.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.tenThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }
        
        // 11 PM
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eleven.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.elevenThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }
        
        // 12 AM
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelve.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelveThirty.rawValue,
                      "\(formatter.string(from: minutes)) is not correct for \(minutes)")
        }
    }

    // MARK: - Emoji To Date

    func testEmojis() {
        XCTAssert(formatter.date(from: .twelve) == Date(timeIntervalSince1970: 0))
        XCTAssert(formatter.date(from: .twelveThirty) == Date(timeIntervalSince1970: 1800))

        // ...
    }

}
