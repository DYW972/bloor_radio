//
//  HomeTableViewCell.swift
//  BLOOR
//
//  Created by Damien Rojo on 04.11.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit

final class HomeTableViewCell : UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var imageOfVideoImageView: UIImageView!
    
    @IBOutlet weak var profileImageButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infosLabel: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    
    // MARK: - Helpers
    
    var video: Video! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        imageOfVideoImageView.image = UIImage(named: video.imageOfVideo)
        titleLabel.text = video.titleText
        infosLabel.text = video.infoText
    }
    
    // MARK: - Actions
    
    @IBAction func didPressProfileImageButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didPressInfoButton(_ sender: UIButton) {
    }
    
}
