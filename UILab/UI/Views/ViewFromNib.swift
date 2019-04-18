//
//  ViewFromNib.swift
//  UILab
//
//  Created by Yiyin Shen on 18/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import Foundation
import UIKit

class ViewFromNib: UIView {

    @IBOutlet weak var label: UILabel!

    public var message: String?

    override func awakeFromNib() {
        super.awakeFromNib()
        label.backgroundColor = UIColor.white
        printMessage()
    }

    public func printMessage() {
        print("message: \(message ?? "message is nil")")
    }
}
