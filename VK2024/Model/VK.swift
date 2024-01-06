//
//  VK.swift
//  VK2024
//
//  Created by Роман Вертячих on 03.01.2024.
//

import UIKit

class User {
    let id: Int
    let name: String
    let city: String
    var avatar: UIImage
    
    init(id: Int, name: String, city: String, avatarSysName: String) {
        self.id = id
        self.name = name
        self.city = city
        self.avatar = UIImage(systemName: avatarSysName)!
    }
    
    init (id: Int, name: String, city: String){
        self.id = id
        self.name = name
        self.city = city
        self.avatar = UIImage(systemName: "person")!
    }
}

class UserPhoto {
    let id: Int
    let userID: Int
    let name: String
    let photo: UIImage
    
    init(id: Int, userID: Int, name: String, photo: UIImage) {
        self.id = id
        self.userID = userID
        self.name = name
        self.photo = photo
    }
    
    init(id: Int, userID: Int, name: String) {
        self.id = id
        self.userID = userID
        self.name = name
        self.photo = UIImage(systemName: "photo.on.rectangle.angled")!
    }
}

class Group {
    static func == (lhs: Group, rhs: Group) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func != (lhs: Group, rhs: Group) -> Bool {
        return lhs.id != rhs.id
    }
    
    let id: Int
    let name: String
    let avatar: UIImage
    
    init(id: Int, name: String, avatarSysName: String) {
        self.id = id
        self.name = name
        self.avatar = UIImage(systemName: avatarSysName)!
    }
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
        self.avatar = UIImage(systemName: "person.3.fill")!
    }
   
}
