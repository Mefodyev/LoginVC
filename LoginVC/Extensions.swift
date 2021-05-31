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
    
    //MARK: UIAlertController Extensions
    func showAlert(title: String, message: String, titleForOK: String) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: titleForOK, style: .default, handler: nil )
        ac.addAction(okAction)
        self.present(ac, animated: true, completion: nil)
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
