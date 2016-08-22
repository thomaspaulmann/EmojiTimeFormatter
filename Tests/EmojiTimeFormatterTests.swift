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

    func testInvalidObject() {
        XCTAssert(formatter.string(for: Calendar.current) == nil)
    }

    func testValidObject() {
        XCTAssert(formatter.string(for: Date()) != nil)
    }

    // MARK: - Output

    func testTwentyFourHours() {
        var minutes = Date(timeIntervalSince1970: 0)

        // 1 AM

        XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.one.rawValue,
                  "Emoji is not correct for \(minutes)")

        for _ in 0..<14 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.one.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.oneThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 2 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.two.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twoThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 3 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.three.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.threeThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 4 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.four.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.fourThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 5 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.five.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.fiveThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 6 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.six.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.sixThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 7 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.seven.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.sevenThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 8 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eight.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eightThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 9 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.nine.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.nineThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 10 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.ten.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.tenThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 11 AM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eleven.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.elevenThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 12 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelve.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelveThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 1 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(for: minutes) == ClockFaceEmoji.one.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.oneThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 2 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.two.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twoThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 3 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.three.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.threeThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 4 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.four.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.fourThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 5 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.five.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.fiveThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 6 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.six.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.sixThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 7 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.seven.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.sevenThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 8 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eight.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eightThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 9 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.nine.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.nineThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        // 10 PM

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.ten.rawValue,
                      "Emoji is not correct for \(minutes)")
        }

        for _ in 0..<30 {
            minutes.addTimeInterval(minute)

            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.tenThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }
        
        // 11 PM
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.eleven.rawValue,
                      "Emoji is not correct for \(minutes)")
        }
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.elevenThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }
        
        // 12 AM
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelve.rawValue,
                      "Emoji is not correct for \(minutes)")
        }
        
        for _ in 0..<30 {
            minutes.addTimeInterval(minute)
            
            XCTAssert(formatter.string(from: minutes) == ClockFaceEmoji.twelveThirty.rawValue,
                      "Emoji is not correct for \(minutes)")
        }
    }

    func testTwentyFourSeven() {
        for _ in 0..<7 {
            testTwentyFourHours()
        }
    }
    
}
