//
//  WelcomeViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 25.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: Variables and Constants
    var username = ""
    
    //MARK: Outlets
    @IBOutlet weak var helloUserLabel: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientToBackgroundView(view: view, firstColor: .systemPink, secondColor: .systemBlue)
        helloUserLabel.text = "Welcome, \(username)!"
        logoutButton.layer.cornerRadius = logoutButton.frame.size.height/2
        
    }
}
