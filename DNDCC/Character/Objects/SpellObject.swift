//
//  spell.swift
//  DNDCC
//
//  Created by CC on 4/2/24.
//

import Foundation

class SpellObject {
    var name: String
    var level: Int
    var components: [String]
    var material: String
    var range: String
    var description: String
    var ritual: Bool
    var concentration: Bool
    var duration: String
    var castingTime: String
    
    
    init(name: String, level: Int, components: [String], material: String, range: String, description: String, ritual: Bool, concentration: Bool, duration: String, castingTime: String) {
        self.name = name
        self.level = level
        self.components = components
        self.material = material
        self.range = range
        self.description = description
        self.ritual = ritual
        self.concentration = concentration
        self.duration = duration
        self.castingTime = castingTime
    }
    
    
    
    
}
