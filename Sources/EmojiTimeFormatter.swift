//
//  EmojiTimeFormatter.swift
//  EmojiTimeFormatter
//
//  Created by Thomas Paul Mann on 21/08/16.
//  Copyright © 2016 Thomas Paul Mann. All rights reserved.
//

import Foundation

public class EmojiTimeFormatter: Formatter {

    // MARK: - Properties

    private let calendar = Calendar.current

    // MARK: - Formatter

    public override func string(for object: AnyObject?) -> String? {
        // If object is not a date, do nothing.
        guard let date = object as? Date else {
            return nil
        }


        return string(from: date)
    }

    public func string(from date: Date) -> String {
        // Extract hours and minutes.
        let hours = Double(calendar.component(.hour, from: date))
        let minutes = Double(calendar.component(.minute, from: date)) / 60.0

        return string(for: hours + minutes)
    }

    // MARK: - Private

    private func string(for time: Double) -> String {
        let limitedTime = limit(time: time)

        if limitedTime < 1.25 {
            return ClockFaceEmoji.twelve.rawValue
        } else if limitedTime < 1.75 {
            return ClockFaceEmoji.twelveThirty.rawValue
        } else if limitedTime < 2.25 {
            return ClockFaceEmoji.one.rawValue
        } else if limitedTime < 2.75 {
            return ClockFaceEmoji.oneThirty.rawValue
        } else if limitedTime < 3.25 {
            return ClockFaceEmoji.two.rawValue
        } else if limitedTime < 3.75 {
            return ClockFaceEmoji.twoThirty.rawValue
        } else if limitedTime < 4.25 {
            return ClockFaceEmoji.three.rawValue
        } else if limitedTime < 4.75 {
            return ClockFaceEmoji.threeThirty.rawValue
        } else if limitedTime < 5.25 {
            return ClockFaceEmoji.four.rawValue
        } else if limitedTime < 5.75 {
            return ClockFaceEmoji.fourThirty.rawValue
        } else if limitedTime < 6.25 {
            return ClockFaceEmoji.five.rawValue
        } else if limitedTime < 6.75 {
            return ClockFaceEmoji.fiveThirty.rawValue
        } else if limitedTime < 7.25 {
            return ClockFaceEmoji.six.rawValue
        } else if limitedTime < 7.75 {
            return ClockFaceEmoji.sixThirty.rawValue
        } else if limitedTime < 8.25 {
            return ClockFaceEmoji.seven.rawValue
        } else if limitedTime < 8.75 {
            return ClockFaceEmoji.sevenThirty.rawValue
        } else if limitedTime < 9.25 {
            return ClockFaceEmoji.eight.rawValue
        } else if limitedTime < 9.75 {
            return ClockFaceEmoji.eightThirty.rawValue
        } else if limitedTime < 10.25 {
            return ClockFaceEmoji.nine.rawValue
        } else if limitedTime < 10.75 {
            return ClockFaceEmoji.nineThirty.rawValue
        } else if limitedTime < 11.25 {
            return ClockFaceEmoji.ten.rawValue
        } else if limitedTime < 11.75 {
            return ClockFaceEmoji.tenThirty.rawValue
        } else if limitedTime < 12.25 {
            return ClockFaceEmoji.eleven.rawValue
        } else if limitedTime < 12.75 {
            return ClockFaceEmoji.elevenThirty.rawValue
        } else  {
            return ClockFaceEmoji.twelve.rawValue
        }
    }

    private func date(for emoji: ClockFaceEmoji) -> Date {
        let halfHour = TimeInterval(1800) // in seconds

        switch emoji {
        case .twelve:
            return Date(timeIntervalSince1970: 0)
        case .twelveThirty:
            return Date(timeIntervalSince1970: 1 * halfHour)
        case .one:
            return Date(timeIntervalSince1970: 2 * halfHour)
        case .oneThirty:
            return Date(timeIntervalSince1970: 3 * halfHour)
        case .two:
            return Date(timeIntervalSince1970: 4 * halfHour)
        case .twoThirty:
            return Date(timeIntervalSince1970: 5 * halfHour)
        case .three:
            return Date(timeIntervalSince1970: 6 * halfHour)
        case .threeThirty:
            return Date(timeIntervalSince1970: 7 * halfHour)
        case .four:
            return Date(timeIntervalSince1970: 8 * halfHour)
        case .fourThirty:
            return Date(timeIntervalSince1970: 9 * halfHour)
        case .five:
            return Date(timeIntervalSince1970: 10 * halfHour)
        case .fiveThirty:
            return Date(timeIntervalSince1970: 11 * halfHour)
        case .six:
            return Date(timeIntervalSince1970: 12 * halfHour)
        case .sixThirty:
            return Date(timeIntervalSince1970: 13 * halfHour)
        case .seven:
            return Date(timeIntervalSince1970: 14 * halfHour)
        case .sevenThirty:
            return Date(timeIntervalSince1970: 15 * halfHour)
        case .eight:
            return Date(timeIntervalSince1970: 16 * halfHour)
        case .eightThirty:
            return Date(timeIntervalSince1970: 17 * halfHour)
        case .nine:
            return Date(timeIntervalSince1970: 18 * halfHour)
        case .nineThirty:
            return Date(timeIntervalSince1970: 19 * halfHour)
        case .ten:
            return Date(timeIntervalSince1970: 20 * halfHour)
        case .tenThirty:
            return Date(timeIntervalSince1970: 21 * halfHour)
        case .eleven:
            return Date(timeIntervalSince1970: 22 * halfHour)
        case .elevenThirty:
            return Date(timeIntervalSince1970: 23 * halfHour)
        }
    }

    private func limit(time: Double) -> Double {
        if time < 1 {
            // Midnight
            return time + 12
        } else if time > 13 {
            // Afternoon
            return time - 12
        } else {
            // Rest of the day
            return time
        }
    }

}
