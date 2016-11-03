//
//  ViewController.swift
//  calc2
//
//  Created by lucas persson on 2016-11-01.
//  Copyright © 2016 lucas persson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var userIsInTheMiddleOfTyping = false
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            print("touch: \(digit)")
            display.text?.append(digit)
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }

    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathSymbol = sender.currentTitle{
            if mathSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    }

}

