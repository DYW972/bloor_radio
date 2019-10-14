//
//  LogInViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 14.10.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit
import FirebaseDatabase

final class LogInViewControler: UIViewController {
    
    // MARK: - Outlets
    
       @IBOutlet private weak var bloorLogoImageView: UIImageView!
       @IBOutlet private weak var bloorRadioLabel: UILabel!
       @IBOutlet private weak var mailTextField: UITextField!
       @IBOutlet private weak var passwordTextField: UITextField!
       
       @IBOutlet private weak var youDontHaveAnAccountLabel: UILabel!
       @IBOutlet private weak var signUpButton: UIButton!
       @IBOutlet private weak var logInbutton: UIButton!
    
    // MARK: - Private Properties
    
    private let viewModel = LogInViewModel()
    
    private var ref: DatabaseReference!
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func bind(to viewModel: LogInViewModel) {
        
        viewModel.mailText = { [weak self] text in
            self?.mailTextField.text = text
        }
    
        viewModel.youDontHaveAnAccountText = { [weak self] text in
            self?.youDontHaveAnAccountLabel.text = text
        }
        
        viewModel.signUpText = { [weak self] text in
            self?.signUpButton.setTitle(text, for: .normal)
        }
        
        viewModel.logInText = { [weak self] text in
            self?.logInbutton.setTitle(text, for: .normal)
        }
    }
    
    // MARK: - Actions
    
    @IBAction private func didPressMailTextField(_ sender: UITextField) {
           viewModel.didPressMailText()
           mailTextField.textColor = UIColor(named: "Black")
       }
       
       @IBAction private func didPressPasswordTextField(_ sender: UITextField) {
       }
       
       @IBAction private func didPressSignUpButton(_ sender: UIButton) {
       }
       
       @IBAction private func didPressLogInButton(_ sender: UIButton) {
           viewModel.didPressLogIn()
           self.ref = Database.database().reference()
           self.ref.child("users").child("Name").setValue(["username": self.mailTextField.text])
       }
}
