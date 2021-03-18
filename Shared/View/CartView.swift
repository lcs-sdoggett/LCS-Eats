//
//  CartView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-11.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var order: Order
    
    @ObservedObject var store: OrderStore
    
    @ObservedObject var cart: CartStore
    
    var body: some View {
        
        if order.items.isEmpty {
            Text("Cart is empty")
                .font(.title)
                .foregroundColor(Color.gray)
                .navigationTitle("Cart")
        } else {
            VStack{
                Form {
                    ForEach(order.items) { item in
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
                            Spacer()
                            
                            Button(action: {
                                if let index = order.items.firstIndex(of: item) {
                                    order.items.remove(at: index)
                                }
                            }) {
                                Image(systemName: "minus.circle")
                            }
                        }
                    }
                }
                
                Spacer()
                
                NavigationLink(destination: OrderReview(store: store, cart: cart), label : {
                    Text("Review Order")
                        .bold()
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60)
                        .background(Color.blue)
                        .foregroundColor(.white)
                })
                
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
