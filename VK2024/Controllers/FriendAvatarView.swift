//
//  FriendAvatarView.swift
//  VK2024
//
//  Created by Роман Вертячих on 19.01.2024.
//

import UIKit

class FriendAvatarView: UIView {
    @IBOutlet var friendAvatar: UIImageView!
    @IBOutlet var shadowView: UIView!
    
    let shadowColor = UIColor.black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 7
        shadowView.layer.shadowOpacity = 0.9
    }

    override func layoutSubviews() {
        friendAvatar.layer.cornerRadius = bounds.height / 2
        shadowView.layer.cornerRadius = bounds.height / 2
    }
}
