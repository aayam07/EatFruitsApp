//
//  ContentView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 07/08/2023.
//

import SwiftUI

struct ContentView: View {

    //MARK: - PROPERTIES
    //    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
//        Button {
//            isOnboarding = true
//        } label: {
//            Text("Click me")
//        }
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        
                        // label for navigation link
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }  //: NAVIGATION

    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
