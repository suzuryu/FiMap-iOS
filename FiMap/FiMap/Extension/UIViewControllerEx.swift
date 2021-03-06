//
//  UIViewControllerEx.swift
//  FiMap
//
//  Created by AmamiYou on 2018/10/09.
//  Copyright © 2018 ammYou. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    /// Push ViewController on new NavigationController

    /// Sets the navigation bar menu on the left bar button.
    /// Also add the left gesture.
    func setLeftBackBarButtonItem(action: Selector = #selector(tappedBackButton), image: UIImage? = R.image.round_arrow_back_ios_black_48pt()) {
        let barButtonItem = UIBarButtonItem()
        let button = UIButton(frame: CGRect(x: 0.0, y: 0.0, width: 40.0, height: 30.0))
        button.setImage(image, for: .normal)
        button.imageView?.tintColor = Constants.Color.IMAGE_COLOR
        button.contentMode = .scaleAspectFit
//        button.setBackgroundImage(image, for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        barButtonItem.customView = button
        barButtonItem.customView?.widthAnchor.constraint(equalToConstant: 30.0).isActive = true
        barButtonItem.customView?.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
        barButtonItem.tintColor = UIColor.clear
        self.navigationItem.leftBarButtonItem = barButtonItem
    }

    /// Sets the navigation bar menu on the left bar button.
    /// Also add the left gesture.
    func setRightCloseBarButtonItem(action: Selector = #selector(tappedCloseButton), image: UIImage? = R.image.round_close_black_48pt()) {
        let barButtonItem = UIBarButtonItem()
        let button = UIButton(frame: CGRect(x: 0.0, y: 0.0, width: 40.0, height: 30.0))
        button.setImage(image, for: .normal)
        button.imageView?.tintColor = Constants.Color.IMAGE_COLOR
        button.contentMode = .scaleAspectFit
//        button.setBackgroundImage(image, for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        barButtonItem.customView = button
        barButtonItem.customView?.widthAnchor.constraint(equalToConstant: 30.0).isActive = true
        barButtonItem.customView?.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
        barButtonItem.tintColor = UIColor.clear
        self.navigationItem.rightBarButtonItem = barButtonItem
    }

    @objc private func tappedBackButton() {
        self.navigationController?.popViewController(animated: true)
    }

    @objc private func tappedCloseButton() {
        self.navigationController?.popToRootViewController(animated: true)
    }

    func setNavigationBarTitleString(title: String) {
        let titleLbl = UILabel()
        titleLbl.font = UIFont.boldSystemFont(ofSize: 18)
        titleLbl.text = title
        titleLbl.sizeToFit()
        titleLbl.textColor = UIColor.black//Constants.Color.AppleGray
        titleLbl.textAlignment = .center
        titleLbl.contentMode = .scaleAspectFit
        self.navigationItem.titleView = titleLbl
    }

    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)

        let pan: UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        pan.cancelsTouchesInView = false
        view.addGestureRecognizer(pan)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    func pushNewNavigationController(rootViewController: UIViewController) {
        self.present(UINavigationController(rootViewController: rootViewController), animated: true, completion: nil)
    }

//    func setNavigationBarTitleLogo() {
//        let logoView = UIImageView(image: UIImage(named: "logo_pay_header"))
//        logoView.contentMode = .scaleAspectFit
//        self.navigationItem.titleView = logoView
//    }
}
