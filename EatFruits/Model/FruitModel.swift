//
//  FruitModel.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 09/08/2023.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()  // to uniquely identify and differentiate each fruit item
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}


