//
//  ViewController.swift
//  TheMorningApp
//
//  Created by Andros Slowley on 2/10/25.
//

import UIKit

class ViewController: UIViewController {

    var currentIndex: Int = 0
    var currentMessage: MorningMessage = .Words

    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let allMessages = currentMessage.messages()
        
        let firstMessage = allMessages[currentIndex]
        
        displayLabel.text = firstMessage
    }
    
    @IBAction func changeToWords(_ sender: Any) {
        currentMessage = .Words
        let allMessages = currentMessage.messages()
        
        let firstMessage = allMessages[currentIndex]
        
        displayLabel.text = firstMessage
    }
    
    @IBAction func changeToQuotes(_ sender: Any) {
        currentMessage = .Quotes
        let allMessages = currentMessage.messages()
        
        let firstMessage = allMessages[currentIndex]
        
        displayLabel.text = firstMessage

    }
    
    @IBAction func changeToAffirmations(_ sender: Any) {
        currentMessage = .Affirmations
        let allMessages = currentMessage.messages()
        
        let firstMessage = allMessages[currentIndex]
        
        displayLabel.text = firstMessage
    }
}


