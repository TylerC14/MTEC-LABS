//
//  FoodTableTableViewController.swift
//  Meal Tracker
//
//  Created by Tyler Christensen on 10/11/21.
//

import UIKit

class FoodTableTableViewController: UITableViewController {
    var meals: [Meal] {
        let breakfast = Meal(name: "Breakfast", food: [
            Food(name: "Waffles", description: "Breakfast"),
            Food(name: "Pancakes", description: "Breakfast"),
            Food(name: "Cereal", description: "Breakfast")
        ])
        let lunch = Meal(name: "Lunch", food: [
            Food(name: "Quesadilla", description: "Lunch"),
            Food(name: "Sandwhich", description: "Lunch"),
            Food(name: "Mac and Cheese", description: "Lunch")
        ])
        let dinner = Meal(name: "Dinner", food: [
            Food(name: "Hot Dog", description: "Dinner"),
            Food(name: "Burger", description: "Dinner"),
            Food(name: "Steak", description: "Dinner")
        ])
        return [breakfast,lunch,dinner]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let meal = meals[section]
        return meal.food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let meal = meals[section]
        return meal.name
    }

}
