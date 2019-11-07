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
    
    @IBOutlet weak var imageOfPodcastsImageView: UIImageView!
    
    @IBOutlet weak var profileImageButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infosLabel: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    
    // MARK: - Helpers
    
    var podcast: Podcasts! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        imageOfPodcastsImageView.image = UIImage(named: podcast.imageOfVideo)
        titleLabel.text = podcast.titleText
        infosLabel.text = podcast.infoText
    }
    
    // MARK: - Actions
    
    @IBAction func didPressProfileImageButton(_ sender: UIButton) {
        
    }
    
    @IBAction func didPressInfoButton(_ sender: UIButton) {
    }
    
}
