//
//  CreateOrderView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI
import Combine



struct CreateOrderView: View {
    
    @ObservedObject var order = Order()
    
    @State private var showingRestaurantMenu = false
    
    @State private var name = ""
    @State private var phoneNumberOrEmail = ""
    
    var body: some View {
        
        Form {
            
            Section {
                
                Text("Name:")
                    .padding(.leading)
                
                TextField("Name", text: $name)
                    .padding([.leading, .trailing])
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Section {
                
                Text("Phone Number:")
                    .padding(.leading)
                
                TextField("Phone Number/Email", text: $phoneNumberOrEmail)
                    .padding([.leading, .trailing])
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Section {
                Text("Restaurant:")
                    .padding(.leading)
                
                Picker("Restaurant:", selection: $order.restaurant) {
                    ForEach(0 ..< Order.restaurants.count) {
                        Text(Order.restaurants[$0]).tag($0)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            Button("Next") {
                saveFirstScreen()
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .foregroundColor(.white)
            .padding()
            .background(Color.accentColor)
            
            
            
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
