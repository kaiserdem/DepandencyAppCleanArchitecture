//
//  UseCaseViewModel.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import Foundation

public protocol UseCaseProvider {
    func build<UseCaseType>() -> UseCaseType
}

public protocol UseCaseViewModel {
    init(useCaseProvider: UseCaseProvider)
}
