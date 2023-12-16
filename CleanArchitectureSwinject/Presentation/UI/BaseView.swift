//
//  BaseView.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import SwiftUI

struct BaseView: View {
    
    var body: some View {
        TabView {
            ProductsView()
                .tabItem {
                    Label("Products", systemImage: "list.dash")
                }
            
            OptionView()
                .tabItem {
                    Label("Options", systemImage: "square.and.pencil")
                }
        }
    }
}

