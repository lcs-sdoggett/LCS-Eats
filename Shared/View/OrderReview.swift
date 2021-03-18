//
//  OrderView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI


struct OrderReview: View {
    
    @ObservedObject var store: OrderStore
    
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        
        Form {
            
            // Name Text
            Section {
                Text("Name: \(order.name)")
            }
            
            // Name Text
            Section {
                Text("Phone#/Email: \(order.phoneNumberOrEmail)")
            }
            
            // List of items and prices
            Section {
                
            }
            
        }
        // Items text
        HStack {
            Text("Items:")
                .padding([.leading, .top])
            Spacer()
        }
        
        // Item 1 text
        HStack {
            Text("Burger")
                .padding([.leading, .top])
            Spacer()
            Text("$2.53")
                .padding([.trailing, .top])
        }
        
        // Item 2 text
        HStack {
            Text("Drink")
                .padding([.leading, .top])
            Spacer()
            Text("$5.32")
                .padding([.trailing, .top])
        }
        
        // Tax tect
        HStack {
            Text("Tax")
                .padding([.leading, .top])
            Spacer()
            Text("$2.30")
                .padding()
        }
        
        // Delivery text
        HStack {
            Text("Delivery")
                .padding(.leading)
            Spacer()
            Text("$2.32")
                .padding()
        }
        
        // Button
        Button("Place Order Total: $8.34") {
            
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .foregroundColor(.white)
        .background(Color.accentColor)
        
        .navigationTitle("Order Summary")
    }
}


struct OrderReview_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OrderReview(store: testStore)
        }
    }
}
