//
//  GroupsTableViewController.swift
//  VK2024
//
//  Created by Роман Вертячих on 06.01.2024.
//

import UIKit

class GroupsTableViewController: UITableViewController {
    private let apiVK = ApiVK()
    var groups = [Group]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groups = apiVK.getGroups()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupsCell", for: indexPath)

        cell.imageView?.image = groups[indexPath.row].avatar
        cell.textLabel?.text = groups[indexPath.row].name
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
