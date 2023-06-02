//
//  FeedProtocols.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import Foundation

protocol FeedInteractorProtocol {
    func fetchPosts()
}

protocol FeedPresenterProtocol {
    func viewDidLoad()
}

protocol FeedInteractorOutputProtocol: AnyObject {
    func fetchedPostsSuccess(posts: [FeedModel.Post])
}

protocol FeedRouterProtocol {
    
}

protocol FeedViewProtocol: AnyObject {
    func displayPostsList(model: [FeedModel.Post])
}
