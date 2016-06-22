//
//  InterfaceController.swift
//  animation WatchKit Extension
//
//  Created by Juuso Ansaharju on 23/05/16.
//  Copyright © 2016 Juuso Ansaharju. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var running:Bool = false
    
    @IBOutlet var button: WKInterfaceButton!
    @IBOutlet var animation: WKInterfaceImage!
    
    @IBAction func buttonPressed() {
        if running {
            animation.stopAnimating()
            button.setTitle("Start")
        }
        else {
            animation.startAnimating()
            button.setTitle("Stop")
        }
        running = !running
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
