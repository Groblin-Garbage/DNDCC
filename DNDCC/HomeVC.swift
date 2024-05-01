//
//  homeVC.swift
//  DNDCC
//
//  Created by Genghis Khan on 3/21/24.
//

import UIKit

class HomeVC: UIViewController {

    var spells = [SpellObject]()
    var classes = [ClassObject]()
    var test = ["word1", "word2"]
    
    var totalClassNum: Int = 0
    var totalRaceNum: Int = 0
    
    var instantaneous = "Instantaneous"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Counting Classes!")
        countClasses()
        print("Counting Races!")
        countRaces()
        
        print("adding classes!")
        addClasses()
        print(classes)
        for num in 0..<classes.count {
            print(classes[num].name)
        }
        addRaces()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendInfoSegue" {
            let infoVC = segue.destination as! InfoVC
            addSpells()
            addClasses()
            
            
            infoVC.spells = spells
            infoVC.classes = classes
            infoVC.test = test
        }
    }
    
    
    
    
    
    //RACES
    func addRaces() {
        
    }
    
    //SUBRACES
    func addSubraces() {
        
    }
    
    //CLASSES
    func addClasses() {
        print("hi")
        var bookmark = 3
        var counter = 0
        for _ in counter...totalClassNum {
            bookmark = 3
            counter += 1
            if let classFilePath = Bundle.main.path(forResource: "Class\(counter)", ofType: "txt") {
                print("file path found!")
                if let classContents = try? String(contentsOfFile: classFilePath) {
                    print("Class\(counter)")
                    let classData = classContents.components(separatedBy: "|")
                    print("contents seperated!")
                    var profChoices: [ProficiencyObject] = []
                    var profAmount = 0
                    if let profLength = try? Int(classData[bookmark]) {
                        profAmount = profLength
                        for index in 1...profLength {
                            bookmark = 3 + index
                            profChoices.append(ProficiencyObject(name: classData[(bookmark)], proficiency: false, expertise: false))
                        }
                        bookmark = 7 + profAmount
                        print(profAmount)
                        print(bookmark)
                    }
                    var subclasses: [String] = []
                    var subAmount = 0
                    if let subLength = try? Int(classData[bookmark]) {
                        var tempMark = bookmark
                        subAmount = subLength
                        for index in 1...subLength {
                            tempMark = bookmark + index
                            print(tempMark)
                            subclasses.append(classData[tempMark])
                        }
                        bookmark = tempMark + 1
                        print(subAmount)
                        print(bookmark)
                    }
                    var classFeats: [String] = []
                    print(bookmark)
                    print(classData.count)
                    for index in bookmark...classData.count {
                            classFeats.append(classData[index - 1])
                    }
                    print(bookmark)
                    print(classData[bookmark])
                    classes.append(ClassObject(name: classData[0], hitDie: classData[1], profAmount: Int(classData[2])!, profChoices: profChoices, profAdded: classData[4 + profAmount], savingThrows: [classData[5 + profAmount], classData[6 + profAmount]], subclasses: subclasses, subclassLevel: Int(classData[bookmark])!, classFeats: classFeats))
                    print(classes[counter - 1].name)
                    print(classes[counter - 1].hitDie)
                    print(classes[counter - 1].subclassLevel)
                }
            }
        }
        
//        classes.append(ClassObject(name: "Barbarian", hitDie: 12, profAmount: 2, profChoices: [ProficiencyObject(name: "Animal Handling", proficiency: true, expertise: false), ProficiencyObject(name: "Athletics", proficiency: true, expertise: false), ProficiencyObject(name: "Intimidation", proficiency: true, expertise: false)], profAdded: [ProficiencyObject(name: "Shields", proficiency: true, expertise: false)], savingThrows: ["str", "con"], startingEquipment: [], subclasses: []))
    }
    
    //SUBCLASSES
    func addSubclasses() {
        
    }
    
    //SPELLS
    func addSpells() {
//        spells.append(SpellObject(name: "Acid Arrow", level: 2, components: ["V", "S", "M"], material: "powdered rhubarb leaf and an adder’s stomach", range: "90 ft", description: "A shimmering green arrow streaks toward a target within range and bursts in a spray of acid. Make a ranged spell attack against the target. On a hit, the target takes 4d4 acid damage immediately and 2d4 acid damage at the end of its next turn. On a miss, the arrow splashes the target with acid for half as much of the initial damage and no damage at the end of its next turn At Higher Levels. When you cast this spell using a spell slot of 3rd level or higher, the damage (both initial and later) increases by 1d4 for each slot level above 2nd.", ritual: false, concentration: false, duration: instantaneous, castingTime: "1 Action"))
//
//        spells.append(SpellObject(name: "Acid Splash", level: 0, components: ["V", "S"], material: "", range: "60 ft", description: "You hurl a bubble of acid. Choose one or two creatures you can see within range. If you choose two, they must be within 5 feet of each other. A target must succeed on a Dexterity saving throw or take 1d6 acid damage. This spell’s damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).", ritual: false, concentration: false, duration: instantaneous, castingTime: "1 Action"))
//
//        spells.append(SpellObject(name: "Aid", level: 2, components: ["V", "S", "M"], material: "a tiny strip of white cloth", range: "30 ft", description: "Your spell bolsters your allies with toughness and resolve. Choose up to three creatures within range. Each target's hit point maximum and current hit points increase by 5 for the duration. At Higher Levels. When you cast this spell using a spell slot of 3rd level or higher, a target's hit points increase by an additional 5 for each slot level above 2nd.", ritual: false, concentration: false, duration: "8 Hours", castingTime: "1 Action"))
//
//        spells.append(SpellObject(name: "Alarm", level: 1, components: ["V", "S", "M"], material: "a tiny bell and a piece of fine silver wire)", range: "30 ft", description: "You set an alarm against unwanted intrusion. Choose a door, a window, or an area within range that is no larger than a 20-foot cube. Until the spell ends, an alarm alerts you whenever a Tiny or larger creature touches or enters the warded area. When you cast the spell, you can designate creatures that won't set off the alarm. You also choose whether the alarm is mental or audible. A mental alarm alerts you with a ping in your mind if you are within 1 mile of the warded area. This ping awakens you if you are sleeping. An audible alarm produces the sound of a hand bell for 10 seconds within 60 feet.", ritual: true, concentration: false, duration: "8 Hours", castingTime: "1 Minute"))
    }
    
    
    func countClasses() {
        var counter = 1
        while Bundle.main.path(forResource: "Class\(counter)", ofType: "txt") != nil {
            
            counter += 1
            print("Counting Classes: \(counter)")
        }
        totalClassNum = counter - 1
    }
    
    func countRaces() {
        var counter = 1
        while Bundle.main.path(forResource: "Race\(counter)", ofType: "txt") != nil {
            counter += 1
            print("Counting Races: \(counter)")
        }
        totalRaceNum = counter - 1
        print(counter)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
