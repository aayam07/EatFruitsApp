//
//  SettingsRowView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 14/08/2023.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil  // ? means Optional i.e can contain nil value
    
    // for link views
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
//            Divider()
//                .padding(.vertical, 4)
            
            HStack {
                // for horizontal divider
                Divider()
                    .padding(.horizontal, 2)
                
                Text(name)
                    .foregroundColor(Color.secondary)
                
                Spacer()
                
                if let safeContent = content {
                    
                    Text(safeContent)
                    
                } else if (linkLabel != nil && linkDestination != nil) {
                    
                    // link view
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        
                        // link label
                        Text(linkLabel!)
                    }
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                    
                } else {
                    EmptyView()  // displays empty view for the safety
                }
                
    //            if (content != nil) {
    //                Text(content!)
    //            } else {
    //                EmptyView()
    //            }
            }
        }
    }
}

//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer",content: "Aayam / Ronaldo")
                .previewLayout(.sizeThatFits)
                .padding()
            
            SettingsRowView(name: "Github", linkLabel: "My Site", linkDestination: "https://github.com/aayam07")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
                .padding()
        }
    }
}
