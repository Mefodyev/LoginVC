//
//  ViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 25.05.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    //MARK: Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientToBackgroundView(view: view, firstColor: .systemIndigo, secondColor: .systemBlue)
        loginButton.layer.cornerRadius = loginButton.frame.size.height/2
    }

    //MARK: Functions and @IBActions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    private func userDataChecker() -> Bool {
        userNameTextField.text == user.userName && passwordTextField.text == user.password
    }
    
    @IBAction func forgotUsernameButtonTouched(_ sender: Any) {
        forgotUsernameAlert()
    }
    
    @IBAction func forgotPasswordButtonTouched(_ sender: Any) {
        forgotPasswordAlert()
    }
    
    private func forgotUsernameAlert() {
        let ac = UIAlertController(title: "Oops!", message: "Your name is \(user.userName) 😉", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil )
        ac.addAction(okAction)
        self.present(ac, animated: true, completion: nil)
    }
    
    private func forgotPasswordAlert() {
        let ac = UIAlertController(title: "Oops!", message: "Your password is \(user.password) 😉", preferredStyle: .alert)
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
        print("User entered wrong data")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard userDataChecker() == true else {
            return wrongUserData()
        }
        
        let tabBarController = segue.destination as! UITabBarController
        
        for vc in tabBarController.viewControllers! {
            if let welcomeVC = vc as? WelcomeViewController {
                welcomeVC.username = user.person.fullName
            } else if let navigationVC = vc as? UINavigationController {
                let aboutMeVC = navigationVC.topViewController as! AboutMeViewController
                aboutMeVC.title = "About Me 🤗"
            }
        }
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

