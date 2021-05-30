//
//  HobbiesViewController.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 30.05.2021.
//

import UIKit

class HobbiesViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var hobbiesTextView: UITextView!

    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        setGradientToBackgroundView(view: view, firstColor: .systemPink, secondColor: .purple)
        hobbiesTextView.text = user.person.hobbies
    }

}
