//
//  ViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 25.05.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    let validUsername = "User"
    let validPassword = "Password"

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    
    @IBAction func loginButtonTouched(_ sender: Any) {
        
        if userNameTextField.text == validUsername && passwordTextField.text == validPassword {
            
            print("Fuck Yeah!")

        } else {
            wrongUserData()
        }
        
    }
    
    private func userDataChecker() -> Bool {
        if userNameTextField.text == validUsername && passwordTextField.text == validPassword {
            return true
        } else {
            return false
        }
        
    }
    
    
    @IBAction func forgotUsernameButtonTouched(_ sender: Any) {
        forgotUsernameAlert()
    }
    
    @IBAction func forgotPasswordButtonTouched(_ sender: Any) {
        forgotPasswordAlert()
    }
    
    private func forgotUsernameAlert() {
        
        let ac = UIAlertController(title: "Oops!", message: "Your name is \(validUsername) 😉", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil )
        ac.addAction(okAction)
        self.present(ac, animated: true, completion: nil)

    }
    
    private func forgotPasswordAlert() {
        let ac = UIAlertController(title: "Oops!", message: "Your password is \(validPassword) 😉", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil )
        ac.addAction(okAction)
        self.present(ac, animated: true, completion: nil)

    }
    
    private func wrongUserData() {
        let ac = UIAlertController(title: "Invalid Login or Password", message: "Please enter Correct User Data", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil )
        ac.addAction(okAction)
        self.present(ac, animated: true, completion: nil)
        userNameTextField.text = ""
        passwordTextField.text = ""

    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard userDataChecker() == true else {
            return wrongUserData()
        }
        guard let destination = segue.destination as? WelcomeViewController else {
            return
        }
        destination.username = userNameTextField.text ?? ""
        destination.password = passwordTextField.text ?? ""
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController else {
            return
        }
        
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}
