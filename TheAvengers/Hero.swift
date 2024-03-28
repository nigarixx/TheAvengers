//
//  Hero.swift
//  TheAvengers
//
//  Created by Nigar Alaskarova on 27.03.24.
//

import Foundation
import UIKit

class Hero {
    var name : String
    var realName : String
    var power : String
    var image : UIImage
    
    init(name: String, realName: String, power: String, image: UIImage) {
        self.name = name
        self.realName = realName
        self.power = power
        self.image = image
    }
}


