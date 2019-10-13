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
    
       @IBOutlet weak var bloorLogoImageView: UIImageView!
       @IBOutlet weak var bloorRadioLabel: UILabel!
       @IBOutlet weak var mailTextField: UITextField!
       @IBOutlet weak var passwordTextField: UITextField!
       
       @IBOutlet weak var youDontHaveAnAccountLabel: UILabel!
       @IBOutlet private weak var signUpButton: UIButton!
       @IBOutlet weak var logInbutton: UIButton!
    
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
    
    @IBAction func didPressMailTextField(_ sender: UITextField) {
           viewModel.didPressMailText()
           mailTextField.textColor = UIColor(named: "Black")
       }
       
       @IBAction func didPressPasswordTextField(_ sender: UITextField) {
       }
       
       @IBAction func didPressSignUpButton(_ sender: UIButton) {
       }
       
       @IBAction func didPressLogInButton(_ sender: UIButton) {
           viewModel.didPressLogIn()
           self.ref = Database.database().reference()
           self.ref.child("users").child("Name").setValue(["username": self.mailTextField.text])
       }
}
