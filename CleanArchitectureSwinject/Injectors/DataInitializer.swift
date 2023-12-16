//
//  DataInitializer.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import Foundation

class DataInitializer: ObservableObject {
    
    func initializeData() {
        initializeDI()
    }
    
    init() {
        self.initializeData()
    }
}
