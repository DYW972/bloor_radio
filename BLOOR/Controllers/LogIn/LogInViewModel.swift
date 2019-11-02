//
//  LogInViewModel.swift
//  BLOOR
//
//  Created by Damien Rojo on 14.10.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import Foundation
import FirebaseDatabase
import FirebaseAuth

final class LogInViewModel {

    enum NextScreen {
        case alert(alertConfiguration: AlertConfiguration)
    }
    
    private var ref: DatabaseReference!
    
    // MARK: - Outputs
    
    var navigateTo: ((NextScreen) -> Void)?

    // MARK: - Private Properties
    
    // MARK: - Helpers
    
    func autorization() {
        navigateTo?(.alert(alertConfiguration: AlertConfiguration(title: "Attention", message: "Votre adresse mail ou votre mot de passe n'est pas valide", okTitle: "D'accord")))
    }
    
    
    func connectUser(mail: String?, password: String?) {
        
        if let mailInput = mail, let passwordInput = password {
            
            Auth.auth().signIn(withEmail: mailInput, password: passwordInput) { user, error in

                if error == nil && user != nil {
                    print("Vous etes conecté")
                } else {
                    print("Erreur")
                }
            }
        }
    }
    
    // MARK: - Inputs
    
    func viewDidLoad() {
    }
    
    func didPressMailText() {
    }
    
    func didPressPasswordText() {
        
    }
    
    func didPressSignUp() {
        
    }
    
    func didPressLogIn() {
        
    }
}
