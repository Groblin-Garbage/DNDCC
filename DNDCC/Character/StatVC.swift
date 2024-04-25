//
//  statVC.swift
//  DNDCC
//
//  Created by Genghis Khan on 4/5/24.
//

import UIKit

class StatVC: UIViewController {
    
    @IBOutlet weak var rollAllButton: UIButton!
    @IBOutlet weak var rollButton1: UIButton!
    @IBOutlet weak var rollButton2: UIButton!
    @IBOutlet weak var rollButton3: UIButton!
    @IBOutlet weak var rollButton4: UIButton!
    @IBOutlet weak var rollButton5: UIButton!
    @IBOutlet weak var rollButton6: UIButton!
    

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
        rollButton1.setImage("\(roll())D20", for: self)
    }
    @IBAction func button2(_ sender: UIButton) {
        
    }
    @IBAction func button3(_ sender: UIButton) {
        
    }
    @IBAction func button4(_ sender: UIButton) {
        
    }
    @IBAction func button5(_ sender: UIButton) {
        
    }
    @IBAction func button6(_ sender: UIButton) {
        
    }
    @IBAction func rollAll(_ sender: UIButton) {
        
    }
    
    func roll() -> Int {
        var rolls = 4
        var totalRoll = 0
        for _ in 1...rolls {
            var roll = Int.random(in: 1...6)
            if (roll == 1) {
                rolls += 1
            } else {
                totalRoll += roll
            }
        }
        return totalRoll
    }
}
