//
//  WorkoutViewController.swift
//  Flight6
//
//  Created by Hashma Shahid on 6/19/16.
//  Copyright (c) 2016 Hashma Shahid. All rights reserved.
//

import UIKit
import MZTimerLabel

class WorkoutViewController: UIViewController {

    @IBOutlet weak var backHome: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var timerLabel: MZTimerLabel!
    
    @IBOutlet weak var currentWorkout: UILabel!
    
    @IBOutlet weak var nextUp: UILabel!
    
    @IBOutlet weak var nextWorkout: UILabel!
    
    
    @IBAction func pauseResume(sender: UIButton) {
        
        let propertyToCheck = sender.currentTitle!
        
                if sender.currentTitle == "Pause" {
                    // do something
                    pauseButton.setTitle("Resume", forState: .Normal)
                    timerLabel.pause()
                }
        
                else if (sender.currentTitle == "Resume") {
                    // do something else
                    pauseButton.setTitle("Pause", forState: .Normal)
                    timerLabel.start()
                }

        
    }
    
    
    
    
    
    
    
    
    
    
}