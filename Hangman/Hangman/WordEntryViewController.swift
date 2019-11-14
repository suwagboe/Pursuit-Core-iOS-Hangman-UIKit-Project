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
    
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBOutlet weak var confirmationButton: UIButton!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    TextLabel.text = "WELCOME TO ZOMBIE HANGMAN!!!! PLAYER1 will enter in a word and PLAYER2 will have the chance to guess what word it is!! Below player1 should enter the word"
    // Do any additional setup after loading the view, typically from a nib.
  }

    //MARK: Actions and functions make impacts
    
    

}

