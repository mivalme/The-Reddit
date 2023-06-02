//
//  BaseUseCaseProtocol.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 31/05/23.
//

import Foundation

protocol BaseUseCaseProtocol {
    var repository: RemoteRepositoryProtocol { get }
}
