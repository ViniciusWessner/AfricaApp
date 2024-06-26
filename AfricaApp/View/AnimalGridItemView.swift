//
//  AnimalGridItemView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 27/04/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    // MARK:  propriedades
    
    let animal: Animal
    
    
    // MARK:  body
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    
static var animals: [Animal] = Bundle.main.decode("animals.json")
    
  static var previews: some View {
      AnimalGridItemView(animal: animals[0])
  }
}
