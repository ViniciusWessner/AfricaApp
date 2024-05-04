//
//  AnimalDetailView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 16/04/24.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK:  propriedades
    let animal: Animal
    
    // MARK:  body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                                
                // MARK:  Hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // MARK:  title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // MARK:  headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                // MARK:  gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsertGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // MARK:  facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you Know?")
                    
                    InsertFactView(animal: animal)
                }
                .padding(.horizontal)
                
                
                // MARK:  description
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.center)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MARK:  map
                Group{
                    HeadingView(headingImage: "map", headingText: "National parks")
                    InsertMapView()
                }
                
                // MARK:  link
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "learn More")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
                
                
            }//vstack
            .navigationBarTitle("Lean about \(animal.name)", displayMode: .inline)
        }//scroll
    }
}


struct AnimalDetailView_previews: PreviewProvider{
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View{
        AnimalDetailView(animal: animals[0])
    }
}
