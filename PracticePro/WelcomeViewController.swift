//
//  WelcomeViewController.swift
//  PracticePro
//
//  Created by Katrina King on 4/15/19.
//  Copyright © 2019 Katrina King. All rights reserved.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didPressGoBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
