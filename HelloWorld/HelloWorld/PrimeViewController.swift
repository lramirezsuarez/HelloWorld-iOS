//
//  PrimeViewController.swift
//  HelloWorld
//
//  Created by Luis Ramirez on 5/20/17.
//  Copyright © 2017 Lucho. All rights reserved.
//

import UIKit

class PrimeViewController: UIViewController {
    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didVerifyPrime(_ sender: Any) {
        if let number = Int(numberText.text!) {
            if (number%2 != 1) {
                resultsLabel.text = "The \(number) is not a prime number"
                numberText.text = ""
            } else {
                resultsLabel.text = "The \(number) is a prime number"
                numberText.text = ""
            }
        } else {
            displayMessage(message: "Enter a valid number")
            numberText.text = ""
        }
    }
    

    func displayMessage(message: String) {
        let alert = UIAlertController(title: "Alert!", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
