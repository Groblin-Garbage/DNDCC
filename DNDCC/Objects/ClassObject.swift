//
//  classObject.swift
//  DNDCC
//
//  Created by CC on 4/3/24.
//

import Foundation

class ClassObject {
    var name: String
    var hitDie: Int
    var profAmount: Int  // how many of the optional proficiencies you can choose
    var profChoices: [ProficiencyObject]  // choices like athletics or animal handling
    var profAdded: [ProficiencyObject]  // guarunteed proficiencies like shields or martial weapons
    var savingThrows: [String]  // "con", "int", "str" format
    var startingEquipment: String
    var subclasses: [SubclassObject]
    var subclassLevel: Int
    var classFeats: [String]
    
    init(name: String, hitDie: Int, profAmount: Int, profChoices: [ProficiencyObject], profAdded: [ProficiencyObject], savingThrows: [String], startingEquipment: String, subclasses: [SubclassObject], subclassLevel: Int, classFeats: [String]) {
        self.name = name
        self.hitDie = hitDie
        self.profAmount = profAmount
        self.profChoices = profChoices
        self.profAdded = profAdded
        self.savingThrows = savingThrows
        self.startingEquipment = startingEquipment
        self.subclasses = subclasses
        self.subclassLevel = subclassLevel
        self.classFeats = classFeats
    }
}
