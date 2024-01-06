//
//  ApiVK.swift
//  VK2024
//
//  Created by Роман Вертячих on 04.01.2024.
//

import UIKit

class ApiVK {
    
    // MARK: - Friends
    func getFriendsList() -> [User] {
        var friendsList = [User]()
        
        friendsList.append(User(id: 0, name: "Первый друг", city: "Москва", avatarSysName: "person.slash.fill"))
        friendsList.append(User(id: 1, name: "Второй друг", city: "Киров"))
        friendsList.append(User(id: 2, name: "Третий друг", city: "Город скрыт"))
        friendsList.append(User(id: 3, name: "Четвертый друг", city: "Москва"))
        friendsList.append(User(id: 4, name: "Пятый друг", city: "Москва"))
        
        return friendsList
    }
    
    // MARK: - Photo
    
    func getPhotoByUserID(userID: Int) -> [UserPhoto] {
        var photoByUser = [UserPhoto]()
        
        if userID == 0 {
            photoByUser.append(UserPhoto(id: 0, userID: 0, name: "Первое фото"))
            photoByUser.append(UserPhoto(id: 1, userID: 0, name: "Второе фото"))
            photoByUser.append(UserPhoto(id: 2, userID: 0, name: "Третье фото"))
            photoByUser.append(UserPhoto(id: 3, userID: 0, name: "Четвертое фото"))
            photoByUser.append(UserPhoto(id: 4, userID: 0, name: "Пятое фото"))
        }
        return photoByUser
    }
    
    //MARK: - Groups
    
    func getGroups() -> [Group] {
        var userGroups = [Group]()

        userGroups.append(Group(id: 0, name: "Волейбол", avatarSysName: "figure.volleyball"))
        userGroups.append(Group(id: 1, name: "Магазин кросовок", avatarSysName: "shoe.2"))
        userGroups.append(Group(id: 2, name: "Ит технологии", avatarSysName: "play.laptopcomputer"))
        userGroups.append(Group(id: 3, name: "Про здоровье", avatarSysName: "heart"))
        
        return userGroups
    }
}
