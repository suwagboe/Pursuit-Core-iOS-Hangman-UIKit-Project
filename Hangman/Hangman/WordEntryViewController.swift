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
    
    // opening actions
  override func viewDidLoad() {
    super.viewDidLoad()
    TextLabel.text = "WELCOME TO ZOMBIE HANGMAN!!!! PLAYER1 will enter in a word and PLAYER2 will have the chance to guess what word it is!! Below player1 should enter the word"
    
    WordTextField.delegate = self
  }

    //MARK: Actions and functions make impacts

}

extension WordEntryViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
           //if they want start typing in number and other things then it stops working
        
        
        return true
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let myString = "abcdefghijklmnopqrstuvwxyz"
        
        for char in WordTextField.text ?? "a" {
        if WordTextField.text?.contains(myString) ?? true {
            textField.textColor = .green
            TextLabel.text = " If you are all done click the button below"
        } else {
            TextLabel.text = "please!!!! enter in a word "
            textField.textColor = .yellow
        }
        
        }
            // returns BOOL
            
        
        //cancels out the keyboard.
            
        WordTextField.resignFirstResponder()
        
        //want for the text
        return true
    }
    
}
