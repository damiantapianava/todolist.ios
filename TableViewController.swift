//
//  TableViewController.swift
//  AsDeporteTodoList
//
//  Created by Damián Tapia Nava on 18/07/18.
//  Copyright © 2018 asdeporte. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController
{
    struct TodoItem
    {
        var taskName : String
        var rowData: [String]
    }
    
    var tasks : [TodoItem]!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: self.cellID)
        self.tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 640, height: 50))
    }
    
    // MARK: - Table view data source
    
    let cellID = "Cell"
    let todoList = ["todo1", "todo2", "todo3"]
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.todoList.count
    }
    
    var cells = 0
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell : UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: self.cellID, for: indexPath)
        
        if cell == nil {
            cell = UITableViewCell(style:.default, reuseIdentifier: self.cellID)
            cell.textLabel!.textColor = .red
        }
        
        cell.textLabel!.text = todoList[indexPath.row]
        
        return cell
    }
    /*
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        <#code#>
    }
    */
    
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
     {
        return true
     }
    
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
     {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
     }
    
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
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
