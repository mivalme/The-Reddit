//
//  PostsUseCase.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 31/05/23.
//

import Foundation

final class PostsUseCase: BaseUseCase, PostsUseCaseProtocol {
    func getAllPosts(request: GetIAllPostsRequest, completionHandler: @escaping (ServiceResponse<GetIAllPostsResponse>) -> Void) {
        repository.request(url: DataConstants.Endpoint.top.url,
                           method: .get,
                           requestBody: request,
                           completionHandler: completionHandler)
    }
}
