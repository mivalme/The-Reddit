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
        let children: [Children]
    }
    
    struct Children: Codable {
        let data: ChildrenData
        
        struct ChildrenData: Codable {
            let title: String
        }
    }
}
