//
//  EatFruitsApp.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 07/08/2023.
//

import SwiftUI

@main  // allows a type to be the entry point for the execution of the program (here, below struct)
struct EatFruitsApp: App {
    
    // to store the user defaults in the permanent System App Storage. When value changes it updates the UI immediately. Here, 'isOnboarding' is the key to store the boolean variable value in the system storage
    @AppStorage("isOnboarding") var isOnboardingViewActive: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
