//
//  ViewController.swift
//  ToDoFIRE
//
//  Created by Роман Пшеничников on 01.08.2025.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var warnLabel: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(kbDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(kbDidHide), name: UIResponder.keyboardDidHideNotification, object: nil)
        
        scrollView.alwaysBounceVertical = true
        scrollView.keyboardDismissMode = .interactive
        
    }
    
    @objc func kbDidShow(notification: Notification) {
        guard let userInfo = notification.userInfo,
              let kbFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else { return }

        scrollView.contentInset.bottom = kbFrame.height
        scrollView.verticalScrollIndicatorInsets.bottom = kbFrame.height
    }

    @objc func kbDidHide(notification: Notification) {
        scrollView.contentInset.bottom = 0
        scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
    
    func displayWarningLabel(withText text: String) {
        warnLabel.text = text
        warnLabel.isHidden = false
        
        UIView.animate(withDuration: 0.3) {
        }
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func registerTapped(_ sender: UIButton) {
        
    }
    


}

