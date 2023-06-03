//
//  TheRedditLocalizables.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 2/06/23.
//

import SwiftUI

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: "TheRedditLocalizables", comment: "")
    }
}

struct TheRedditLocalizables {
    static let subredditTitle = "subreddit_title".localized
    static let authorTitle = "author_title".localized
    static let commentsTitle = "comments_title".localized
    static let createdAtTitle = "createdAt_title".localized
}
