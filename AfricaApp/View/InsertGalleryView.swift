//
//  InsertGalleryView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 16/04/24.
//

import SwiftUI

struct InsertGalleryView: View {
    // MARK:  propriedades
    let animal: Animal
    
    
    // MARK:  body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }//loop
            }//hstack
        }//scroll
    }
}

struct InsertGalleryView_previews: PreviewProvider{
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        InsertGalleryView(animal: animals[0])
    }
}
