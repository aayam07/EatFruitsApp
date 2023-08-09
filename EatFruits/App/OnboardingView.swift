//
//  OnboardingView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 09/08/2023.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    
    // data for each fruit
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }  //: FOR LOOP
        }  //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
