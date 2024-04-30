//
//  createVC.swift
//  DNDCC
//
//  Created by Genghis Khan on 4/5/24.
//

import UIKit

class CreateVC: UIViewController {

    var characterStats: [Int] = []
    var statsSet: Bool = false
    
    var name = "Character Name"
    
    @IBOutlet weak var characterNameTextField: UITextField!
    
    
    
    
    
    @IBAction func characterName(_ sender: UITextField) {
        if characterNameTextField == nil {
            name = characterNameTextField.text!
        }
    }
    
    
    
    
    
    
    
    @IBAction func unwindToHome(segue: UIStoryboardSegue) {
        let statVC = segue.source as! StatVC
        
        characterStats = statVC.rolledStats
        statsSet = true
        print(characterStats)
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

}
