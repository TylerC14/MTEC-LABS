//
//  ScoreboardTableViewController.swift
//  ScoreBoard
//
//  Created by Tyler Christensen on 10/19/21.
//

import UIKit

class ScoreboardTableViewController: UITableViewController {
    
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var scoreStepper: UIStepper!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    
    var players: [Player] = [
        Player(name: "Player 1", score: 25)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

 
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

    override func numberOfSections(in tableView: UITableView) -> Int {
  
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)as!PlayerTableViewCell
        
        let player = players[indexPath.row]
        cell.update(with: player)


        return cell
    }
    

    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}