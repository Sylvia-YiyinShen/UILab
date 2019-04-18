//
//  UIView+extension.swift
//  UILab
//
//  Created by Yiyin Shen on 18/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    var classNameAtInstanceLevel: String {
        return String(describing: type(of: self))
    }

    static var classNameAtTypeLevel: String {
        return String(describing: self)
    }

    static func loadFromNib<T : UIView>() -> T? {
        return UINib(nibName: classNameAtTypeLevel, bundle: Bundle(for: self)).instantiate(withOwner: nil, options: nil).first as? T
    }
}

