//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by Simon Ng on 28/10/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    
    
    var restaurantNames = ["Basketball", "Footnall", "Baseball", "Tennis", "Volleyball", "Golf"]
    
    @IBOutlet var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "datacell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = restaurantNames[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myLabel.text = "My favorite sport is "+restaurantNames[indexPath.row]
        }
        
        
        
        
        
    
    
    
    
    
        
    
    
}
