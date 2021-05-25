//
//  WelcomeViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 25.05.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    var username = ""
    var password = ""
    
    @IBOutlet weak var helloUserLabel: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setGradientToBackgroundView()
        
        helloUserLabel.text = "Welcome, \(username)!"
        
    }
    
    
    private func setGradientToBackgroundView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.systemBlue.cgColor]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
