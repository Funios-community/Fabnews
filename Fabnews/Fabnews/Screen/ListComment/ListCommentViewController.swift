//
//  ListCommentViewController.swift
//  Fabnews
//
//  Created by PutriCH on 18/09/22.
//

import UIKit

class ListCommentViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data: [CommentModel] = [
    CommentModel (name: "Aku", comment: "Test comment", date: "18 Sept, 2022"),
    CommentModel (name: "Kamu", comment: "Test comment", date: "18 Sept, 2022"),
    CommentModel (name: "Dia", comment: "Test comment", date: "18 Sept, 2022"),
    CommentModel (name: "Mereka", comment: "Test comment", date: "18 Sept, 2022"),
    CommentModel (name: "Kita", comment: "Test comment", date: "18 Sept, 2022"),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CommentViewCell", bundle: nil), forCellReuseIdentifier:"CommentViewCell")
    }
    
}

extension ListCommentViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentViewCell") as! CommentViewCell
        cell.setData(data: data[indexPath.row])
        return cell
    }
}
