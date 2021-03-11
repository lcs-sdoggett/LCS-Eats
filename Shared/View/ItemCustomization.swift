//
//  ItemCustomization.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-05.
//

import SwiftUI

struct ItemCustomization: View {
    
    @State var menu = Menu()
    
    // These variables are used to customize the item
    @State private var size = Size.medium
    @State private var customization = ""
    @State private var quantity = 1
    
    
    var item: Item
    
    var body: some View {
        VStack {
            // Item image at top of screen
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
            
            // Form for customizations
            Form {
                
                // All items have a quatity
                Section {
                    Text("Quantity:")
                    Stepper(value: $quantity, in: 1...10) {
                        Text("Number of item: \(quantity)")
                    }
                }
                
                // Only Coke has size customization
                if item.name == "Coke" {
                    Section {
                        Text("Size:")
                        Picker("Size", selection: $size) {
                            Text(Size.small.rawValue).tag(Size.small)
                            Text(Size.medium.rawValue).tag(Size.medium)
                            Text(Size.large.rawValue).tag(Size.large)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                }
                
                // All items except Coke have size customization
                if item.name != "Coke" {
                    Section {
                        Text("Additional Changes:")
                        TextField("Customizations", text: $customization)
                    }
                }
            }.navigationBarTitle(item.name, displayMode: .inline)
        }
    }
}

struct ItemCustomization_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemCustomization(item: testItem)
        }
    }
}
