//
//  PostDetailPresenter.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 2/06/23.
//

import Foundation

class PostDetailPresenter: PostDetailPresenterProtocol {
    weak var view: PostDetailViewProtocol?
    var router: PostDetailRouterProtocol?
    var interactor: PostDetailInteractorProtocol?
    
    var selectedPost: FeedModel.Post?
}

extension PostDetailPresenter: PostDetailInteractorOutputProtocol {
    
}
