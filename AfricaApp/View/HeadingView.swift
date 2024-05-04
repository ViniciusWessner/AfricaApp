//
//  HeadingView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 16/04/24.
//

import SwiftUI

struct HeadingView: View {
    
    // MARK:  propriedades
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
}
