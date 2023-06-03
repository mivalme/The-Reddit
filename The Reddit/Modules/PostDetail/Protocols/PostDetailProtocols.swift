//
//  PostDetailProtocols.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 2/06/23.
//

import Foundation

protocol PostDetailInteractorProtocol { }

protocol PostDetailPresenterProtocol {
    var selectedPost: FeedModel.Post? { get }
}

protocol PostDetailInteractorOutputProtocol: AnyObject { }

protocol PostDetailRouterProtocol { }

protocol PostDetailViewProtocol: AnyObject { }
