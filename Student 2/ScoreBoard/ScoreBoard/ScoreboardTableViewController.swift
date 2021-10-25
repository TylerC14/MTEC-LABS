//
//  ScoreboardTableViewController.swift
//  ScoreBoard
//
//  Created by Tyler Christensen on 10/19/21.
//

import UIKit

class ScoreboardTableViewController: UITableViewController {
    
    var players: [Player] = []
    
//[Player(name: "Player 1", score: 25)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        playerStepper.wraps = true
//        playerStepper.autorepeat = true
//        playerStepper.maximumValue = 50
        

        tableView.reloadData()
    }

    @IBAction func unwindToScoreboardTableView(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind",
              let sourceViewController = segue.source as? AddEditViewController,
              let player = sourceViewController.player else {
                  return
              }
        
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            players[selectedIndexPath.row] = player
            tableView.reloadRows(at: [selectedIndexPath], with: .none)
        }
        
        players.append(player)
        let newIndexPath = IndexPath(row: players.count - 1, section: 0)
        tableView.reloadData()
    }
    
    
    @IBSegueAction func addEditPlayer(_ coder: NSCoder, sender: Any?) -> AddEditViewController? {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let playerToEdit = players[indexPath.row]
        return AddEditViewController(coder: coder, player: playerToEdit)
        } else {
            return AddEditViewController(coder: coder, player: nil)
        }
    }
    

    
    
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 
        return players.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)as!PlayerTableViewCell
        
        let player = players[indexPath.row]
        cell.update(with: player)


        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    


}
