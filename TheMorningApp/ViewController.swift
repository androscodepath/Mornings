//
//  ViewController.swift
//  TheMorningApp
//
//  Created by Andros Slowley on 2/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsButton: UIButton!
    
    @IBOutlet weak var quotesButton: UIButton!
    
    @IBOutlet weak var affirmationButton: UIButton!
    
    var currentSelection: MorningMessageType = .Word
    
    @IBOutlet weak var currentMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didSelectAction(_ sender: Any) {
        guard let button = sender as? UIButton else { return }
        
        guard let titleText = button.titleLabel?.text else { return }
        
        guard let message = MorningMessageType(rawValue: titleText) else { return }
        
        currentSelection = message
        currentMessage.text = currentSelection.messages().first!
    }
    
    /*
    @IBAction func didSelectWords(_ sender: Any) {
        currentSelection = .Word
        currentMessage.text = currentSelection.messages().first!
    }
    
    @IBAction func didSelectQuotes(_ sender: UIButton) {
        currentSelection = .Quote
        currentMessage.text = currentSelection.messages().first!
    }
    
    @IBAction func didSelectAffirmation(_ sender: UIButton) {
        currentSelection = .Affirmation
        currentMessage.text = currentSelection.messages().first!
    }
   */
}

// https://www.pexels.com/photo/snow-covered-mountain-2086620/
