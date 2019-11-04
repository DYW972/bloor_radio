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
    
    @IBOutlet private weak var micItemButton: UIBarButtonItem!
    @IBOutlet private weak var searchItemButton: UIBarButtonItem!
    @IBOutlet private weak var profileItemButton: UIBarButtonItem!
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Private Properties
    
    let videos: [Video] = Video.fetchVideo()
        
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
//        addNavigationBarImage()
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
        
        let bannerX = bannerW - imageSizeWidth / 2
        let bannerY = bannerH - imageSizeHeight / 2
        
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

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! HomeTableViewCell
        let video = videos[indexPath.row]
        cell.video = video
        return cell
    }
}
