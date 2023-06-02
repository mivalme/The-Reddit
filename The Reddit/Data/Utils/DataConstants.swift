//
//  DataConstants.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 30/05/23.
//

import Foundation

struct DataConstants {
    struct Environments {
        static let dev = "https://www.reddit.com"
    }
    
    enum Subreddit: String {
        case all = "/r/all/"
    }
    
    enum Endpoint {
        case top
        
        var url: String {
            switch self {
            case .top:
                return Subreddit.all.rawValue + "top/.json"
            }
        }
    }
}
