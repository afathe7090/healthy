//
//  UILabelTitleStyle.swift
//  Healthy
//
//  Created by Ahmed Fathy on 18/05/2023.
//

import UIKit

struct UILabelTitleStyle: UILabelStyle {
    private let font: UIFont
    private let textColor: UIColor
    private let numberOfLines: Int
    private let alignment: NSTextAlignment
    init(
        font: UIFont = .poppins_semibold(20.0),
        textColor: UIColor = .black,
        numberOfLines: Int = 0,
        alignment: NSTextAlignment = .center
    ) {
        self.font = font
        self.textColor = textColor
        self.numberOfLines = numberOfLines
        self.alignment = alignment
    }
    func setStype(for label: UILabel) {
        label.textColor = textColor
        label.font = font
        label.textAlignment = alignment
        label.numberOfLines = numberOfLines
    }
}

extension UIColor {
    static let deepBlue = UIColor(red: 0.012, green: 0.012, blue: 0.098, alpha: 1)
    static let midnightBlue = UIColor(red: 0.039, green: 0.145, blue: 0.200, alpha: 1)
    static let slateGray = UIColor(red: 0.282, green: 0.322, blue: 0.373, alpha: 1)
}

extension UIFont {
    static func poppins_semibold(_ size: CGFloat) -> UIFont {
        UIFont(name: "poppins-semibold", size: size) ?? .systemFont(ofSize: size)
    }
}
