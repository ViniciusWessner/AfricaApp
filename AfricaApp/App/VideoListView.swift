//
//  VideoListView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 14/04/24.
//

import SwiftUI

struct VideoListView: View {
    
    // MARK:  propriedades
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    
    
    // MARK:  body
    var body: some View {
        NavigationView {
            List(videos) { item in
                NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }
            }//list
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        //desordenar itens
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            }
        }//navigation
    }
}

#Preview {
    VideoListView()
}
