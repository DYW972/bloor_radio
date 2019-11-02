//
//  SearchViewController.swift
//  BLOOR
//
//  Created by Damien Rojo on 02.11.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit

final class SearchViewController: UIViewController {
    
    // MARK: - Outlets
    

    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Helpers
    
    func createSearchBar() {
        let searchBar = UISearchBar()
        
        searchBar.showsCancelButton = false
        searchBar.placeholder = "Rechercher dans Bloor"
        
        navigationItem.titleView = searchBar
    }
    
    // MARK: - Actions
    @IBAction func didPressbackButton(_ sender: UIBarButtonItem) {
        
    }
}

extension SearchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        cell.backgroundColor = UIColor.white
        return cell
    }
}
