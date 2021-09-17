//
//  ViewController.swift
//  Two Buttons
//
//  Created by Tyler Christensen on 9/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        if let text = textField.text {
            Label.text = text
        }
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
       
            Label.text = ""
        textField.text = ""
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

