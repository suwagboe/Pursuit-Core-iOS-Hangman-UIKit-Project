//
//  ConfirmsWordViewController.swift
//  Hangman
//
//  Created by World Domination a Brand on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {

    // MARK: OUTLETS AND PROPERTIES
 
    //should hold the actual image of the hangman
    @IBOutlet weak var hangmanImageView: UIImageView!
    
    //should hold the amount of letters for the word
    @IBOutlet weak var graveYardUnderScoresLabel: UILabel!
    
//where playerTwo enters in their guess
    @IBOutlet weak var guessTextField: UITextField!
    
    //PlayerOnes Inputed word
    @IBOutlet weak var actualWordLabel: UILabel!
    
    //the letters the player has already used
    @IBOutlet weak var lettersUsedLabel: UILabel!
    
    //the amount of turns left to play
    @IBOutlet weak var turnsLeftLabel: UILabel!
    
    var theActualWord: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        guessTextField.delegate = self as! UITextFieldDelegate
        
    
        
    }
    
    // MARK: ACTIONS MAKE IMPACTS

    
    
}

extension UITextFieldDelegate{
    
}
