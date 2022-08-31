//
//  LoginPopupViewController.swift
//  PopupExample
//
//  Created by Jaewon on 2022/08/31.
//

import UIKit

final class LoginPopupViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapCancelButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func didTapLoginButton(_ sender: UIButton) {
        let id = idTextField.text!
        let password = passwordTextField.text!
        print("ID: \(id)")
        print("Password: \(password)")
        self.dismiss(animated: true)
    }
    
    @IBAction func didTapBackgroundView(_ sender: UITapGestureRecognizer) {
        self.dismiss(animated: true)
    }
}
