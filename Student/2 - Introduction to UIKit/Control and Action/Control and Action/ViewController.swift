//
//  ViewController.swift
//  Control and Action
//
//  Created by Tyler Christensen on 9/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var counter: Int = 0
    @IBAction func clickedButton(_ sender: Any) {
        counter += 1
        print("I clicked the button \(counter) times!")
    }
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        }   else {
            print("the switch is off!")
        }
    }
   
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

