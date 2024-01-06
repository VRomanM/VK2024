//
//  PhotoCVCell.swift
//  VK2024
//
//  Created by Роман Вертячих on 04.01.2024.
//

import UIKit

class PhotoCVCell: UICollectionViewCell {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    var userPhoto: UserPhoto?
    
    func initCell(userPhoto: UserPhoto){
        self.userPhoto = userPhoto
        
        name.text = userPhoto.name
        photo.image = userPhoto.photo
    }
}
