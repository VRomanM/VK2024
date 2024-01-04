//
//  VK.swift
//  VK2024
//
//  Created by Роман Вертячих on 03.01.2024.
//

import UIKit

class UserVK {
    let name: String
    let city: String
    var photo: UIImage = UIImage(systemName: "person")!
    
    init(name: String, city: String, photoName: String) {
        self.name = name
        self.city = city
        self.photo = UIImage(systemName: photoName)!
    }
    
    init (name: String, city: String){
        self.name = name
        self.city = city
    }
}
