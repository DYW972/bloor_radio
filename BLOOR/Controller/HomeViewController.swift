//
//  HomeViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 12.10.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit


final class HomeViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var micItemButton: UIBarButtonItem!
    @IBOutlet weak var searchItemButton: UIBarButtonItem!
    @IBOutlet weak var profileItemButton: UIBarButtonItem!
    
    // MARK: - Private Properties
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavigationBarImage()
    }
    
    // MARK: - Helpers
    
    func addNavigationBarImage() {
        let navController = navigationController
        
        let image = UIImage(named: "BloorLogoButton")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController?.navigationBar.frame.size.width
        let bannerHeight = navController?.navigationBar.frame.size.height
        
        guard let bannerW = bannerWidth else { return }
        guard let bannerH = bannerHeight else { return }
        guard let imageSizeWidth = image?.size.width else { return }
        guard let imageSizeHeight = image?.size.height else { return }
        
        let bannerX = bannerW / 2 - imageSizeWidth / 2
        let bannerY = bannerH / 2 - imageSizeHeight / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerW, height: bannerH)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
    // MARK: - Actions
    
    @IBAction func didPressMicItemButton(_ sender: UIBarButtonItem) {
    }
    @IBAction func didPressSearchItemButton(_ sender: UIBarButtonItem) {
    }
    @IBAction func didPressProfileItemButton(_ sender: UIBarButtonItem) {
    }
    
}

