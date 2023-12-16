//
//  ProductsView.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import SwiftUI

struct ProductsView: View {
    
    @State var introStack = NavigationPath()
    @State var products: [Product] = []
    
    private var productViewModel: ProductViewModel = UseCaseViewModelFactory.createViewModel()


    var body: some View {
        NavigationStack(path: $introStack) {
            VStack {
                Text("Products screen")
                    .font(.title)
                
                Spacer()
                Button("Add product") {
                    //viewModel.addProduct()
                }
                .foregroundColor(.blue)
                .padding(20)
                .buttonStyle(.borderless)
                .frame(maxWidth: .infinity)
                .border(.gray)
                Spacer()
//                List {
//
//                    ForEach(products) { product in
//                        Text("\(product.name!)" + ", calories: \(product.calories)")
//                            .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
//                            .onTapGesture {
//                                introStack.append("DetailScreen")
//                            }
//                    }
//                }
//                .listStyle(PlainListStyle())
                
            }
            .navigationDestination(for: String.self) { screen in
                switch screen {
                case "DetailScreen":
                    ProductDetailView()
                default:
                    Text("Error screen")
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                //productViewModel.addProduct()
                //print(productViewModel.products.count)
            }
        }
//        .task {
//            products = viewModel.addSubscribers()
//        }
    }
}
