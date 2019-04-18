//
//  ViewControllerFromStoryboard.swift
//  UILab
//
//  Created by Yiyin Shen on 18/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import UIKit

class ViewControllerFromStoryboard: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    
    override func loadView() {
        super.loadView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        checkList(function: #function)
        checkBounds(function: #function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // navigationController?.navigationBar.alpha = 0.0 // This dosen't work
        /*
         the alpha value of navigationbar and navigation bar items will be reset automatically to 1 between viewWillAppear and viewDidAppear, set navigationBar to hidden until viewDidAppear
         */
        checkBounds(function: #function)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        checkBounds(function: #function)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        checkBounds(function: #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // this alone dosen't look good, since you will see the navigation bar before the alpha change
        // you might try set navigation bar to hidden until viewDidAppear
        navigationController?.navigationBar.alpha = 0.0
    }

    @IBAction func didTapCloseButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
