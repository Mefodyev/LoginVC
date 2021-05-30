//
//  ExperienceViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 30.05.2021.
//

import UIKit

class ExperienceViewController: UIViewController {

    let myGithubURL = NSURL(string: "https://github.com/Mefodyev")
    

    @IBOutlet weak var experienceTextView: UITextView!
    @IBOutlet weak var toGithubButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setGradientToBackgroundView(view: view, firstColor: .systemIndigo, secondColor: .systemPink)
        experienceTextView.text = user.person.eduAndworkExperience
        
        toGithubButton.layer.cornerRadius = toGithubButton.frame.size.height/2
    }
    
    @IBAction func goToGithubButtonTapped(_ sender: Any) {
        
        UIApplication.shared.open(myGithubURL! as URL)
    }
    



}
