//
//  Podcasts.swift
//  BLOOR
//
//  Created by Damien Rojo on 06.11.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import Foundation


struct Podcasts {
    var imageOfVideo: String
    var profileImage: String
    var titleText: String
    var infoText: String
    
    static func fetchVideo() -> [Podcasts] {
        let p1 = Podcasts(imageOfVideo: "Alita", profileImage: "IMG_1561" ,titleText: "Alita 2019 - critique sans spoil", infoText: "NOYSES - 25 k vues - il y a 5 heures")
        let p2 = Podcasts(imageOfVideo: "Fifa", profileImage: "IMG_1561", titleText: "Fifa test du mode ultimate Team", infoText: "NOYSES - 500 k vues - il y a 1 mois")
        let p3 = Podcasts(imageOfVideo: "Amsterdam", profileImage: "IMG_1561", titleText: "Vlog voyage à Amsterdam", infoText: "NOYSES - 500 vues - il y a 1 heures")
        
        return [p1, p2, p3]
    }
}
