//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Logan Yang on 8/10/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {
    
    
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // task 1: code segue for rockButton
    @IBAction func playRock(sender: UIButton) {
        // var controller: RPCViewController
        // set reference to the storyboard "RPCViewController"
        // the referenced storyboard must have this ID
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("RPCViewController") as! RPCViewController
        
        controller.userChoice = getShape(sender)
        
        presentViewController(controller, animated: true, completion: nil)
    }
    
    // task 2: code and storyboard segue for paperButton
    @IBAction func playPaper(sender: UIButton) {
        performSegueWithIdentifier("play", sender: sender)
    }
    
    // task 3: storyboard segue for scissorButton. Done on storyboard.
    
    // Data going with the segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            
            let controller = segue.destinationViewController as! RPCViewController
            
            controller.userChoice = getShape(sender as! UIButton)
        }
    }
    
    // utility
    func getShape(sender: UIButton) -> String {
        if sender == rockButton {
            return "Rock"
        }
        else if sender == paperButton {
            return "Paper"
        }
        else {
            return "Scissors"
        }
    }
    
    // code and storyboard segue for paperButton
    
}

