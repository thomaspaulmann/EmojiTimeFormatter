//
//  Time.swift
//  EmojiTimeFormatter
//
//  Created by Thomas Paul Mann on 21/08/16.
//  Copyright © 2016 Thomas Paul Mann. All rights reserved.
//

public enum ClockFaceEmoji: String {

    // Whole

    case one = "🕐"
    case two = "🕑"
    case three = "🕒"
    case four = "🕓"
    case five = "🕔"
    case six = "🕕"
    case seven = "🕖"
    case eight = "🕗"
    case nine = "🕘"
    case ten = "🕙"
    case eleven = "🕚"
    case twelve = "🕛"

    // Half

    case oneThirty = "🕜"
    case twoThirty = "🕝"
    case threeThirty = "🕞"
    case fourThirty = "🕟"
    case fiveThirty = "🕠"
    case sixThirty = "🕡"
    case sevenThirty = "🕢"
    case eightThirty = "🕣"
    case nineThirty = "🕤"
    case tenThirty = "🕥"
    case elevenThirty = "🕦"
    case twelveThirty = "🕧"

}

// MARK: - Custom String Convertible

extension ClockFaceEmoji: CustomStringConvertible {

    public var description: String {
        return self.rawValue
    }

}



