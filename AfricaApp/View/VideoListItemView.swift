//
//  VideoListItem.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 19/04/24.
//

import SwiftUI

struct VideoListItemView: View {
    // MARK:  propriedades
    let video: Video
    
    // MARK:  body
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//zstack
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            }
        }//hstack
    }
}

struct VideoListItem_previews: PreviewProvider{
    static let videos : [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View{
        VideoListItemView(video: videos[0])
    }
}
