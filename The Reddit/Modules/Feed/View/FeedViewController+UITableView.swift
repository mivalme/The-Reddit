//
//  FeedViewController+UITableView.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import UIKit

extension FeedViewController: UITableViewDelegate, UITableViewDataSource  {
    func setUpTableView() {
        postsTableView.delegate = self
        postsTableView.dataSource = self
        postsTableView.register(UINib(nibName: PostTableViewCell.viewID, bundle: .main), forCellReuseIdentifier: PostTableViewCell.viewID)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postsListDataSource?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.viewID, for: indexPath)
        if let cell = cell as? PostTableViewCell, let model = postsListDataSource?[indexPath.row] {
            cell.setUpCell(model: model)
        }
        return cell
    }
}
