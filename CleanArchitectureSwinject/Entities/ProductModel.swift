//
//  ProductModel.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import Foundation

struct ProductModel: Identifiable, Codable, Hashable {
    var id = UUID().uuidString
    let name: String
    let calories: Double
    let weight: Double
}
