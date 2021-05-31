//
//  ContactsViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 30.05.2021.
//

import UIKit

class ContactsViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var telegramButton: UIButton!
    @IBOutlet weak var instagramButton: UIButton!
    @IBOutlet weak var hhButton: UIButton!

    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        setCornerRadiusForButton(button: telegramButton)
        setCornerRadiusForButton(button: instagramButton)
        setCornerRadiusForButton(button: hhButton)
        setGradientToBackgroundView(view: view, firstColor: .systemIndigo, secondColor: .purple)
    }
    
    //MARK: Actions
    @IBAction func telegramButtonTapped(_ sender: Any) {
        prepareAndOpenURL(urlString: user.person.linksToContact["Telegram"] ?? "")
    }
    
    @IBAction func instagramButtonTapped(_ sender: Any) {
        prepareAndOpenURL(urlString: user.person.linksToContact["Instagram"] ?? "")
    }
    
    @IBAction func hhButtonTapped(_ sender: Any) {
        prepareAndOpenURL(urlString: user.person.linksToContact["HeadHunter"] ?? "")
    }
    
}
