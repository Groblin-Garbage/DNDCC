//
//  infoVC.swift
//  DNDCC
//
//  Created by Genghis Khan on 3/21/24.
//

import UIKit

class InfoVC: UIViewController {

    var spells = [SpellObject]()
    var classes = [ClassObject]()
    var test = ["string"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(test[0])
        print(spells[0])
        print(spells[0].name)
        
        //print(classes[1].name)
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

}
