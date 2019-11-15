//
//  ConfirmsWordViewController.swift
//  Hangman
//
//  Created by World Domination a Brand on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController{
   

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
    
    // use the variable to hold the image and then have the image be printed instead of the line
    let image = UIImage(named: "zombie hangman")
    
    var lettersUsed: Set<Character> = []

     
    // variable to hold the amount of spaces
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        guessTextField.delegate = self as! UITextFieldDelegate
        let amountOfSpaces = String(Array(String(repeating: "_ ", count: theActualWord?.count ?? 3)))
        graveYardUnderScoresLabel.text = String(amountOfSpaces)
print(amountOfSpaces)
        guessTextField.delegate = self
        
        actualWordLabel.text = theActualWord
        
    }
    
    // MARK: ACTIONS MAKE IMPACTS

    
    
}

extension HangmanViewController: UITextFieldDelegate{
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("isediting")
        
                            return true
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
       // lettersUsedLabel.text = Array<string>
        
        
              // can use only in this for loop
              
        // append the entered letters into the set of lettersUsed
              for char in string {
                lettersUsed.insert(char)
                  print(lettersUsed)
              }
        
        //do the code for hangman
        // for each letter enter i want the code to
        /*
         - check for the letter in the actualWordLabel
         - check if they typed this letter before
         - not count the backspace as an option of a letter
         -
         */
        
        print("shouldchange")
        
        if actualWordLabel.text?.contains(string) ?? false {
           print("this might be workkng!!!")
        
            // remove from the word label
            actualWordLabel.text?.remove(at: (actualWordLabel.text?.firstIndex(of: Character(string)))!)
            
            // add the letter to the underscored thingy....

            
            
            print("\(String(describing: actualWordLabel))")
                       // only checking each input to access all the characters in the string
                       // this removes from the randomScrambledWord the character at the first sign of said character..
                       
                   }
            return true

        }
        
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                guessTextField.resignFirstResponder()

    }
    
    
    
}
    
