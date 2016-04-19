//
//  TTTTimeIntervalFormatterTests-French.swift
//  FormatterKit Example
//
//  Created by Victor Ilyukevich on 4/11/16.
//  Copyright © 2016 Gowalla. All rights reserved.
//

import XCTest
import FormatterKit

class TTTTimeIntervalFormatterTests_French: XCTestCase {

    var formatter: TTTTimeIntervalFormatter!

    override func setUp() {
        super.setUp()
        NSUserDefaults.standardUserDefaults().setObject(["fr"], forKey: "AppleLanguages")
        NSUserDefaults.standardUserDefaults().synchronize()

        formatter = TTTTimeIntervalFormatter()
    }

    // MARK: Tests

    func testSecondsAgo() {
        XCTAssertEqual(formatter.stringForTimeInterval(-1), "il y a 1 seconde")
    }

}
