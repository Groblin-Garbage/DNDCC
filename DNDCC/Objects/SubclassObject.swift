//
//  subclassObject.swift
//  DNDCC
//
//  Created by CC on 4/5/24.
//

import Foundation

class SubclassObject: ClassObject {
    var subName: String
    var subProfAmount: Int  // how many of the optional proficiencies you can choose
    var subProfChoices: [ProficiencyObject]  // choices like athletics or animal handling
    var subProfAdded: [ProficiencyObject]  // guarunteed proficiencies like shields or martial weapons
    var subclassFeats: [String]
    
    init(subName: String, subProfAmount: Int, subProfChoices: [ProficiencyObject], subProfAdded: [ProficiencyObject], subclassFeats: [String]) {
        self.subName = subName
        self.subProfAmount = subProfAmount
        self.subProfChoices = subProfChoices
        self.subProfAdded = subProfAdded
        self.subclassFeats = subclassFeats
    }

    
    
}
