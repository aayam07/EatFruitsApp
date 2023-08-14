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
    @Environment(\.dismiss) var dismiss  // to dismiss the settings sheet programatically
    
    // to implement Reset Toggle Button Feature
    @AppStorage("isOnboarding") var isOnboardingViewActive: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - SECTION 1
                    
                    GroupBox {
                        // content of the GroupBox
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10, content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Spacer()
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are the sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        })
                    } label: {
                        // resuable Label View Component
                       SettingsLabelView(labelText: "EatFruits", labelImage: "info.circle")
                    }  //: BOX

                    
                    //MARK: - SECTION 2
                    
                    GroupBox {
                        
                        // GroupBox content
                        Divider()
                            .padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle switch in this box. It starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)  // to not truncate the text at any cost
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        // If isOnboardingViewActive binding boolean variable is true then the toggle is ON and vice-versa, then the app's Onboarding view is active and shown behind the settings sheet
                        Toggle(isOn: $isOnboardingViewActive) {
                            // Label for the toggle
                            if isOnboardingViewActive {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }

                    
                    //MARK: - SECTION 3
                    
                    GroupBox {
                        
                        // content of the GroupBox
                        
                        SettingsRowView(name: "Developer", content: "Aayam Adhikari")
                        
                        SettingsRowView(name: "Designer ", content: "Aayam Adhikari")

                        SettingsRowView(name: "Compatibility", content: "iOS 14")

                        SettingsRowView(name: "Github", linkLabel: "My Profile", linkDestination: "github.com/aayam07")

                        SettingsRowView(name: "Twitter", linkLabel: "@AayamAdhikari2", linkDestination: "twitter.com/AayamAdhikari2")

                        SettingsRowView(name: "SwiftUI", content: "3.0")

                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                        
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }  //: BOX
                    
                    

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
