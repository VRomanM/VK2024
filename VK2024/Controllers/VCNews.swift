//
//  VCNews.swift
//  VK2024
//
//  Created by Роман Вертячих on 17.12.2023.
//

import UIKit

class VCNews: UIViewController {

    @IBOutlet weak var newsTable: UITableView! {
        didSet {
            newsTable.delegate = self
            newsTable.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        newsTable.delegate = self
//        newsTable.dataSource = self
        newsTable.register(UINib(nibName: "NewsTVCell", bundle: nil), forCellReuseIdentifier: "NewsCell")
    }
}

extension VCNews: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsTVCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "На повестке дня"
    }
}

extension VCNews: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Нажата строка \(indexPath.row) в секции \(indexPath.section) в таблице новостей")
    }
}
