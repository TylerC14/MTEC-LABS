//
//  ViewController.swift
//  Light
//
//  Created by Tyler Christensen on 8/26/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightButton: UIButton!
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

