//
//  Double.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 2/06/23.
//

import Foundation

extension Double {
    var dateString: String {
        let date = Date(timeIntervalSince1970: self)
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        let strDate = dateFormatter.string(from: date)
        return strDate
    }
}
