//
//  LoginViewController.swift
//  CMMedAppointment
//
//  Created by Unni K S on 4/27/18.
//  Copyright © 2018 calmove. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollBottomSpacing: NSLayoutConstraint!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var userNameText: CustomTextView!
    @IBOutlet weak var passwordText: CustomTextView!
    
    override func viewDidLoad() {
        let notifyCenter = NotificationCenter.default
        notifyCenter.addObserver(self, selector: #selector(self.onKeyboardShow), name: .UIKeyboardDidShow, object: nil)
        notifyCenter.addObserver(self, selector: #selector(self.onKeyboardHide), name: .UIKeyboardDidHide, object: nil)
    }
    
    @objc func onKeyboardShow(notification:NSNotification ) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            scrollBottomSpacing.constant = keyboardHeight
        }
    }
    
    @objc func onKeyboardHide(notification:NSNotification ) {
        scrollBottomSpacing.constant = 0
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
