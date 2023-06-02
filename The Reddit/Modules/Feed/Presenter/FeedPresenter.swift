//
//  FeedPresenter.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import Foundation

class FeedPresenter: FeedPresenterProtocol {
    weak var view: FeedViewProtocol?
    var router: FeedRouterProtocol?
    var interactor: FeedInteractorProtocol?
    
    func viewDidLoad() {
        interactor?.fetchPosts()
    }
}

extension FeedPresenter: FeedInteractorOutputProtocol {
    func fetchedPostsSuccess(posts: [FeedModel.Post]) {
        view?.displayPostsList(model: posts)
    }
}
