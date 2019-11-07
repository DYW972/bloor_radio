//
//  ProfileViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 04.11.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var profileSegmentedControl: UISegmentedControl!
    
    // MARK: - Private Properties
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
         super.viewDidLoad()
     }
    
    // MARK: - Actions
    
    @IBAction func didPressBackButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}


