//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Guilherme Bury on 05/02/2018.
//  Copyright © 2018 Guilherme Bury. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var textViewPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var userCapitalLetter: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordsGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordsGenerator(
            numberOfCharacters: numberOfCharacters, useLetters: useLetters,
            useNumbers: useNumbers, useCapitalLetters: userCapitalLetter,
            useSpecialCharacters: useSpecialCharacters)

        generatePasswords()
    }
    
    func generatePasswords() {
        textViewPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        textViewPasswords.text = ""
        let passwords = passwordGenerator.generate(totalPasswords: numberOfPasswords)
        for password in passwords {
            textViewPasswords.text.append(password + "\n\n")
        }
    }
    
    @IBAction func generate(_ sender: Any) {
        generatePasswords()
    }
}
