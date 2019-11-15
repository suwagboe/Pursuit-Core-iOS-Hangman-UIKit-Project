//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class WordEntryViewController: UIViewController {
    
    //MARK: OUTLETS AND PROPERTIES
    
    //@IBOutlet var TextLabel: UIView!
    
    @IBOutlet weak var TextLabel: UILabel!
    
    @IBOutlet weak var WordTextField: UITextField!
    
    @IBOutlet weak var confirmationButton: UIButton!
    
    var letterBank = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    var theWord: String? {
        didSet {
            // the word gets an assignment and then!!!!! the didset happens... it cannot assign the value because it is a REACTIOn to the value getting assigned
            
            // if nothing gets passed through here then the value remains emtpy
            print("i did something")
           theWord = WordTextField.text
        }
    }
    
    // calling instance of class hangman to have access to the values
    var hmgl = HangmanViewController()
    
    // opening actions
    override func viewDidLoad() {
        super.viewDidLoad()
        TextLabel.text = "WELCOME TO ZOMBIE HANGMAN!!!! PLAYER1 will enter in a word and PLAYER2 will have the chance to guess what word it is!! Below player1 should enter the word"
//        theWord = WordTextField.text
        WordTextField.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("prepare(for segue:)")
        
        guard let HangmanViewController = segue.destination as? HangmanViewController else {
            return
        }
        
        print(theWord)
HangmanViewController.theActualWord = theWord
        
    }
    
    //MARK: Actions and functions make impacts
    
    // creating a funciton to filter whether
    
}

extension WordEntryViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        //if they want start typing in number and other things then it stops working
        print("isEditing")
        
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // is the textfield everything??
        // and what is the string vs textfield in this case.
        
      
  
        
        
        // need char in order to access the values
        let char = string.cString(using: String.Encoding.utf8)!
              let isBackSpace = strcmp(char, "\\b")
        
        // would like to add that it should be -- && (string.count < 7) included
        if !letterBank.contains(string) && (!(isBackSpace == -92)){
            TextLabel.text = "please!!!! enter in a word. That is only letters"
            textField.textColor = .red
          //  confirmationButton.setTitleColor(.red, for: .normal)
           // confirmationButton.isEnabled = false
            confirmationButton.isHidden = true
            return false
        }
//        else if string.count < 7 {
//            TextLabel.text = "please!!!! enter in a word that is at least 7 letter"
//              textField.textColor = .red
//            //  confirmationButton.setTitleColor(.red, for: .normal)
//             // confirmationButton.isEnabled = false
//              confirmationButton.isHidden = true
//            return false
//        }
        else {
            textField.textColor = .green
            TextLabel.text = " If you are all done click the button below"
           // confirmationButton.setTitleColor(.red, for: .normal)
            confirmationButton.isHidden = false
            confirmationButton.isEnabled = true
            
            return true
        }
    }

func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    //}
    // returns BOOL
    
    if WordTextField.text?.count ?? 2 < 7 {
        textField.textColor = .red
        textField.text = "Please input a word greater than 7 letter"
    } else {
        textField.textColor = .green
        
        // once they finish typing then it gets assigned.
        theWord = WordTextField.text!
    WordTextField.resignFirstResponder()
    }
    //cancels out the keyboard.
    
    //want for the text
    return true
}

}
