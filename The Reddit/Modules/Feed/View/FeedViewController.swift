//
//  FeedViewController.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import UIKit

class FeedViewController: BaseViewController {
    var presenter: FeedPresenterProtocol?
    
    @IBOutlet weak var postsTableView: UITableView!
    
    var postsListDataSource: [FeedModel.Post]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        setUpTableView()
        presenter?.viewDidLoad()
    }
    
}

extension FeedViewController: FeedViewProtocol {
    func displayPostsList(model: [FeedModel.Post]) {
        postsListDataSource = model
        postsTableView.reloadData()
    }
}
