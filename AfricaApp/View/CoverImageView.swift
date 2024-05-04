//
//  CoverImageView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 15/04/24.
//

import SwiftUI

struct CoverImageView: View {
    
    // MARK:  propriedades
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    
    // MARK:  body
    var body: some View {
        
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//loop
        }//tab
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView()
}
