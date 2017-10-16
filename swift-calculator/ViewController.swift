//
//  ViewController.swift
//  swift-calculator
//
//  Created by Jessica on 10/15/17.
//  Copyright © 2017 Jessica Weeber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isTyping = false

    @IBOutlet weak var display: UILabel!

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if isTyping {
            let digitsInDisplay = display.text!
            display.text! = digitsInDisplay + digit
        } else {
            display.text! = digit
            isTyping = true
        }
    }
}

