//
//  ProductViewModel.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import Foundation
import Combine

class ProductViewModel: ObservableObject, UseCaseViewModel {
    
    private let getProductsUseCase: GetProductsUseCase
    private let addProductUseCase: AddProductUseCase
    
    private lazy var productDataService: ProductDataService = container.resolve()
    
    @Published var products: [Product] = []
    
    private var cancellables = Set<AnyCancellable>()

    required init(useCaseProvider: UseCaseProvider) {
        self.addProductUseCase = useCaseProvider.build()
        self.getProductsUseCase = useCaseProvider.build()
        
        addSubscribers()
    }
    
    func addSubscribers() {
        getProductsUseCase.execute()?
            .sink { [weak self] newProducts in
                guard let self = self else { return }
                print("products: \(newProducts.count)")
                self.products = newProducts
            }
            .store(in: &cancellables)
    }
    
    func addProduct() {
        addProductUseCase.execute(ProductModel(name: "Apple \(String(products.count + 1))",
                                               calories: Double(arc4random()) / Double(UInt32.max),
                                               weight: 999.0))
    }
    
}
