//
//  Time.swift
//  EmojiTimeFormatter
//
//  Created by Thomas Paul Mann on 21/08/16.
//  Copyright © 2016 Thomas Paul Mann. All rights reserved.
//

import Foundation

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

extension ClockFaceEmoji {

    static var all: [ClockFaceEmoji] {
        return [
            .twelve,
            .twelveThirty,
            .one,
            .oneThirty,
            .two,
            .twoThirty,
            .three,
            .threeThirty,
            .four,
            .fourThirty,
            .five,
            .fiveThirty,
            .six,
            .sixThirty,
            .seven,
            .sevenThirty,
            .eight,
            .eightThirty,
            .nine,
            .nineThirty,
            .ten,
            .tenThirty,
            .eleven,
            .elevenThirty

        ]
    }

}

// MARK: - Custom String Convertible

extension ClockFaceEmoji: CustomStringConvertible {

    public var description: String {
        return self.rawValue
    }

}



