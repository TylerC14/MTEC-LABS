//
//  AddEditViewController.swift
//  ScoreBoard
//
//  Created by Tyler Christensen on 10/20/21.
//

import UIKit


class AddEditViewController: UIViewController {
    
    @IBOutlet weak var playerTextField: UITextField!
    @IBOutlet weak var currentScoreTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
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
        
        if let player = player {
            playerTextField.text = player.name
            currentScoreTextField.text = String(player.score)
            title = "Edit Player"
        }   else {
            title = "Add Player"
        }
            updateSaveButtonState()
        
    
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = playerTextField.text ?? ""
        let score = currentScoreTextField.text ?? ""
        if let score = Int(score) {
            player = Player(name: name, score: score)
        }
    }
    
    func updateSaveButtonState() {
        let playerName = playerTextField.text ?? ""
        let currentScore = currentScoreTextField.text ?? ""
        saveButton.isEnabled = !playerName.isEmpty && !currentScore.isEmpty
    }
    
    @IBAction func  textEditingChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    

}
