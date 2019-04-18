//
//  ViewControllerFromNib.swift
//  UILab
//
//  Created by Yiyin Shen on 18/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import UIKit

class ViewControllerFromNib: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var extraLabel: UILabel!
    public var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLabel()
        checkList(function: #function)
        checkBounds(function: #function)
        printMessage()
    }

    public func printMessage() {
        print("message: \(message ?? "message is nil")")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        checkBounds(function: #function)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        checkBounds(function: #function)
    }

    private func configureLabel() {
        label.textColor = UIColor.red
        extraLabel.textColor = UIColor.blue
    }

    private func configureCustomView() {
        let myView = UIView()
        myView.backgroundColor = UIColor.black
        myView.frame = view.bounds
        view.addSubview(myView)
    }

    @IBAction func didTapClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
