//
//  GetProductsRepository.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import Foundation

protocol GetProductsRepository {
    func getProducts() -> Published<[Product]>.Publisher?
}

class GetProductsRepositoryImplementation: GetProductsRepository {
    
    private let service: ProductDataService
    
    init(service: ProductDataService) {
        self.service = service
    }

    func getProducts() -> Published<[Product]>.Publisher? {
        return service.productsPublisher
    }

}
