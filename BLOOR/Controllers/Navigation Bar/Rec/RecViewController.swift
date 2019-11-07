//
//  RecViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 07.11.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit

final class RecViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    // MARK: - Actions
    
    @IBAction func didPressBackButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
