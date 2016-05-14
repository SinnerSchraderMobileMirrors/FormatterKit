//
//  ColorFormatterTests.swift
//  FormatterKit Example
//
//  Created by Victor Ilyukevich on 5/14/16.
//  Copyright © 2016. All rights reserved.
//

import XCTest
import FormatterKit

class ColorFormatterTests: XCTestCase {

    var formatter: TTTColorFormatter!

    override func setUp() {
        super.setUp()
        formatter = TTTColorFormatter()
    }

    // MARK: Tests

    func testHexadecimal() {
        XCTAssertEqual(formatter.hexadecimalStringFromColor(UIColor.whiteColor()), "#FFFFFF")
        XCTAssertEqual(formatter.hexadecimalStringFromColor(UIColor.blackColor()), "#000000")

        let orange = formatter.colorFromHexadecimalString("#FF8000")
        XCTAssertEqual(formatter.colorFromHexadecimalString("#ff8000"), orange)
        XCTAssertEqual(formatter.hexadecimalStringFromColor(orange), "#FF8000")
    }

    func testRGB() {
        XCTAssertEqual(formatter.RGBAStringFromColor(UIColor.whiteColor()), "rgb(255, 255, 255, 1)")
        XCTAssertEqual(formatter.RGBAStringFromColor(UIColor.blackColor()), "rgb(0, 0, 0, 1)")

        let color = UIColor.redColor()
        let colorString = formatter.RGBAStringFromColor(color)
        XCTAssertEqual(formatter.colorFromRGBAString(colorString), color)
    }

    func testHSL() {
        XCTAssertEqual(formatter.HSLStringFromColor(UIColor.whiteColor()), "hsl(, 0%, 100%)")
        XCTAssertEqual(formatter.HSLStringFromColor(UIColor.blackColor()), "hsl(, 0%, 0%)")
        XCTAssertEqual(formatter.HSLStringFromColor(UIColor.redColor()), "hsl(255, 100%, 50%)")

        // TODO: there must be a bug
        // let colorString = "hsl(255, 100%, 50%)"
        // let color = formatter.colorFromHSLString(colorString)
        // XCTAssertEqual(formatter.HSLStringFromColor(color), colorString)
    }

    func testUIColorDeclaration() {
        let color = UIColor(red: 0, green: 1, blue: 0.2, alpha: 0.31)
        XCTAssertEqual(formatter.UIColorDeclarationFromColor(color), "[UIColor colorWithRed:0 green:1 blue:0.2 alpha:0.31]")
    }
}
