//
//  AddEditViewController.swift
//  ScoreBoard
//
//  Created by Tyler Christensen on 10/20/21.
//

import UIKit


class AddEditViewController: UIViewController {
    
    var player: Player?
    
    init?(coder: NSCoder, player: Player?) {
            self.player = player
            super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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

}
