//
//  AppDelegate.swift
//  BLOOR
//
//  Created by Damien Rojo on 12.10.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
       
        return true
    }
    
}
