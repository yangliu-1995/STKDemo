//
//  AutlayoutHelper.swift
//  STKDemo
//
//  Created by Xueyuan Xiao on 2022/8/28.
//

import UIKit

struct AutlayoutHelper {
    
    struct AlignOption: OptionSet {
        let rawValue: Int
        static let leading = AlignOption(rawValue: 1 << 0)
        static let safeAreaLeading = AlignOption(rawValue: 1 << 1)
        static let top = AlignOption(rawValue: 1 << 2)
        static let safeAreaTop = AlignOption(rawValue: 1 << 3)
        static let trailing = AlignOption(rawValue: 1 << 4)
        static let safeAreaTrailing = AlignOption(rawValue: 1 << 5)
        static let bottom = AlignOption(rawValue: 1 << 6)
        static let safeAreaBottom = AlignOption(rawValue: 1 << 7)
    }
    
    static func addSameConstraint(_ view: UIView, superview: UIView, options: AlignOption) {
        var constraints: [NSLayoutConstraint] = []
        if options.contains(.leading) {
            constraints += [view.leadingAnchor.constraint(equalTo: superview.leadingAnchor)]
        }
        if options.contains(.safeAreaLeading) {
            constraints += [view.leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor)]
        }
        if options.contains(.top) {
            constraints += [view.topAnchor.constraint(equalTo: superview.topAnchor)]
        }
        if options.contains(.safeAreaTop) {
            constraints += [view.topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor)]
        }
        if options.contains(.trailing) {
            constraints += [view.trailingAnchor.constraint(equalTo: superview.trailingAnchor)]
        }
        if options.contains(.safeAreaTrailing) {
            constraints += [view.trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor)]
        }
        if options.contains(.bottom) {
            constraints += [view.bottomAnchor.constraint(equalTo: superview.bottomAnchor)]
        }
        if options.contains(.safeAreaBottom) {
            constraints += [view.bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor)]
        }
        NSLayoutConstraint.activate(constraints)
    }
    
}
