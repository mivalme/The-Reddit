//
//  FeedRouter.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import Foundation

class FeedRouter: FeedRouterProtocol {
    weak var viewController: BaseViewController?
    
    static func createModule() -> FeedViewController {
        let ref = FeedViewController.instantiate(from: .Feed)
        let presenter = FeedPresenter()
        
        let router = FeedRouter()
        router.viewController = ref
        
        let interactor = FeedInteractor()
        interactor.presenter = presenter
        
        presenter.view = ref
        presenter.router = router
        presenter.interactor = interactor
        
        ref.presenter = presenter
        return ref
    }
}
