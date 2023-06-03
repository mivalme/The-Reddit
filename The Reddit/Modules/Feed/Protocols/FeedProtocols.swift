//
//  FeedProtocols.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import Foundation

protocol FeedInteractorProtocol {
    func fetchPosts(after: String?)
}

protocol FeedPresenterProtocol {
    func viewDidLoad()
    func reachedEndOfTable()
    func didSelectPost(selectedPost: FeedModel.Post)
}

protocol FeedInteractorOutputProtocol: AnyObject {
    func fetchedPostsSuccess(posts: [FeedModel.Post], afterId: String)
    func fetchedPostsFailure(errorMessage: String)
}

protocol FeedRouterProtocol {
    func goToPostDetail(selectedPost: FeedModel.Post)
}

protocol FeedViewProtocol: AnyObject {
    func displayPostsList(model: [FeedModel.Post])
    func showErrorAlert(errorMessage: String)
}
