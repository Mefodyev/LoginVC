//
//  ContactsViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 30.05.2021.
//

import UIKit

class ContactsViewController: UIViewController {

    private let myTelegram = "https://t.me/mefodyev"
    private let myInstagram = "https://www.instagram.com/mefodyev/"
    private let myHh = "https://hh.ru/resume/b72e1aa8ff064de1510039ed1f45797145746d"


    @IBOutlet weak var telegramButton: UIButton!
    @IBOutlet weak var instagramButton: UIButton!
    @IBOutlet weak var hhButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        setCornerRadiusForButton(button: telegramButton)
        setCornerRadiusForButton(button: instagramButton)
        setCornerRadiusForButton(button: hhButton)
        setGradientToBackgroundView(view: view, firstColor: .systemIndigo, secondColor: .purple)
    }
    
    @IBAction func telegramButtonTapped(_ sender: Any) {
        prepareAndOpenURL(urlString: myTelegram)
    }
    
    @IBAction func instagramButtonTapped(_ sender: Any) {
        prepareAndOpenURL(urlString: myInstagram)
    }
    
    @IBAction func hhButtonTapped(_ sender: Any) {
        prepareAndOpenURL(urlString: myHh)
    }
    
}
