//
//  InterfaceController.swift
//  HeadsOrTails WatchKit Extension
//
//  Created by Juuso Ansaharju on 20/05/16.
//  Copyright © 2016 Juuso Ansaharju. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var coinImage: WKInterfaceImage!
    
    @IBAction func buttonAction() {
        let rnd = arc4random_uniform(2)
        if (rnd == 0) {
          coinImage.setImageNamed("heads")
        }
        else {
          coinImage.setImageNamed("tails")
        }
        
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
