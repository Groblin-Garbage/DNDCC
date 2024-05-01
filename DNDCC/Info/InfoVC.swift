//
//  infoVC.swift
//  DNDCC
//
//  Created by Genghis Khan on 3/21/24.
//

import UIKit

class InfoVC: UIViewController {

    var spells: [SpellObject] = []
    var classes: [ClassObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //print(classes[1].name)
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("")
        if segue.identifier == "spellSegue" {
            let destinationVC = segue.destination as! SpellsTVC
            destinationVC.spells = spells
            
        } else if segue.identifier == "classSegue" {
            let destinationVC = segue.destination as! ClassTVC
            destinationVC.classes = classes
            
        } else if segue.identifier == "raceSegue" {
            let destinationVC = segue.destination as! RaceTVC
            //races
            
        } else if segue.identifier == "itemSegue" {
            let destinationVC = segue.destination as! ItemsTVC
            //items
            
        } else if segue.identifier == "featSegue" {
            let destinationVC = segue.destination as! FeatsTVC
            //feats
            
        }
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
