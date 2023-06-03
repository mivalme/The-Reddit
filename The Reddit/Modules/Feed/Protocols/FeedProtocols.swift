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
}

protocol FeedInteractorOutputProtocol: AnyObject {
    func fetchedPostsSuccess(posts: [FeedModel.Post], afterId: String)
}

protocol FeedRouterProtocol {
    
}

protocol FeedViewProtocol: AnyObject {
    func displayPostsList(model: [FeedModel.Post])
}
