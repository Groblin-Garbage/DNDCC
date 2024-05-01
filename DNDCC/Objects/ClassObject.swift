//
//  classObject.swift
//  DNDCC
//
//  Created by CC on 4/3/24.
//

import Foundation

class ClassObject {
    var name: String
    var hitDie: String
    var profAmount: Int  // how many of the optional proficiencies you can choose
    var profChoices: [ProficiencyObject]  // choices like athletics or animal handling
    var profAdded: String  // guarunteed proficiencies like shields or martial weapons
    var savingThrows: [String]  // "con", "int", "str" format
    var subclasses: [String]
    var subclassLevel: Int
    var classFeats: [String]
    
    init(name: String, hitDie: String, profAmount: Int, profChoices: [ProficiencyObject], profAdded: String, savingThrows: [String], subclasses: [String], subclassLevel: Int, classFeats: [String]) {
        self.name = name
        self.hitDie = hitDie
        self.profAmount = profAmount
        self.profChoices = profChoices
        self.profAdded = profAdded
        self.savingThrows = savingThrows
        self.subclasses = subclasses
        self.subclassLevel = subclassLevel
        self.classFeats = classFeats
    }
}
