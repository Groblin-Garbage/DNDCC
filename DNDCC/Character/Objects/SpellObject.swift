//
//  spell.swift
//  DNDCC
//
//  Created by CC on 4/2/24.
//

import Foundation

class SpellObject {
    var level: Int
    var components: [String]
    var material: String
    var range: String
    var description: String
    
    init(level: Int, components: [String], material: String, range: String, description: String) {
        self.level = level
        self.components = components
        self.material = material
        self.range = range
        self.description = description
    }
    
    
    
    
}
