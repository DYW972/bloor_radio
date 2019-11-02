//
//  SignUpViewModel.swift
//  BLOOR
//
//  Created by Damien Rojo on 14.10.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import Foundation
import FirebaseDatabase
import FirebaseAuth

struct AlertConfiguration {
    let title: String
    let message: String
    let okTitle: String
}

final class SignUpViewModel {
    
    enum NextScreen {
        case alert(alertConfiguration: AlertConfiguration)
    }
    
    private var ref: DatabaseReference!
    
    // MARK: - Outputs
    
    var navigateTo: ((NextScreen) -> Void)?

    // MARK: - Private Properties

    
    
    // MARK: - Private functions
    
    func allFieldAreFilled(username: String?, mail: String?, password: String?, confirmPassword: String?) {
        
        if let usernameInput = username, let mailInput = mail, let passwordInput = password, let confirmPasswordInput = confirmPassword {
            
            if usernameInput.isEmpty || mailInput.isEmpty || passwordInput.isEmpty || confirmPasswordInput.isEmpty {
                navigateTo?(.alert(alertConfiguration: AlertConfiguration(title: "Attention", message: "Tous les champs doivent être remplis", okTitle: "D'accord")))
            } else {
                registerNewUser(username: usernameInput, mail: mailInput, password: passwordInput)
            }
        }

    }

    private func registerNewUser(username: String?, mail: String?, password: String?) {
        if let usernameInput = username, let mailInput = mail, let passwordInput = password {
            
            Auth.auth().createUser(withEmail: mailInput, password: passwordInput) { authResult, error in
                if error == nil {
                    let user = authResult?.user
                    if let userId = user {
                          self.ref = Database.database().reference()
                          self.ref.child("users").child(userId.uid).setValue(["Username": usernameInput])
                    }
                } else {
                    print("Erreur")
                }
            }
        }
    }

    // MARK: - Inputs
    
    func viewDidLoad() {
        
    }
    
    func didPressSignIn() {
    }
}
