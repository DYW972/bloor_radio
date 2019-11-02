//
//  SignUpViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 14.10.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit


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
        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    
    private func bind(to viewModel: SignUpViewModel) {
    
        viewModel.navigateTo = { [weak self] screen in
            switch screen {
            case .alert(alertConfiguration: let configuration):
                self?.displayAlert(with: configuration)
            }
        }
    }
    
    // MARK: - Helpers
    
    private func displayAlert(with configuration: AlertConfiguration) {
        let alertVC = UIAlertController(title: configuration.title,
                                        message: configuration.message,
                                        preferredStyle: .alert)
        
        alertVC.addAction(UIAlertAction(title: configuration.okTitle, style: .cancel, handler: nil))
        self.present(alertVC, animated: true, completion: nil)
    }
    
    private func passwordIsValid(password: String?, confirmPassword: String?) {
        
        if let passwordInput = password, let confirmPasswordInput = confirmPassword {

            if passwordInput.count < 6 {
                passwordTextField.layer.borderColor = UIColor.red.cgColor
            } else {
                passwordTextField.layer.borderColor = UIColor.green.cgColor
            }
        
            if confirmPasswordInput != passwordInput {
                confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
            } else {
                confirmPasswordTextField.layer.borderColor = UIColor.green.cgColor
            }
        }
    }
    
    
    // MARK: - Actions
    
    @IBAction private func didPressAddProfileImageButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didPressUsernameTextField(_ sender: Any) {
        
    }
    
    @IBAction func didPressMailTextField(_ sender: Any) {
        
    }
    
    @IBAction func didPressPasswordTextField(_ sender: Any) {
        passwordIsValid(password: passwordTextField.text, confirmPassword: confirmPasswordTextField.text)
    }
    
    @IBAction func didPressConfirmPasswordTextField(_ sender: Any) {
        passwordIsValid(password: passwordTextField.text, confirmPassword: confirmPasswordTextField.text)
    }
    
    
    @IBAction private func didPressSignUpButton(_ sender: UIButton) {
        viewModel.allFieldAreFilled(username: usernameTextField.text, mail: mailTextField.text, password: passwordTextField.text, confirmPassword: confirmPasswordTextField.text)
    }
}
