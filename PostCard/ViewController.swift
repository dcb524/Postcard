//
//  ViewController.swift
//  PostCard
//
//  Created by Daniel Bienkowski on 11/7/14.
//  Copyright (c) 2014 Daniel Bienkowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // Adding a comment to test commits
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.text = "To: " + enterNameTextField.text
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    

}

