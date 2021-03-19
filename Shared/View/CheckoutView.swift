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
                .navigationTitle("Checkout")
        } else {
            ZStack {
                VStack{
                    Form {
                        
                        // Section to dislay the users name
                        Section {
                            Text("Name:")
                            // If the user didn't input a name, display a red "No Name" text
                            if order.name.isEmpty {
                                Text("No Name")
                                    .foregroundColor(.red)
                            } else {
                                Text("\(order.name)")
                            }

                        }
                        
                        // Section to dislay the users contact info
                        Section {
                            Text("Contact Info:")
                            // If the user didn't input a name, display a red "No Name" text
                            if order.phoneNumberOrEmail.isEmpty {
                                Text("No Contact Info")
                                    .foregroundColor(.red)
                            } else {
                                Text("\(order.phoneNumberOrEmail)")
                            }

                        }
                        // Create a list of all of the users items
                        
                        
                        Section {
                            Text("Items:")
                            
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
                                    
                                    // This button will remove the item from the list if the user no longer wants the item in their order
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
                    }
                    
                }.navigationTitle("Checkout")
                
                VStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Text("Place Order")
                            .bold()
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60)
                            .background(Color.blue)
                            .foregroundColor(.white)
                    }
                }
            }
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
