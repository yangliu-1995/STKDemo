//
//  UIViewControllerExtension.swift
//  STKDemo
//
//  Created by Netto on 2022/8/27.
//

import UIKit

extension UIViewController {
    static func fromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }
        return instantiateFromNib()
    }
}
