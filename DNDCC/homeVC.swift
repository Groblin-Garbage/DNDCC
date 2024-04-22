//
//  homeVC.swift
//  DNDCC
//
//  Created by Genghis Khan on 3/21/24.
//

import UIKit

class homeTVC: UITableViewController {

    var spells = [SpellObject]()
    var instantaneous = "Instantaneous"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoVC = segue.destination as! InfoVC
        infoVC.spells = spells
        
    }
    
    func addSpells() {
        spells.append(SpellObject(name: "Acid Arrow", level: 2, components: ["V", "S", "M"], material: "powdered rhubarb leaf and an adder’s stomach", range: "90 ft", description: "A shimmering green arrow streaks toward a target within range and bursts in a spray of acid. Make a ranged spell attack against the target. On a hit, the target takes 4d4 acid damage immediately and 2d4 acid damage at the end of its next turn. On a miss, the arrow splashes the target with acid for half as much of the initial damage and no damage at the end of its next turn At Higher Levels. When you cast this spell using a spell slot of 3rd level or higher, the damage (both initial and later) increases by 1d4 for each slot level above 2nd.", ritual: false, concentration: false, duration: instantaneous, castingTime: "1 Action"))
        
        spells.append(SpellObject(name: "Acid Splash", level: 0, components: ["V", "S"], material: "", range: "60 ft", description: "You hurl a bubble of acid. Choose one or two creatures you can see within range. If you choose two, they must be within 5 feet of each other. A target must succeed on a Dexterity saving throw or take 1d6 acid damage. This spell’s damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).", ritual: false, concentration: false, duration: instantaneous, castingTime: "1 Action"))
        
        spells.append(SpellObject(name: "Aid", level: 2, components: ["V", "S", "M"], material: "a tiny strip of white cloth", range: "30 ft", description: "Your spell bolsters your allies with toughness and resolve. Choose up to three creatures within range. Each target's hit point maximum and current hit points increase by 5 for the duration. At Higher Levels. When you cast this spell using a spell slot of 3rd level or higher, a target's hit points increase by an additional 5 for each slot level above 2nd.", ritual: false, concentration: false, duration: "8 Hours", castingTime: "1 Action"))
        
        spells.append(SpellObject(name: "Alarm", level: 1, components: ["V", "S", "M"], material: "a tiny bell and a piece of fine silver wire)", range: "30 ft", description: "You set an alarm against unwanted intrusion. Choose a door, a window, or an area within range that is no larger than a 20-foot cube. Until the spell ends, an alarm alerts you whenever a Tiny or larger creature touches or enters the warded area. When you cast the spell, you can designate creatures that won't set off the alarm. You also choose whether the alarm is mental or audible. A mental alarm alerts you with a ping in your mind if you are within 1 mile of the warded area. This ping awakens you if you are sleeping. An audible alarm produces the sound of a hand bell for 10 seconds within 60 feet.", ritual: true, concentration: false, duration: "8 Hours", castingTime: "1 Minute"))
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
