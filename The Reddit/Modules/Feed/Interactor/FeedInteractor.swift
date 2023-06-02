//
//  FeedInteractor.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import Foundation

class FeedInteractor: FeedInteractorProtocol {
    weak var presenter: FeedInteractorOutputProtocol?
    
    var postsUseCase: PostsUseCaseProtocol?
    
    init(postsUseCase: PostsUseCaseProtocol = PostsUseCase()) {
        self.postsUseCase = postsUseCase
    }
    
    func fetchPosts() {
        postsUseCase?.getAllPosts(request: .init(), completionHandler: { [weak self] response in
            guard let self = self else { return }
            switch response {
            case .success(let data):
                let model: [FeedModel.Post] = data.data.children.map({ .init(title: $0.data.title,
                                                                             author: $0.data.author,
                                                                             date: $0.data.created.dateString,
                                                                             thumbnail: $0.data.thumbnail,
                                                                             commentsQuantity: $0.data.numComments,
                                                                             subreddit: $0.data.subreddit) })
                self.presenter?.fetchedPostsSuccess(posts: model)
            case .failure :
                break
            case .notConnectedToInternet:
                break
            }
        })
    }
}

extension Double {
    var dateString: String {
        let date = Date(timeIntervalSince1970: self)
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT") //Set timezone that you want
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm" //Specify your format that you want
        let strDate = dateFormatter.string(from: date)
        return strDate
    }
}
