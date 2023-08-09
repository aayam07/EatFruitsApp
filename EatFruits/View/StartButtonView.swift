//
//  StartButtonView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 09/08/2023.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        Button {
            print("Exit the on boarding")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.25)
            )
        }  //: BUTTON
        .accentColor(Color.white)  // to keep label color as white even in light mode
//        .background(
//            Capsule()
//                .strokeBorder(Color.white, lineWidth: 1.25)
//        )

    }
}

//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
