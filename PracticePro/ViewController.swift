//
//  ViewController.swift
//  PracticePro
//
//  Created by Katrina King on 4/9/19.
//  Copyright © 2019 Katrina King. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    var isSegueAllowed = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Home"
    }
        
        
        override func shouldPerformSegue(withIdentifier indentifier: String, sender: Any?) -> Bool {
            switch indentifier {
            case "viewChange":
                print("going to the next view")
                
                if isSegueAllowed {
                    return true
                } else {
                    return false
                }
                
            default:
                print("something else is happening")
                return true
            }
        }
        
    @IBAction func didPressSwitch(_ sender: Any) {
        isSegueAllowed = !isSegueAllowed
    }
    
    @IBAction func didShowAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Hello world!", message: "This is an alert", preferredStyle: .actionSheet)
    
    
    let action1 = UIAlertAction(title: "Hello",
                                style: .default) { _ in
        print("Hello was clicked")
    }
    
    let action2 = UIAlertAction(title: "Cancel",
                                style:.cancel) { _ in
        print("action was cancelled")
    }
    
    let action3 = UIAlertAction(title: "DELETE",
                                style: .destructive) { _ in
        print("DELETE WAS CLICKED")
    }
    
    alert.addAction(action1)
    alert.addAction(action2)
    alert.addAction(action3)
        
    present(alert,
            animated: true)
        print("alert was shown")
        
        
    }
    


}

