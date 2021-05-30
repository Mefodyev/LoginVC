//
//  ExperienceViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 30.05.2021.
//

import UIKit

class ExperienceViewController: UIViewController {

    //MARK: Constants and Variables
    private let myGithubURL = "https://github.com/Mefodyev"

    //MARK: Outlets
    @IBOutlet weak var experienceTextView: UITextView!
    @IBOutlet weak var toGithubButton: UIButton!
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        setGradientToBackgroundView(view: view, firstColor: .systemIndigo, secondColor: .systemPink)
        experienceTextView.text = user.person.eduAndworkExperience
        setCornerRadiusForButton(button: toGithubButton)
    }
    
    //MARK: Actions
    @IBAction func goToGithubButtonTapped(_ sender: Any) {
        prepareAndOpenURL(urlString: myGithubURL)
    }
    



}
