//
//  SignUpViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 14.10.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit
import FirebaseAuth

final class SignUpViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet private weak var signUpLabel: UILabel!
    @IBOutlet private weak var addProfileImageButton: UIButton!
    
    @IBOutlet private weak var usernameTextField: UITextField! {
        didSet {
            usernameTextField.layer.borderWidth = 0.5
            usernameTextField.layer.cornerRadius = 5.0
            usernameTextField.layer.borderColor = UIColor.gray.cgColor
        }
    }
    @IBOutlet private weak var mailTextField: UITextField! {
        didSet {
            mailTextField.layer.borderWidth = 0.5
            mailTextField.layer.cornerRadius = 5.0
            mailTextField.layer.borderColor = UIColor.gray.cgColor
        }
    }
    @IBOutlet private weak var passwordTextField: UITextField! {
        didSet {
            passwordTextField.layer.borderWidth = 0.5
            passwordTextField.layer.cornerRadius = 5.0
            passwordTextField.layer.borderColor = UIColor.gray.cgColor
        }
    }
    @IBOutlet private weak var confirmPasswordTextField: UITextField! {
        didSet {
            confirmPasswordTextField.layer.borderWidth = 0.5
            confirmPasswordTextField.layer.cornerRadius = 5.0
            confirmPasswordTextField.layer.borderColor = UIColor.gray.cgColor
        }
    }
    @IBOutlet private weak var signUpButton: UIButton!

    // MARK: - Private Properties
    
    private let viewModel = SignUpViewModel()
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Helpers
    
    private func allFieldsAreFilled() {
        
        if let usernameInput = self.usernameTextField.text, let mailInput = self.mailTextField.text, let passwordInput = self.passwordTextField.text, let confirmPasswordInput = self.confirmPasswordTextField.text {
            
            let username = usernameInput
            let mail = mailInput
            let password = passwordInput
            let confimPassword = confirmPasswordInput
            
            if username.isEmpty || mail.isEmpty || password.isEmpty || confimPassword.isEmpty {
                fieldsAlert(message: "Tous les champs doivent être remplis")
            } else {
                registerNewUser()
            }
        }
    }
    
    private func fieldsAlert(message: String) {
        let alertVC = UIAlertController(title: "Attention", message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alertVC, animated: true, completion: nil)
    }
    
    private func passwordIsConfirmed() {
        if let passwordInput = self.passwordTextField, let confirmPasswordInput = self.confirmPasswordTextField {
            let password = passwordInput
            let confirmPassword = confirmPasswordInput
            
            if confirmPassword.text == password.text {
                confirmPasswordTextField.layer.borderColor = UIColor.green.cgColor
            } else {
                let myColor = UIColor.red
                confirmPassword.layer.borderColor = myColor.cgColor
            }
        }
    }
    
    private func registerNewUser() {
        var email: String
        var password: String
        
        if let mailInput = self.mailTextField.text, let passwordInput = self.passwordTextField.text {
            email = mailInput
            password = passwordInput
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            }
            
        } else {
            email = ""
            password = ""
        }
    }
    
    // MARK: - Actions
    
    @IBAction private func didPressAddProfileImageButton(_ sender: UIButton) {
        
    }
    
    @IBAction private func didPressUsernameTextField(_ sender: UITextField) {
        
    }
    
    @IBAction private func didPressMailTextField(_ sender: UITextField) {
    
    }
    
    @IBAction private func didPressPasswordTextField(_ sender: UITextField) {
    
    }
    
    @IBAction func didPressConfirmPasswordTextField(_ sender: Any) {
        passwordIsConfirmed()
    }
    
    
    @IBAction private func didPressSignUpButton(_ sender: UIButton) {
        allFieldsAreFilled()
    }
}
