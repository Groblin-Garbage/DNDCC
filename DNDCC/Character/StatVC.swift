//
//  statVC.swift
//  DNDCC
//
//  Created by Genghis Khan on 4/5/24.
//

import UIKit

class StatVC: UIViewController {
    
    //str,dex,con,int,wis,cha
    var stats: [String] = ["Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma"]
    var statsUsed: [Bool] = [false, false, false, false, false, false]
    var diceUsed: [Bool] = [false, false, false, false, false, false]
    
    var rolledStats: [Int] = [6,6,6,6,6,6]
    var tempStats: [Int] = []
    
    @IBOutlet weak var rollAllButton: UIButton!
    @IBOutlet weak var rollButton1: UIButton!
    @IBOutlet weak var rollButton2: UIButton!
    @IBOutlet weak var rollButton3: UIButton!
    @IBOutlet weak var rollButton4: UIButton!
    @IBOutlet weak var rollButton5: UIButton!
    @IBOutlet weak var rollButton6: UIButton!
    
    @IBOutlet weak var statButton1: UIButton!
    @IBOutlet weak var statButton2: UIButton!
    @IBOutlet weak var statButton3: UIButton!
    @IBOutlet weak var statButton4: UIButton!
    @IBOutlet weak var statButton5: UIButton!
    @IBOutlet weak var statButton6: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    
    @IBAction func roll1(_ sender: UIButton) {
        rolledStats[0] = roll()
        rollButton1.setImage(UIImage(named: "\(rolledStats[0])D20"), for: .normal)
    }
    @IBAction func roll2(_ sender: UIButton) {
        rolledStats[1] = roll()
        rollButton2.setImage(UIImage(named: "\(rolledStats[1])D20"), for: .normal)
    }
    @IBAction func roll3(_ sender: UIButton) {
        rolledStats[2] = roll()
        rollButton3.setImage(UIImage(named: "\(rolledStats[2])D20"), for: .normal)
    }
    @IBAction func roll4(_ sender: UIButton) {
        rolledStats[3] = roll()
        rollButton4.setImage(UIImage(named: "\(rolledStats[3])D20"), for: .normal)
    }
    @IBAction func roll5(_ sender: UIButton) {
        rolledStats[4] = roll()
        rollButton5.setImage(UIImage(named: "\(rolledStats[4])D20"), for: .normal)
    }
    @IBAction func roll6(_ sender: UIButton) {
        rolledStats[5] = roll()
        rollButton6.setImage(UIImage(named: "\(rolledStats[5])D20"), for: .normal)
    }
    @IBAction func rollAll(_ sender: UIButton) {
        roll1(rollButton1)
        roll2(rollButton2)
        roll3(rollButton3)
        roll4(rollButton4)
        roll5(rollButton5)
        roll6(rollButton6)
//        rollButton1.setImage(UIImage(named: "\(roll())D20"), for: .normal)
//        rollButton2.setImage(UIImage(named: "\(roll())D20"), for: .normal)
//        rollButton3.setImage(UIImage(named: "\(roll())D20"), for: .normal)
//        rollButton4.setImage(UIImage(named: "\(roll())D20"), for: .normal)
//        rollButton5.setImage(UIImage(named: "\(roll())D20"), for: .normal)
//        rollButton6.setImage(UIImage(named: "\(roll())D20"), for: .normal)
    }
    
    @IBAction func stat1(_ sender: UIButton) {
        print("test")
        getStat(statButton: statButton1)
    }
    @IBAction func stat2(_ sender: UIButton) {
        print("test")
        getStat(statButton: statButton2)
    }
    @IBAction func stat3(_ sender: UIButton) {
        print("test")
        getStat(statButton: statButton3)
    }
    @IBAction func stat4(_ sender: UIButton) {
        print("test")
        getStat(statButton: statButton4)
    }
    @IBAction func stat5(_ sender: UIButton) {
        print("test")
        getStat(statButton: statButton5)
    }
    @IBAction func stat6(_ sender: UIButton) {
        print("test")
        getStat(statButton: statButton6)
    }
    
