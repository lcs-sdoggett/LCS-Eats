//
//  Info.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-29.
//

import Foundation

struct Info: Decodable {
    let text: String
    let children: [Info]?
    
}
