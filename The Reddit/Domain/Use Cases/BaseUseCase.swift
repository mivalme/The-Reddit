//
//  BaseUseCase.swift
//  The Reddit
//
//  Created by Miguel Valcárcel on 31/05/23.
//

import Foundation

class BaseUseCase: BaseUseCaseProtocol {
    let repository: RemoteRepositoryProtocol
    
    public init(repository: RemoteRepositoryProtocol = RemoteRepository()) {
        self.repository = repository
    }
}
