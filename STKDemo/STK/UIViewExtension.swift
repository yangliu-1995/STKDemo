//
//  UIViewExtension.swift
//  STKDemo
//
//  Created by Netto on 2022/8/27.
//

import UIKit

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?[0] as! T
    }
}
