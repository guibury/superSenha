//
//  ViewController.swift
//  SuperSenha
//
//  Created by Guilherme Bury on 05/02/2018.
//  Copyright © 2018 Guilherme Bury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldTotalPasswords: UITextField!
    @IBOutlet weak var textFieldNumberCharacters: UITextField!
    @IBOutlet weak var switchLetters: UISwitch!
    @IBOutlet weak var switchNumbers: UISwitch!
    @IBOutlet weak var switchCapitalLetters: UISwitch!
    @IBOutlet weak var switchSpecialCharacters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        
        if let numberOfPasswords = Int(textFieldTotalPasswords.text!) {
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(textFieldNumberCharacters.text!) {
            passwordsViewController.numberOfPasswords = numberOfCharacters
        }
        passwordsViewController.useLetters = switchLetters.isOn
        passwordsViewController.useNumbers = switchNumbers.isOn
        passwordsViewController.useSpecialCharacters = switchSpecialCharacters.isOn
        passwordsViewController.userCapitalLetter = switchCapitalLetters.isOn
        view.endEditing(true)
    }
}
