//
//  FruitNutrientsView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 11/08/2023.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    // to display labels in nutrients information view
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    
                    // to provide horizontal line between each row
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 35)  // to ensure that the lable and content is not so close to eachother
                        
                        Text(fruit.nutrition[item])
//                            .multilineTextAlignment(.center)
                    }
//                    .padding(.top, 10)
                }
                
            }
            
            
        }  //: GROUP BOX
        
    }
}

//MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
