//
//  FeedViewController.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import UIKit
import Lottie

class FeedViewController: BaseViewController {
    var presenter: FeedPresenterProtocol?
    
    @IBOutlet weak var postsTableView: UITableView!
    @IBOutlet weak var blurView: UIView!
    
    var postsListDataSource: [FeedModel.Post] = []
    let loadingAnnimationName = "loading"
    
    lazy var loadingAnimationView: LottieAnimationView = {
        let view = LottieAnimationView(name: loadingAnnimationName)
        view.frame = self.view.frame
        view.isHidden = true
        self.view.addSubview(view)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Posts"
        setUpTableView()
        presenter?.viewDidLoad()
    }
}

extension FeedViewController: FeedViewProtocol {
    func displayPostsList(model: [FeedModel.Post]) {
        postsListDataSource.append(contentsOf: model)
        postsTableView.reloadData()
    }
}
