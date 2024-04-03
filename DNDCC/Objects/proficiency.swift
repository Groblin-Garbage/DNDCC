//
//  proficiency.swift
//  DNDCC
//
//  Created by CC on 4/3/24.
//

import Foundation

class proficiency {
    var athletics: String
    
    var acrobatics: String
    var sleightOfHand: String
    var stealth: String
    
    var arcana: String
    var history: String
    var investigation: String
    var nature: String
    var religion: String
    
    var animalHandling: String
    var insight: String
    var medicine: String
    var perception: String
    var survival: String
    
    var deception: String
    var intimidation: String
    var performance: String
    var persuation: String
    
    var extraProficiencies: [String]
    
    
    init(athletics: String, acrobatics: String, sleightOfHand: String, stealth: String, arcana: String, history: String, investigation: String, nature: String, religion: String, animalHandling: String, insight: String, medicine: String, perception: String, survival: String, deception: String, intimidation: String, performance: String, persuation: String, extraProficiencies: [String]) {
        self.athletics = athletics
        self.acrobatics = acrobatics
        self.sleightOfHand = sleightOfHand
        self.stealth = stealth
        self.arcana = arcana
        self.history = history
        self.investigation = investigation
        self.nature = nature
        self.religion = religion
        self.animalHandling = animalHandling
        self.insight = insight
        self.medicine = medicine
        self.perception = perception
        self.survival = survival
        self.deception = deception
        self.intimidation = intimidation
        self.performance = performance
        self.persuation = persuation
        self.extraProficiencies = extraProficiencies
    }
    
    //this one below seems like a better way of doing it I think im gonna change it later after I check with G.K.
//    var name: String
//    var proficiency: Bool
//    var expertise: Bool
//
//    init(name: String, proficiency: Bool, expertise: Bool) {
//        self.name = name
//        self.proficiency = proficiency
//        self.expertise = expertise
//    }
    
}
