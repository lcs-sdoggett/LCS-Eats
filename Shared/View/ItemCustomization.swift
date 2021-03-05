//
//  ItemCustomization.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-05.
//

import SwiftUI

struct ItemCustomization: View {

    let item: Item
    
    var body: some View {
        Form {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

        }
    }
}

struct ItemCustomization_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemCustomization(item: Item.example)
        }
    }
}
