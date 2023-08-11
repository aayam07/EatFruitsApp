//
//  SourceLinkView.swift
//  EatFruits
//
//  Created by Aayam Adhikari on 11/08/2023.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        
        // container to provide a sleek design
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
            
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
