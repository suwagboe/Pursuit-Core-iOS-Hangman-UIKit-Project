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
    
    // why does this work?
    //saying that it is empty.. empty is nil ... nil is technically a value
    var theActualWord: String?
    
    // variable to hold the amount of spaces
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        guessTextField.delegate = self as! UITextFieldDelegate
        let amountOfSpaces = (String(repeatElement("_", count: theActualWord?.count ?? 1)))
        guessTextField.text = String(amountOfSpaces)
print(amountOfSpaces)
        
    }
    
    // MARK: ACTIONS MAKE IMPACTS

     func checkingAnswer() {
        if guessTextField.text == actualWordLabel.text {
               print("it worrks")
               graveYardUnderScoresLabel.text = "You got it right!!! If you want to play again please click the correspoding button"
           }
       }
    
    
}

extension HangmanViewController: UITextFieldDelegate{
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("isediting")
                            return true
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        if actualWordLabel.text?.contains(string) ?? false {
           print("this might be workkng!!!")
            
            
            //actualWordLabel
        }
        
       return true
    }
    
    
    
    
}
