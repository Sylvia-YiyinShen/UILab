//
//  UIViewController+extension.swift
//  UILab
//
//  Created by Yiyin Shen on 18/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func checkList(function: String) {
        print("\(String(describing: type(of: self))) \(function) check list \n=========================")
        print("navigationController == nil: \(navigationController?.navigationBar == nil)")
        print("keyWindow == nil: \(UIApplication.shared.keyWindow == nil)")
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow
            print("window?.safeAreaInsets.top == nil: \(window?.safeAreaInsets.top == nil)")
        }
    }

    func checkBounds(function: String) {
        print("\(String(describing: type(of: self))) \(function) view.bounds: \(view.bounds)")
    }
}
