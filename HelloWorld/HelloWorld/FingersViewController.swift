//
//  FingersViewController.swift
//  HelloWorld
//
//  Created by Luis Ramirez on 5/12/17.
//  Copyright © 2017 Lucho. All rights reserved.
//

import UIKit

class FingersViewController : UIViewController {
    
    @IBOutlet weak var fingersTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didPressedGuessButton(_ sender: Any) {
        let randFingers = arc4random_uniform(6)
        
        if(self.fingersTextField.text != "") {
            let fingers = UInt32(fingersTextField.text!)!
            
            if(fingers == randFingers) {
                resultLabel.text = "You're Right!"
            }  else if (fingers < 0 || fingers > 5) {
                displayMessage(message: "Invalid number of fingers.")
            } else {
                resultLabel.text = "You're wrong! It was \(randFingers)"
            }
        fingersTextField.text = ""
        } else {
            displayMessage(message: "Empty text field.")
        }
    }
    
    func displayMessage(message: String) {
        let alert = UIAlertController(title: "Alert!", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
