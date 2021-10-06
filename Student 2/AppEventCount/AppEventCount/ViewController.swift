//
//  ViewController.swift
//  AppEventCount
//
//  Created by Tyler Christensen on 10/5/21.
//

import UIKit

class ViewController: UIViewController {
    var willConnectCount = 0
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "The app has configured \(appDelegate.launchCount) time(s)"
        willConnectToLabel.text = "The app will connect \(appDelegate.launchCount) time(s)"
        didBecomeActiveLabel.text = "The app became active \(appDelegate.launchCount) time(s)"
        willResignActiveLabel.text = "The app will resign \(appDelegate.launchCount) time(s)"
        willEnterForegroundLabel.text = "The app will enter foreground \(appDelegate.launchCount) time(s)"
        didEnterBackgroundLabel.text = "The app did enter background \(appDelegate.launchCount) time(s)"
        
    }


}

