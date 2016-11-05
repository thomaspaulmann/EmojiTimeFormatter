//
//  EmojiTimeFormatter.swift
//  EmojiTimeFormatter
//
//  Created by Thomas Paul Mann on 21/08/16.
//  Copyright © 2016 Thomas Paul Mann. All rights reserved.
//

import Foundation

open class EmojiTimeFormatter: Formatter {

    // MARK: - Properties

    fileprivate let calendar = Calendar.autoupdatingCurrent

    // MARK: - Formatter

    open override func string(for object: Any?) -> String? {
        // If object is not a date, do nothing.
        guard let date = object as? Date else {
            return nil
        }

        return clockFace(from: date).rawValue
    }

    open override func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?,
                                        for string: String,
                                        errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool {
        // If argument is not a clock face emoji, set error message and return false.
        guard let clockFaceEmoji = ClockFaceEmoji(rawValue: string) else {
            error?.pointee = "Argument is not a valid clock face emoji."
            return false
        }

        obj?.pointee = date(for: clockFaceEmoji) as AnyObject

        return true
    }

    // MARK: - Typesafety first

    open func clockFace(from date: Date) -> ClockFaceEmoji {
        // Extract hours and minutes.
        let hours = Double(calendar.component(.hour, from: date))
        let minutes = Double(calendar.component(.minute, from: date)) / 60.0

        return string(for: hours + minutes)
    }

    open func date(from emoji: ClockFaceEmoji) -> Date {
        return date(for: emoji)
    }

    // MARK: - Private

    fileprivate func string(for time: Double) -> ClockFaceEmoji {
        let index = Int(round((time - 0.5) * 2 + 23)) % 24
        
        return ClockFaceEmoji.all[index]
    }

    fileprivate func date(for emoji: ClockFaceEmoji) -> Date {
        let halfHour = TimeInterval(1800) // in seconds
        let secondsSince1970 = Double(ClockFaceEmoji.all.index(of: emoji)!) * halfHour

        return Date(timeIntervalSince1970: secondsSince1970)
    }

}
