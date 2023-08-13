//
//  SettingsView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 13/08/2023.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    // to create properties that stores values provided to us externally like device's appearance, time zone, color scheme i.e the information that comes from the view's environment. Allows us to know whether this settings view is currently present in the screen and also to dismiss it immediately. This property is attached to the isPresented variable which is stored in the App's environment.
    
//    @Environment(\.isPresented) var isPresented
    @Environment(\.dismiss) var dismiss
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text("Hello")
                }  //: VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(trailing:
                        Button(action: {
                    dismiss()  // dismiss this view when pressed cross
                }, label: {
                    Image(systemName: "xmark")
                })
                )
                .padding()  // padding for the VSTACK contents
                
            }  //: SCROLL
            
        }  //: NAVIGATION
        
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
