//
//  ViewController.swift
//  HelloWorld
//
//  Created by Lucho on 5/2/17.
//  Copyright © 2017 Lucho. All rights reserved.
//

import UIKit

class CatYearsViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var yearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func didPressButton(_ sender: Any) {
        if(self.nameText.text != "") {
            let years = Int(nameText.text!)! * 4
            yearsLabel.text = "\(years)"
            nameText.text = ""
        } else {
            displayMessage(message: "Invalid number of years.")
        }
    }
    
    func displayMessage(message: String) {
        let alert = UIAlertController(title: "Alert!", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

