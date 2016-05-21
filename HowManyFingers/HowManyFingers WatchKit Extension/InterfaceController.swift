//
//  InterfaceController.swift
//  HowManyFingers WatchKit Extension
//
//  Created by Juuso Ansaharju on 21/05/16.
//  Copyright © 2016 Juuso Ansaharju. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var guess: Float = 0.0
    
    @IBOutlet var resultsLabel: WKInterfaceLabel!
    
    @IBAction func fingerCountGuessAction(value: Float) {
        guess = value
    }
    
    @IBAction func guessAction() {
        let rnd:UInt32 = arc4random_uniform(6)
        if UInt32(guess) == rnd {
            resultsLabel.setTextColor(UIColor(red: 0, green: 255, blue: 0, alpha: 1))
        }
        else {
            resultsLabel.setTextColor(UIColor(red: 255, green: 0, blue: 0, alpha: 1))
        }
        resultsLabel.setText("\(rnd) fingers")
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
