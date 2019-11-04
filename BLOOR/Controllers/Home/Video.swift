//
//  Video.swift
//  BLOOR
//
//  Created by Damien Rojo on 04.11.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import Foundation

struct Video {
    var imageOfVideo: String
    var profileImage: String
    var titleText: String
    var infoText: String
    
    static func fetchVideo() -> [Video] {
        let v1 = Video(imageOfVideo: "Alita", profileImage: "IMG_1561" ,titleText: "Alita 2019 - critique sans spoil", infoText: "NOYSES - 25 k vues - il y a 5 heures")
        let v2 = Video(imageOfVideo: "Fifa", profileImage: "IMG_1561", titleText: "Fifa test du mode ultimate Team", infoText: "NOYSES - 500 k vues - il y a 1 mois")
        let v3 = Video(imageOfVideo: "Amsterdam", profileImage: "IMG_1561", titleText: "Vlog voyage à Amsterdam", infoText: "NOYSES - 500 vues - il y a 1 heures")
        
        return [v1, v2, v3]
    }
}
