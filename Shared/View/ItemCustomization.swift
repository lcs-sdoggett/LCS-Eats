//
//  ItemCustomization.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-05.
//

import SwiftUI

struct ItemCustomization: View {
    
    @Binding var showingItemCustomization: Bool
    
    var itemIndex: Int
        
    @State var menu = Menu()
    
    @State var quantity = 1
    
    var body: some View {
        NavigationView {
            Form {
                Image(menu.mcdonaldsMenu[itemIndex].imageName)
                    .resizable()
                    .scaledToFill()
                
                Stepper(value: $quantity, in: 1...10) {
                    
                    Text("Quantity: \(quantity)")
                }
                
                Text(menu.mcdonaldsMenu[itemIndex].name)

            }.navigationBarTitle(menu.mcdonaldsMenu[itemIndex].name, displayMode: .inline)
        }
    }
}

struct ItemCustomization_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemCustomization(showingItemCustomization: .constant(true), itemIndex: 0)
        }
    }
}
