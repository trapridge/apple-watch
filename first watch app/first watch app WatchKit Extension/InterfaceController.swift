//
//  InterfaceController.swift
//  first watch app WatchKit Extension
//
//  Created by Juuso Ansaharju on 20/05/16.
//  Copyright © 2016 Juuso Ansaharju. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var nameLabel: WKInterfaceLabel!
    
    
    @IBAction func buttonAction() {
        nameLabel.setText("hello!")
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
