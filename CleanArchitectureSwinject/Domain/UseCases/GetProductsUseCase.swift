//
//  GetProductsUseCase.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import Foundation


class GetProductsUseCase {
    
    private let repository: GetProductsRepository

    public init(repository: GetProductsRepository) {
        self.repository = repository
    }
    
    public func execute() -> Published<[Product]>.Publisher? {
        return repository.getProducts()
    }
    
}
