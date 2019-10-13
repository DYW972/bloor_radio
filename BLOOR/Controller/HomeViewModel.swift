//
//  HomeViewModel.swift
//  BLOOR
//
//  Created by Damien Rojo on 12.10.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import Foundation

final class HomeViewModel {
    
    // MARK: - Outputs
    
    var mailText: ((String) -> Void)?
    var PasswordText: ((String) -> Void)?
    var youDontHaveAnAccountText: ((String) -> Void)?
    var signUpText: ((String) -> Void)?
    var logInText: ((String) -> Void)?
    
    // MARK: - Inputs
    
    func viewDidLoad() {
        self.youDontHaveAnAccountText?("Vous n'avez pas de compte ?")
        self.signUpText?("S'INSCRIRE")
        self.logInText?("SE CONNECTER")
    }
    
    func didPressMailText() {
        self.mailText?("")
    }
    
    func didPressPasswordText() {
        
    }
    
    func didPressSignUp() {
        
    }
    
    func didPressLogIn() {
    }
}
