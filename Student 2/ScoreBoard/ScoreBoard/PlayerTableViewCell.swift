//
//  PlayerTableViewCell.swift
//  ScoreBoard
//
//  Created by Tyler Christensen on 10/20/21.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var playerStepper: UIStepper!
    @IBOutlet weak var scoreLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func update(with player: Player) {
        let scoreLabelAsInt = player.score
        scoreLabel.text = String(scoreLabelAsInt)
        playerStepper.value = Double(player.score)
        
        playerLabel.text = player.name
        
        
    }
    
    func updatePlayerStepper() {
        scoreLabel.text = "\(Int(playerStepper.value))"
    }
    
    @IBAction func playerStepperValueChanged(_ sender: Any) {
        print((sender as? UIStepper)?.value)
        updatePlayerStepper()
    }
    
}
