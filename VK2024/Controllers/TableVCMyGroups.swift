//
//  TableVCMyGroups.swift
//  VK2024
//
//  Created by Роман Вертячих on 06.01.2024.
//

import UIKit

class TableVCMyGroups: UITableViewController {
    private let apiVK = ApiVK()
    private var groups = [Group]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myGroupsCell", for: indexPath)

        cell.textLabel?.text = groups[indexPath.row].name
        cell.imageView?.image = groups[indexPath.row].avatar

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Удалить"
    }
    
    @IBAction func addMyGroup(unwindSegue: UIStoryboardSegue){
        if unwindSegue.identifier == "addGroup" {
            guard let groupsVC = unwindSegue.source as? TableVCGroups else {
                preconditionFailure("Error")
            }
            
            if let indexPath = groupsVC.tableView.indexPathForSelectedRow {
                let group = groupsVC.groups[indexPath.row]
                                                   
                if !groups.contains { $0 == group } {
                    groups.append(group)
                    tableView.reloadData()
                }
            }
        }
    }
}
