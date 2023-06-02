//
//  PostsUseCaseProtocol.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 31/05/23.
//

import Foundation

protocol PostsUseCaseProtocol {
    func getAllPosts(request: GetIAllPostsRequest, completionHandler: @escaping (ServiceResponse<GetIAllPostsResponse>) -> Void)
}
