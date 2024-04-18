//
//  background.swift
//  DNDCC
//
//  Created by CC on 4/3/24.
//

import Foundation

class BackgroundObject {
    var description: String
    var proficiencies: [String]
    var languages: [String]
    var equipment: [itemObject]
    var feature: [String]
    var baseGP: Int
    
    init(description: String, proficiencies: [String], languages: [String], equipment: [itemObject], feature: [String], baseGP: Int) {
        self.description = description
        self.proficiencies = proficiencies
        self.languages = languages
        self.equipment = equipment
        self.feature = feature
        self.baseGP = baseGP
    }
}