    @IBAction func reset(_ sender: UIButton) {
        print(rolledStats)
        rolledStats = [6,6,6,6,6,6]
        print(statsUsed)
        statsUsed = [false, false, false, false, false, false]
        print(diceUsed)
        diceUsed = [false, false, false, false, false, false]
        statButton1.setTitle("-Select-", for: .normal)
        statButton2.setTitle("-Select-", for: .normal)
        statButton3.setTitle("-Select-", for: .normal)
        statButton4.setTitle("-Select-", for: .normal)
        statButton5.setTitle("-Select-", for: .normal)
        statButton6.setTitle("-Select-", for: .normal)
        rollButton1.setImage(UIImage(named: "rollD20"), for: .normal)
        rollButton2.setImage(UIImage(named: "rollD20"), for: .normal)
        rollButton3.setImage(UIImage(named: "rollD20"), for: .normal)
        rollButton4.setImage(UIImage(named: "rollD20"), for: .normal)
        rollButton5.setImage(UIImage(named: "rollD20"), for: .normal)
        rollButton6.setImage(UIImage(named: "rollD20"), for: .normal)
    }
    
    @IBAction func save(_ sender: UIButton) {
        if
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    func roll() -> Int {
        var diceRolled = false
        var rolls = 0
        var totalRoll = 0
        var nums: [Int] = []
        var goodNums: [Int] = []
        while (!diceRolled) {
            let roll = Int.random(in: 1...6)
            if (roll != 1) {
                nums.append(roll)
                rolls += 1
            }
            if (rolls == 4) {
                diceRolled = !diceRolled
            }
        }
        nums.sort()
        print(nums)
        goodNums.append(contentsOf: nums.dropFirst(1))
        print(goodNums)
        totalRoll = goodNums[0] + goodNums[1] + goodNums[2]
        //rolledStats.append(totalRoll)
        return totalRoll
    }
    
    func setStat(statButton: UIButton, stat: String) {
        var statButtons: [UIButton] = [statButton1, statButton2, statButton3, statButton4, statButton5, statButton6]
        if (statsUsed[stats.firstIndex(of: stat)!]) {
            for button in statButtons {
                if (button.title(for: .normal) == stat) {
                    print(diceUsed[statButtons.firstIndex(of: statButton)!])
                    diceUsed[statButtons.firstIndex(of: button)!] = false
                    button.setTitle("-Select-", for: .normal)
                    
                }
            }
        }
        diceUsed[statButtons.firstIndex(of: statButton)!] = true
        statButton.setTitle(stat, for: .normal)
        
//        for button in statButtons {
//            for button2 in statButtons {
//                if button != button2 {
//                    if button.titleLabel?.text == button2.titleLabel?.text {
//                        let ac = UIAlertController(title: "Stat Selection", message: "You must set each roll to a different stat.", preferredStyle: .alert)
//                        let submitAction = UIAlertAction(title: "Ok", style: .default) {_ in
//                        }
//                        ac.addAction(submitAction)
//                        present(ac, animated: true)
//                    }
//                }
//            }
//        }
        
        for button in statButtons {
            if button.titleLabel?.text == "Strength" {
                //tempStats.append()
            }
        }
        
        
    }
    
    @objc func getStat(statButton: UIButton) {
        let ac = UIAlertController(title: "Pick which stat to assign the value rolled to.", message: nil, preferredStyle: .alert)
        for word in stats {
            let stat = UIAlertAction(title: word, style: .default) {
                [unowned self] (action: UIAlertAction) in
                let answer = word
                print(answer)
                statsUsed[stats.firstIndex(of: "\(word)")!] = true
                setStat(statButton: statButton, stat: word)
            }
            ac.addAction(stat)
        }
        present(ac, animated: true)
    }
}


//                    if (stat == "Strength") {
//
//                        break
//                    } else if (stat == "Dexterity") {
//
//                        break
//                    } else if (stat == "Constitution") {
//
//                        break
//                    } else if (stat == "Intelligence") {
//
//                        break
//                    } else if (stat == "Wisdom") {
//
//                        break
//                    } else if (stat == "Charisma") {
//
//                        break
//                    } else {
//                        break
//                    }
