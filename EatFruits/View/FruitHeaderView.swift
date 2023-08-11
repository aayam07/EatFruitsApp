//
//  FruitHeaderView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 11/08/2023.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    // to provide scale animation to the image
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)  // for iPad screen
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
        }  //: ZStack
        .frame(height: 440)  // to maximize the height of ZStack
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

//MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))  // this is for preview only
    }
}
