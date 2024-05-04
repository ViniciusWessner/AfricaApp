//
//  ExternalWeblinkView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 19/04/24.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK:  Propriedades
    let animal: Animal
    
    
    // MARK:  body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundStyle(.accent)
            }//hstack
        }//box
    }
}

struct ExternalWeblinkView_previews: PreviewProvider{
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        ExternalWeblinkView(animal: animals[0])
    }
}
