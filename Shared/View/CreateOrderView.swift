//
//  CreateOrderView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

struct CreateOrderView: View {
    
    @State private var showingRestaurantMenu = false
    
    @State private var name = ""
    @State private var phoneNumberOrEmail = ""
    
    @State private var restaurant = Restaurant.mcdonalds
    
    var body: some View {
        VStack {
            
            Spacer()
                .frame(height: 30)
            
            HStack {
                Text("Name:")
                    .padding(.leading)
                Spacer()
            }
            TextField("Name", text: $name)
                .padding([.leading, .trailing])
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            HStack {
                Text("Phone Number:")
                    .padding(.leading)
                Spacer()
            }
            TextField("Phone Number/Email", text: $phoneNumberOrEmail)
                .padding([.leading, .trailing])
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            HStack {
                Text("Restaurant:")
                    .padding(.leading)
                Spacer()
            }
            
            Picker("Restaurant", selection: $restaurant) {
                Text(Restaurant.mcdonalds.rawValue).tag(Restaurant.mcdonalds)
                Text(Restaurant.timHortons.rawValue).tag(Restaurant.timHortons)
                Text(Restaurant.pizzaHut.rawValue).tag(Restaurant.pizzaHut)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            
            .navigationTitle("New Order")
        }

    }
}

struct CreateOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateOrderView()
        }
    }
}
