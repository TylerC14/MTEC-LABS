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
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with player: Player) {
        let scoreLabelAsInt = player.score
        scoreLabel.text = String(scoreLabelAsInt)
        
        
        playerLabel.text = player.name
        
    }
    
    @IBAction func playerStepperValueChanged(_ sender: Any) {
    }
    
}
