//
//  ItemCustomization.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-05.
//

import SwiftUI

struct ItemCustomization: View {
    
    @Binding var showingItemCustomization: Bool
    
    let itemIndex: Int
        
    var menu = Menu()
    
    var body: some View {
        Form {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

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
