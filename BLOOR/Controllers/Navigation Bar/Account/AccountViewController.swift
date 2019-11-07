//
//  AccountViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 02.11.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit

final class AccountViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    @IBAction func didPressBackButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
