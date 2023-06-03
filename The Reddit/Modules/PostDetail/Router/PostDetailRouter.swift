//
//  PostDetailRouter.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 2/06/23.
//

import Foundation

class PostDetailRouter: PostDetailRouterProtocol {
    weak var viewController: BaseViewController?
    
    static func createModule(selectedPost: FeedModel.Post) -> PostDetailViewController {
        let ref = PostDetailViewController.instantiate(from: .PostDetail)
        let presenter = PostDetailPresenter()
        
        let router = PostDetailRouter()
        router.viewController = ref
        
        let interactor = PostDetailInteractor()
        interactor.presenter = presenter
        
        presenter.view = ref
        presenter.router = router
        presenter.interactor = interactor
        presenter.selectedPost = selectedPost
        
        ref.presenter = presenter
        return ref
    }
}
