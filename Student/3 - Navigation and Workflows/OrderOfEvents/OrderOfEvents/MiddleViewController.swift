//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Tyler Christensen on 9/28/21.
//

import UIKit


class MiddleViewController: UIViewController {
    
    
    @IBOutlet weak var nothingHasHappenedYetLabel: UILabel!
    var eventNumber: Int = 1
    
    func addEvent(from: String) {
        if let existingText = nothingHasHappenedYetLabel.text {
            nothingHasHappenedYetLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addEvent(from: "viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        addEvent(from: "viewDidDisappear")
    }
    
}

        

