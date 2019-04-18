//
//  ViewController.swift
//  UILab
//
//  Created by Yiyin Shen on 18/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pushButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        checkList(function: #function)
    }

    @IBAction func didTapPushVCFromNib(_ sender: Any) {
        let viewController = ViewControllerFromNib(nibName: "ViewControllerFromNib", bundle: nil)
        // It is possible to load from another nib, however app will crash when you try to access a component that doesn't exist in ther nib
//        let viewController = ViewControllerFromNib(nibName: "AnotherViewControllerFromNib", bundle: nil)
        viewController.message = "This is a message"
        viewController.printMessage()
        pushViewController(viewController: viewController)
    }

    @IBAction func didTapPushVCFromStoryboard(_ sender: Any) {
        let viewController = UIStoryboard(name: "ExampleStoryboard", bundle: .main).instantiateViewController(withIdentifier: "ViewControllerFromStoryboard")
        pushViewController(viewController: viewController)
    }

    @IBAction func didTapPushVCCreatedByCode(_ sender: Any) {
        let viewController = ViewControllerCreatedByCode()
        pushViewController(viewController: viewController)
    }

    private func pushViewController(viewController: UIViewController) {
        let navigationViewController = UINavigationController(rootViewController: viewController)
        present(navigationViewController, animated: true, completion: nil)
    }
}

