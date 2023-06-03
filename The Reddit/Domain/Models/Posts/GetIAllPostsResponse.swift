//
//  GetIAllPostsResponse.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 31/05/23.
//

import Foundation

struct GetIAllPostsResponse: Codable {
    let data: ResponseData
    
    struct ResponseData: Codable {
        let after: String
        let children: [Children]
    }
    
    struct Children: Codable {
        let data: ChildrenData
        
        struct ChildrenData: Codable {
            let title: String
            let author: String
            let created: Double
            let thumbnail: String
            let numComments: Int
            let subreddit: String
            
            enum CodingKeys: String, CodingKey {
                case title
                case author
                case created
                case thumbnail
                case numComments = "num_comments"
                case subreddit
            }
        }
    }
}
