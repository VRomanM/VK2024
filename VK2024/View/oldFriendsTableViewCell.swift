//
//  FriendsTableViewCell.swift
//  VK2024
//
//  Created by Роман Вертячих on 03.01.2024.
//

import UIKit

class oldFriendsTableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    var friend: User?
    
    func initCell(user: User){
        self.friend = user
        name.text = user.name
        city.text = user.city
        photo.image = user.avatar
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
