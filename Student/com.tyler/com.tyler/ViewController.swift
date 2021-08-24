//
//  ViewController.swift
//  com.tyler
//
//  Created by Tyler Christensen on 8/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonTapped(_ sender: Any) {
        if nameLabel.text != "Tyler Christensen" {
            nameLabel.text = "Tyler Christensen"
            nameLabel.backgroundColor = .systemBlue
        }
        
       
        
    }
    
    
    
    
    

}

