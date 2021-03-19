//
//  CartView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-11.
//

import SwiftUI

struct CheckoutView: View {
    
    @EnvironmentObject var order: Order
    
    @ObservedObject var store: OrderStore
        
    var body: some View {
        
        if order.items.isEmpty {
            Text("Cart is empty")
                .font(.title)
                .foregroundColor(Color.gray)
                .navigationTitle("Cart")
        } else {
            VStack{
                Form {
                    
                    Section {
                        Text("Name:")
                        
                        if order.name.isEmpty {
                            Text("No name")
                                .foregroundColor(.red)
                        } else {
                            Text("\(order.name)")
                        }

                    }
                    Section {
                        Text("Contact Info:")
                        
                        if order.phoneNumberOrEmail.isEmpty {
                            Text("No contact info")
                                .foregroundColor(.red)
                        } else {
                            Text("\(order.phoneNumberOrEmail)")
                        }

                    }
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
                
            }.navigationTitle("Cart")
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CheckoutView(store: testStore)
            
        }
    }
}
