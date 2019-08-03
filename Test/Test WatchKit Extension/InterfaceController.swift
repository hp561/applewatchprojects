//
//  InterfaceController.swift
//  Test WatchKit Extension
//
//  Created by Harsh Patel on 7/11/18.
//  Copyright © 2018 Harsh Patel. All rights reserved.
//

import WatchKit
import Foundation


var isStarted = false
let vib = WKHapticType.click
var c = 0


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        

        
        
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

    @IBOutlet var Count: WKInterfaceLabel!
    //basic wkTimer
//    func wkTimerReset(timer:WKInterfaceTimer,interval:TimeInterval){
//        timer.stop()
//        let time  = NSDate(timeIntervalSinceNow: interval)
//        timer.setDate(time as Date)
//        timer.start()
//    }
    
    @IBAction func Vibration() {

//        if (isStarted==false) {
//            Time.start()
//            isStarted = true
//        }
//        
            WKInterfaceDevice.current().play(vib)
            
            c=c+1
            Count.setText("\(c)")

    }
    
    @IBAction func Reset() {
        //Time.stop()
        //Time.setDate(NSTimeIntervalSince1970)
        isStarted = false;
        c=0
        Count.setText("\(c)")
    }
    
    @IBOutlet var Time: WKInterfaceTimer!

}
