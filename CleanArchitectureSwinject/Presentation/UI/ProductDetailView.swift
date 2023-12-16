//
//  ProductDetailView.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    //@Dependency(\.features.contentFeature.productViewModel) var viewModel

    var body: some View {
        Text("Detail Screen!")
        //Text("Amount: \(viewModel.products.count) Apples")
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
