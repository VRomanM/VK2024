//
//  NewsTVCell.swift
//  VK2024
//
//  Created by Роман Вертячих on 17.12.2023.
//

import UIKit

class NewsTVCell: UITableViewCell {

    @IBOutlet weak var newsTitle: UILabel!{
        didSet {
            newsTitle.text = "Заголовок новости"
        }
    }
    @IBOutlet weak var newsDetail: UILabel! {
        didSet {
            newsDetail.text = """
Описание новости с подробным описанием всех деталей происходящих в конкретном событии. Здесь должно быть много текста
test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test
test test test test test test test test test test test test test test test test test test test test test test test 
"""
        }
    }
    @IBOutlet weak var newsImage: UIImageView! {
        didSet {
            newsImage.image = UIImage(systemName: "photo")
        }
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
