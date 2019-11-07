//
//  ProfileSegmentedControl.swift
//  BLOOR
//
//  Created by Damien Rojo on 06.11.19.
//  Copyright © 2019 Damien Rojo. All rights reserved.
//

import UIKit


final class ProfileSegmentedControl: UISegmentedControl {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 0
        layer.backgroundColor = UIColor.systemPink.cgColor
    }
}
