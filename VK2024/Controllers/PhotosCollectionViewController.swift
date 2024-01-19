//
//  PhotosCollectionViewController.swift
//  VK2024
//
//  Created by Роман Вертячих on 04.01.2024.
//

import UIKit

private var photo = [UserPhoto]()
private let apiVK = ApiVK()

class PhotosCollectionViewController: UICollectionViewController {
    var userID: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if userID == -1 {
            preconditionFailure("Error")
        }
        photo = apiVK.getPhotoByUserID(userID: userID)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as? PhotosCollectionViewCell else {
            preconditionFailure("Error")
        }
        cell.initCell(userPhoto: photo[indexPath.row])
        
        return cell
    }
}
