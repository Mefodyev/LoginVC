//
//  ViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 25.05.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    let validUsername = "User"
    let validPassword = "Password"

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.layer.cornerRadius = loginButton.frame.size.height/2
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    private func userDataChecker() -> Bool {
        userNameTextField.text == validUsername && passwordTextField.text == validPassword
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
        guard let destination = segue.destination as? WelcomeViewController else { return }
        destination.username = userNameTextField.text ?? ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            textField.resignFirstResponder()
            textField.returnKeyType = .next
            passwordTextField.becomeFirstResponder()
        }
        
        if textField == passwordTextField {
            textField.returnKeyType = .done
            performSegue(withIdentifier: "toWelcomeVC", sender: nil)
        }
        
        return true
    }
    
}

