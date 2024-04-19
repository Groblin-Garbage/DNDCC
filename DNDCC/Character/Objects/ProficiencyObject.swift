//
//  proficiency.swift
//  DNDCC
//
//  Created by CC on 4/3/24.
//

import Foundation

class ProficiencyObject {
    
    
    var name: String
    var proficiency: Bool
    var expertise: Bool

    init(name: String, proficiency: Bool, expertise: Bool) {
        self.name = name
        self.proficiency = proficiency
        self.expertise = expertise
    }
    
}
