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
        List {
            ForEach(cart.items) { item in
                HStack {
                    Image(item.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70, alignment: .center)
                    VStack {
                        Text(item.name)
                        Text("\(item.price)")
                    }
                }
            }
            
        }.navigationTitle("Cart")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CartView(store: testStore, cart: testCartStore)
            
        }
    }
}
