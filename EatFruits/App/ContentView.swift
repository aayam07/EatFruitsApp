//
//  ContentView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 07/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Text("Hello World!")
        Button {
            isOnboarding = true
        } label: {
            Text("Click me")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
