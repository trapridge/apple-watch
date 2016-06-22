//
//  InterfaceController.swift
//  IsItPrime WatchKit Extension
//
//  Created by Juuso Ansaharju on 21/05/16.
//  Copyright © 2016 Juuso Ansaharju. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var primeLabel: WKInterfaceLabel!
    
    @IBOutlet var slider: WKInterfaceSlider!
    
    @IBAction func numberChanged(value: Float) {
        calcPrime(Int(value))
    }
    
    func calcPrime(candidate:Int) -> Void {
        if isPrime(candidate) {
            primeLabel.setTextColor(UIColor(red: 0, green: 255, blue: 0, alpha: 1))
            primeLabel.setText("\(candidate)\n is a prime")
        }
        else {
            primeLabel.setTextColor(UIColor(red: 255, green: 0, blue: 0, alpha: 1))
            primeLabel.setText("\(candidate)\n is not a prime")
        }
    }
    
    func isPrime(i:Int, j:Int = 2) -> Bool {
        if i < 2 {
            return false
        }
        else if i == j {
            return true
        }
        else if i % j == 0 {
            return false
        }
        else {
            return isPrime(i, j: j + 1)
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        calcPrime(0)
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
