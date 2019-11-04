//
//  ProfileViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 04.11.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var profileSegmentedControl: UISegmentedControl!
    
    @IBAction func didPressBackButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
