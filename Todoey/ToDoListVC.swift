//
//  ViewController.swift
//  Todoey
//
//  Created by Ravi Bhooshan on 17/01/19.
//  Copyright © 2019 Ravi Bhooshan. All rights reserved.
//

import UIKit

class ToDoListVC: UITableViewController {

    
    let listArray = ["abs","rabi","irani","akhil","rahul","goodBoy","yuck"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoListCell", for: indexPath)
        cell.textLabel?.text = listArray[indexPath.row]
        return cell
    }
    
    
    // MARK - Table View Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(listArray[indexPath.row])
    
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType != .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        
     tableView.deselectRow(at: indexPath, animated: true)
        
    }


}

