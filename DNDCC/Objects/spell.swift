//
//  spell.swift
//  DNDCC
//
//  Created by CC on 4/2/24.
//

import Foundation

class spell {
    var level: Int
    var verbal: Bool
    var somatic: Bool
    var material: String
    var range: String
    var description: String
    
    init(level: Int, verbal: Bool, somatic: Bool, material: String, range: String, description: String) {
        self.level = level
        self.verbal = verbal
        self.somatic = somatic
        self.material = material
        self.range = range
        self.description = description
    }
    
    
    
    
}
