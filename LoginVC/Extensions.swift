//
//  Extensions.swift
//  LoginVC
//
//  Created by Alexey Mefodyev on 30.05.2021.
//

import UIKit

extension UIViewController {
    
    //MARK: UIView Extensions
    func setGradientToBackgroundView(view: UIView, firstColor: UIColor, secondColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    //MARK: UIButton Extensions
    func setCornerRadiusForButton(button: UIButton) {
        button.layer.cornerRadius = button.frame.size.height/2
    }
    
    //MARK: Network Extensions
    func prepareAndOpenURL(urlString: String) {
        let urlToCheck = NSURL(string: urlString)
        guard let urlToOpen = urlToCheck else {
            print("URL not found")
            return
        }
        UIApplication.shared.open(urlToOpen as URL)
    }
    

}
