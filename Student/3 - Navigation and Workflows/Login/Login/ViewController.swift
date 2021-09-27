//
//  ViewController.swift
//  Login
//
//  Created by Tyler Christensen on 9/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotPasswordOrUsernameTapped", sender: sender)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "forgotPasswordOrUsernameTapped", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if segue.identifier == "loginViewToLanding" {
        segue.destination.navigationItem.title = userName.text
    }
    }
}

