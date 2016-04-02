//
//  ViewController.swift
//  How Many Fingers
//
//  Created by J a S o N on 5/20/15.
//  Copyright (c) 2015 Jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var randomNum = arc4random_uniform(11)
        var enteredGuess = guess.text.toInt()
        
        if(enteredGuess != nil) {
            
            if(enteredGuess == Int(randomNum)) { // Int(num) used to convert num to type int
                label.text = "correct :-)"
                
            } else {
                label.text = "The number was actually \(randomNum)"
            }
        } else {
            label.text = "Guess a number between 1 and 10."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

