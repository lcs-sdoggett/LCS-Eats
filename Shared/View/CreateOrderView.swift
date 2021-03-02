//
//  CreateOrderView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI
import Combine



struct CreateOrderView: View {
    
    @State private var showingRestaurantMenu = false
    
    @ObservedObject var order = Order()
    
    @State private var name = ""
    @State private var phoneNumberOrEmail = ""
    
    var body: some View {
        Form {
            
            Section {
                Text("Name:")
                
                TextField("Name", text: $order.name)
            }
            
            Section {
                Text("Phone Number:")
                
                TextField("Phone Number/Email", text: $phoneNumberOrEmail)
            }
            
            Section {
                Text("Restaurant:")
                Picker("Restaurant:", selection: $order.restaurant) {
                    ForEach(0 ..< Order.restaurants.count) {
                        Text(Order.restaurants[$0]).tag($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section {
                Button("Next") {
                    self.saveFirstScreen()
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.accentColor)
            }
            
        }.navigationTitle("Order")
        
    }
    
    func saveFirstScreen() {
        
        
    }
}

struct CreateOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateOrderView()
        }
    }
}
