//
//  ViewControllerCreatedByCode.swift
//  UILab
//
//  Created by Yiyin Shen on 18/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerCreatedByCode: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureLabel()
        configureCloseButton()
        configureViewCreatedByCode()
        configureViewFromNib()
//        checkList(function: #function)
        checkBounds(function: #function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        checkBounds(function: #function)
    }

    private func configureView() {
        view.backgroundColor = UIColor.orange
    }

    private func configureLabel() {
        let label = UILabel(frame: CGRect(x: 30, y: 200, width: view.frame.width, height: 100))
        label.text = "ViewControllerCreatedByCode"
        view.addSubview(label)
    }

    private func configureCloseButton() {
        let button = UIButton(frame: CGRect(x: 30, y: 300, width: 60, height: 30))
        button.setTitle("Close", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(didTapCloseButton), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc private func didTapCloseButton() {
        dismiss(animated: true, completion: nil)
    }

    private func configureViewCreatedByCode() {
        let subview = ViewByCode()
        subview.frame = CGRect(x: 30, y: 400, width: 60, height: 50)
        view.addSubview(subview)

        let subviewInitWithFrame = ViewByCode(frame: CGRect(x: 130, y: 400, width: 60, height: 50))
        view.addSubview(subviewInitWithFrame)

        let defaultUIView = UIView(frame: CGRect(x: 230, y: 400, width: 60, height: 50))
        defaultUIView.backgroundColor = UIColor.blue
        view.addSubview(defaultUIView)

    }

    private func configureViewFromNib() {
        if let subview: ViewFromNib = ViewFromNib.loadFromNib() {
            subview.frame = CGRect(x: 30, y: 500, width: 160, height: 50)
            subview.message = "This is a message"
            subview.printMessage()
            view.addSubview(subview)
        }
    }
}
