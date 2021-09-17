//
//  ViewController.swift
//  Calculator
//
//  Created by Tyler Christensen on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var numberAddition: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonTapped(_ button: UIButton) {
        
        print("Button tapped: \(button.titleLabel!.text!)")
        
     
       
        
        if ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"].contains(button.titleLabel!.text) {
            if numberLabel.text == "0" {
                numberLabel.text = button.titleLabel!.text
            } else {
                numberLabel.text! += button.titleLabel!.text!
            }
            print(numberLabel.text!)
        }
     
        
        
    
    
    
    

    }
}
