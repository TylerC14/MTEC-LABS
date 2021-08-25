//
//  ViewController.swift
//  Interface Builder intro
//
//  Created by Tyler Christensen on 8/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.setTitle("THIS IS THE NEW TITLE",
                        for: .normal)
        
        
        
        // Do any additional setup after loading the view.
    }


}

