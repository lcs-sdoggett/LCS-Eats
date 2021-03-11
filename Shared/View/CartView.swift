//
//  CartView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-11.
//

import SwiftUI

struct CartView: View {
    
    @ObservedObject var store: OrderStore
    
    @ObservedObject var cart: CartStore
    
    var body: some View {
        
        if cart.items.isEmpty {
            Text("Cart is empty")
                .navigationTitle("Cart")
        }
        
        else {
            
            List {
                ForEach(cart.items) { item in
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 70, height: 70, alignment: .center)
                        
                        VStack(alignment: .leading) {
                            Text(item.name)
                            Text("$" + String(item.price))
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }.navigationTitle("Cart")
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CartView(store: testStore, cart: testCartStore)
            
        }
    }
}
