//
//  proficiency.swift
//  DNDCC
//
//  Created by CC on 4/3/24.
//

import Foundation

class ProficiencyObject {
    
    
    //this one below seems like a better way of doing it I think im gonna change it later after I check with G.K.
    var name: String
    var proficiency: Bool
    var expertise: Bool

    init(name: String, proficiency: Bool, expertise: Bool) {
        self.name = name
        self.proficiency = proficiency
        self.expertise = expertise
    }
    
}
