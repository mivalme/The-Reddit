//
//  Array.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 2/06/23.
//

import Foundation

extension Array {
    public subscript(safeIndex index: Int) -> Element? {
        guard index >= 0, index < endIndex else {
            return nil
        }

        return self[index]
    }
}
