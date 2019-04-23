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
        
    
    
   
    


}

