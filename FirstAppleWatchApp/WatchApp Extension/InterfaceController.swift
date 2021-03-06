//
//  InterfaceController.swift
//  WatchApp Extension
//
//  Created by Juuso Ansaharju on 20/05/16.
//  Copyright © 2016 Juuso Ansaharju. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var nameLabel: WKInterfaceLabel!
    
    @IBAction func buttonPressed() {
        nameLabel.setText("hai")
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        //NSLog("%@ init", self)
        //print("App works")
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        NSLog("%@ did deactivate", self)
    }

    
}
