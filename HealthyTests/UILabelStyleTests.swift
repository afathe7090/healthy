//
//  UILabelStyleTests.swift
//  HealthyTests
//
//  Created by Ahmed Fathy on 18/05/2023.
//

import UIKit
import XCTest
@testable import Healthy

final class UILabelStyleTests: XCTestCase {
    // MARK: - Test Title style
    func test_uiLabel_defaultSetUILabelTitleStyle() {
        let lsut = makeSUT(style: UILabelTitleStyle())

        XCTAssertEqual(lsut.textColor, .black)
        XCTAssertEqual(lsut.font, .poppins_semibold(20.0))
        XCTAssertEqual(lsut.textAlignment, .center)
        XCTAssertEqual(lsut.numberOfLines, 0)
    }
    func test_uiLabel_changeFontWithSetUILabelTitleStyleAndChangeFont() {
        let lsut = makeSUT(style: UILabelTitleStyle(font: UIFont.systemFont(ofSize: 18)))

        XCTAssertEqual(lsut.textColor, .black)
        XCTAssertEqual(lsut.font, UIFont.systemFont(ofSize: 18))
        XCTAssertEqual(lsut.textAlignment, .center)
        XCTAssertEqual(lsut.numberOfLines, 0)
    }
    func test_uiLabel_whenChangeAllAttributesUILabelTitleStyle() {
        let style = UILabelTitleStyle(
            font: .boldSystemFont(ofSize: 20),
            textColor: .white,
            numberOfLines: 2,
            alignment: .left)
        let lsut = makeSUT(style: style)
        XCTAssertEqual(lsut.textColor, .white)
        XCTAssertEqual(lsut.font, .boldSystemFont(ofSize: 20))
        XCTAssertEqual(lsut.textAlignment, .left)
        XCTAssertEqual(lsut.numberOfLines, 2)
    }
    // MARK: - Test Subtyle style
    func test_uiLabel_defaultSetUILabelSubtitleStyle() {
        let lsut = makeSUT(style: UILabelSubtitleStyle())

        XCTAssertEqual(lsut.textColor, .black)
        XCTAssertEqual(lsut.font, .poppins_semibold(18.0))
        XCTAssertEqual(lsut.textAlignment, .center)
        XCTAssertEqual(lsut.numberOfLines, 0)
    }
    func test_uiLabel_changeFontWithSetUILabelSubtitleStyle() {
        let lsut = makeSUT(style: UILabelSubtitleStyle(font: .boldSystemFont(ofSize: 20)))

        XCTAssertEqual(lsut.textColor, .black)
        XCTAssertEqual(lsut.font, .boldSystemFont(ofSize: 20))
        XCTAssertEqual(lsut.textAlignment, .center)
        XCTAssertEqual(lsut.numberOfLines, 0)
    }
    func test_uiLabel_whenChangeAllAttributesUILabelSubtitleStyle() {
        let style = UILabelSubtitleStyle(
            font: .boldSystemFont(ofSize: 18),
            textColor: .blue,
            numberOfLines: 2,
            alignment: .left)
        let lsut = makeSUT(style: style)
        XCTAssertEqual(lsut.textColor, .blue)
        XCTAssertEqual(lsut.font, .boldSystemFont(ofSize: 18))
        XCTAssertEqual(lsut.textAlignment, .left)
        XCTAssertEqual(lsut.numberOfLines, 2)
    }
    private func makeSUT(style: UILabelStyle) -> UILabel {
        let label = UILabel()
        label.setStyle(style)
        return label
    }
}
