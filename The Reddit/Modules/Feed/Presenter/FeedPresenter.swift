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
    
    var afterId: String = ""
    var fetchedIds: [String] = []
    
    func viewDidLoad() {
        interactor?.fetchPosts(after: nil)
    }
    
    func reachedEndOfTable() {
        guard !fetchedIds.contains(afterId) else { return }
        fetchedIds.append(afterId)
        interactor?.fetchPosts(after: afterId)
    }
    
    func didSelectPost(selectedPost: FeedModel.Post) {
        router?.goToPostDetail(selectedPost: selectedPost)
    }
}

extension FeedPresenter: FeedInteractorOutputProtocol {
    func fetchedPostsSuccess(posts: [FeedModel.Post], afterId: String) {
        self.afterId = afterId
        view?.displayPostsList(model: posts)
    }
    
    func fetchedPostsFailure(errorMessage: String) {
        view?.showErrorAlert(errorMessage: errorMessage)
    }
}
