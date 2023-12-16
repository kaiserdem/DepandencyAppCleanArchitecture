//
//  CleanArchitectureSwinjectApp.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import SwiftUI

@main
struct CleanArchitectureSwinjectApp: App {
    
    //private let productViewModel: ProductViewModel = container.resolve() as ProductViewModel

    //private let productViewModel: ProductViewModel = UseCaseViewModelFactory.standart.createViewModel()
    //private let productViewModel: ProductViewModel = UseCaseViewModelFactory.createViewModel()
    

    var body: some Scene {
        WindowGroup {
            BaseView()
                .environmentObject(DataInitializer())
               // .environmentObject(productViewModel)
        }
    }
}
