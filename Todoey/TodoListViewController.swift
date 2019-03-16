//
//  TodoListViewController.swift
//  Todoey
//
//  Created by Derrick on 3/7/19.
//  Copyright © 2019 Derrick. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Food", "Study Code"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - TableView Datasource Methods | Step 1
    
    // Tells the data source to return the number of rows in a given section of a table view.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    // Asks the data source for a cell to insert in a particular location of the table view.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
    // MARK: - TableView Delegate Methods | Step 2

    // Tells the delegate that the specified row is now selected.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        // This allows us to add a checkmark on the selected row and if it does remove it.
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        // Animates the cell when it's selected.
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

