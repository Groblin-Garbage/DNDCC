//
//  statVC.swift
//  DNDCC
//
//  Created by Genghis Khan on 4/5/24.
//

import UIKit

class StatVC: UIViewController {
    
    //str,dex,con,int,wis,cha
    var stats: [Int] = [6,6,6,6,6,6]
    var statsUsed: [Bool] = [false, false, false, false, false, false]
    
    @IBOutlet weak var rollAllButton: UIButton!
    @IBOutlet weak var rollButton1: UIButton!
    @IBOutlet weak var rollButton2: UIButton!
    @IBOutlet weak var rollButton3: UIButton!
    @IBOutlet weak var rollButton4: UIButton!
    @IBOutlet weak var rollButton5: UIButton!
    @IBOutlet weak var rollButton6: UIButton!
    
    @IBOutlet weak var stat1: UIButton!
    @IBOutlet weak var stat2: UIButton!
    @IBOutlet weak var stat3: UIButton!
    @IBOutlet weak var stat4: UIButton!
    @IBOutlet weak var stat5: UIButton!
    @IBOutlet weak var stat6: UIButton!
    
    @IBAction func stat1Button(_ sender: UIButton) {
        print("test")
        setStat(stat1)
    }
    @IBAction func stat2Button(_ sender: UIButton) {
        print("test")
    }
    @IBAction func stat3Button(_ sender: UIButton) {
        print("test")
    }
    @IBAction func stat4Button(_ sender: UIButton) {
        print("test")
    }
    @IBAction func stat5Button(_ sender: UIButton) {
        print("test")
    }
    @IBAction func stat6Button(_ sender: UIButton) {
        print("test")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func button1(_ sender: UIButton) {
        rollButton1.setImage(UIImage(named: "\(roll())D20"), for: .normal)
    }
    @IBAction func button2(_ sender: UIButton) {
        rollButton2.setImage(UIImage(named: "\(roll())D20"), for: .normal)
    }
    @IBAction func button3(_ sender: UIButton) {
        rollButton3.setImage(UIImage(named: "\(roll())D20"), for: .normal)
    }
    @IBAction func button4(_ sender: UIButton) {
        rollButton4.setImage(UIImage(named: "\(roll())D20"), for: .normal)
    }
    @IBAction func button5(_ sender: UIButton) {
        rollButton5.setImage(UIImage(named: "\(roll())D20"), for: .normal)
    }
    @IBAction func button6(_ sender: UIButton) {
        rollButton6.setImage(UIImage(named: "\(roll())D20"), for: .normal)
    }
    @IBAction func rollAll(_ sender: UIButton) {
        rollButton1.setImage(UIImage(named: "\(roll())D20"), for: .normal)
        rollButton2.setImage(UIImage(named: "\(roll())D20"), for: .normal)
        rollButton3.setImage(UIImage(named: "\(roll())D20"), for: .normal)
        rollButton4.setImage(UIImage(named: "\(roll())D20"), for: .normal)
        rollButton5.setImage(UIImage(named: "\(roll())D20"), for: .normal)
        rollButton6.setImage(UIImage(named: "\(roll())D20"), for: .normal)
    }
    
    func roll() -> Int {
        var diceRolled = false
        var rolls = 0
        var totalRoll = 0
        var nums: [Int] = []
        var goodNums: [Int] = []
        while (!diceRolled) {
            var roll = Int.random(in: 1...6)
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
        return totalRoll
    }
    
    func setStat(statButton: UIButton) {
        
    }
    
    @objc func getAnswer() {
        let ac = UIAlertController(title: "Pick which stat to assign the value rolled to", message: nil, preferredStyle: .alert)
        let str = UIAlertAction(title: "Strength", style: .default) {
            [unowned self, ac] (action: UIAlertAction) in
            let answer = "Strength"
            statsUsed[0] = !statsUsed[0]
        }
        ac.addAction(str)
        let dex = UIAlertAction(title: "Dexterity", style: .default) {
            [unowned self, ac] (action: UIAlertAction) in
            let answer = "Dexterity"
            statsUsed[1] = !statsUsed[1]
        }
        ac.addAction(dex)
        let con = UIAlertAction(title: "Constitution", style: .default) {
            [unowned self, ac] (action: UIAlertAction) in
            let answer = "Constitution"
            statsUsed[2] = !statsUsed[2]
        }
        ac.addAction(con)
        let int = UIAlertAction(title: "Intelligence", style: .default) {
            [unowned self, ac] (action: UIAlertAction) in
            let answer = "Intelligence"
            statsUsed[3] = !statsUsed[3]
        }
        ac.addAction(int)
        let wis = UIAlertAction(title: "Wisdom", style: .default) {
            [unowned self, ac] (action: UIAlertAction) in
            let answer = "Wisdom"
            statsUsed[4] = !statsUsed[4]
        }
        ac.addAction(wis)
        let cha = UIAlertAction(title: "Charisma", style: .default) {
            [unowned self, ac] (action: UIAlertAction) in
            let answer = "Charisma"
            statsUsed[5] = !statsUsed[5]
        }
        ac.addAction(cha)
        present(ac, animated: true)
    }
}
