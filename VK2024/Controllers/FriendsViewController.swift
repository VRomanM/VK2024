//
//  FriendsViewController.swift
//  VK2024
//
//  Created by Роман Вертячих on 19.01.2024.
//

import UIKit

class FriendsViewController: UIViewController {
    private let apiVK = ApiVK()
    private var myFriends = [User]()
    private var choisedFriendId: Int?
    
    @IBOutlet weak var friendsTable: UITableView! {
        didSet{
            friendsTable.delegate = self
            friendsTable.dataSource = self
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        myFriends = apiVK.getFriendsList()
        friendsTable.register(UINib(nibName: "FriendsTableViewCell", bundle: nil), forCellReuseIdentifier: "friendCell")
    }
    
}

extension FriendsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as? FriendsTableViewCell else {
            preconditionFailure("Error")
        }
        let friend = myFriends[indexPath.row]
        cell.initCell(user: friend)

        return cell
    }
}

extension FriendsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        friendsTable.deselectRow(at: indexPath, animated: true)
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: "photoVC") as? PhotosCollectionViewController else {
            preconditionFailure("Error")
        }
        vc.userID = indexPath.row
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
