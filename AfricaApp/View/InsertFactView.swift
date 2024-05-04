//
//  InsertFactView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 18/04/24.
//

import SwiftUI

struct InsertFactView: View {
    
    // MARK:  propriedade
    let animal: Animal
    
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }
            }//tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//box
    }
}

struct InsertFactView_previews: PreviewProvider{
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        InsertFactView(animal: animals[0])
    }
}
