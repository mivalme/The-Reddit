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
    static let noInternetConnectionMessage = "no_internet_connection_error_message".localized
    static let errorDefaultMessage = "error_default_message".localized
    static let errorAlertTitle = "error_alert_title".localized
    static let errorAlertButtonTitle = "error_alert_button_title".localized
}
