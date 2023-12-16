//
//  ProductDataServiceProtocol.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import Foundation

protocol ProductDataServiceProtocol {
    var productsPublisher: Published<[Product]>.Publisher? { get }
    func addProduct(_ product: ProductModel)
}
