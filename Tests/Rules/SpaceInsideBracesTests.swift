//
//  SpaceInsideBracesTests.swift
//  SwiftFormatTests
//
//  Created by Cal Stephens on 7/28/2024.
//  Copyright © 2024 Nick Lockwood. All rights reserved.
//

import XCTest
@testable import SwiftFormat

class SpaceInsideBracesTests: XCTestCase {
    func testSpaceInsideBraces() {
        let input = "foo({bar})"
        let output = "foo({ bar })"
        testFormatting(for: input, output, rule: .spaceInsideBraces, exclude: [.trailingClosures])
    }

    func testNoExtraSpaceInsidebraces() {
        let input = "{ foo }"
        testFormatting(for: input, rule: .spaceInsideBraces, exclude: [.trailingClosures])
    }

    func testNoSpaceAddedInsideEmptybraces() {
        let input = "foo({})"
        testFormatting(for: input, rule: .spaceInsideBraces, exclude: [.trailingClosures])
    }

    func testNoSpaceAddedBetweenDoublebraces() {
        let input = "func foo() -> () -> Void {{ bar() }}"
        testFormatting(for: input, rule: .spaceInsideBraces)
    }
}
