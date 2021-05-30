//
//  AboutMeViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 30.05.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var toExperienceButton: UIButton!
    @IBOutlet weak var toHobbiesButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setGradientToBackgroundView(view: view, firstColor: .systemPink, secondColor: .systemOrange)
        
        profileImage.image = user.person.picture
        profileImage.layer.cornerRadius = profileImage.frame.size.height/2
        
        userInfoLabel.text = """
\(user.person.fullName), \(user.person.age)
\(user.person.hometown)
"""
        toExperienceButton.layer.cornerRadius = toExperienceButton.frame.size.height/2
        toHobbiesButton.layer.cornerRadius = toHobbiesButton.frame.size.height/2
    }
}
