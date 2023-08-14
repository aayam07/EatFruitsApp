//
//  StartButtonView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 09/08/2023.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    // to use isOnboarding key value to mutate the property in the App storage
    @AppStorage("isOnboarding") var isOnboardingViewActive: Bool?
    
    //MARK: - BODY
    var body: some View {
        Button {
            isOnboardingViewActive = false
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
//            .overlay {
//                Capsule()
//                    .stroke()
//
//            }
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
