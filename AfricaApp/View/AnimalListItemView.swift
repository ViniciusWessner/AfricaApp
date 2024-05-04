//
//  AnimalListView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 16/04/24.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK:  propriedades
    let animal: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 122)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//vstack
        }//hstack
    }
}

struct AnimalListItemView_previews: PreviewProvider{
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        AnimalListItemView(animal: animals[1])
    }
}
