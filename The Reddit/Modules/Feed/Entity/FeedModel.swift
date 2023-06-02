//
//  FeedModel.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 1/06/23.
//

import Foundation

struct FeedModel {
    struct Post {
        let title: String
        let author: String
        let date: String
        let thumbnail: String
        let commentsQuantity: Int
        let subreddit: String
    }
}
