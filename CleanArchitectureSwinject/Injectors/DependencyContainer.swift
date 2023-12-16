//
//  DependencyContainer.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import Foundation
import Swinject

func initializeDI() {
    registerRepositories()
    registerUseCases()
}

private func registerRepositories() {
    container.registerSingletone(GetProductsRepository.self, GetProductsRepositoryImplementation.init)
    container.registerSingletone(AddProductRepository.self, AddProductRepositoryImplementation.init)
}


private func registerUseCases() {
    container.registerSingletone(ProductDataService.init)
    container.registerSingletone(GetProductsUseCase.init)
    //container.registerSingletone(AddProductUseCase.init)
    
//    container.register(AddProductUseCase.self, factory: { _ in
//        AddProductUseCase(repository: AddProductRepository.self as! AddProductRepository)
//    }).inObjectScope(.container)
    
    
//    container.register(AddProductUseCase.self) { r in
//        AddProductUseCase.init(repository: AddProductRepository.self as! AddProductRepository)
//    }
    
}

