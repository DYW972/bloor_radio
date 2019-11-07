//
//  LogInViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 14.10.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit

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
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func bind(to viewModel: LogInViewModel) {
    
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
            viewModel.connectUser(mail: mailTextField.text, password: passwordTextField.text)
        
       }
}
