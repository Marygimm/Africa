//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Mary Moreira on 20/10/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - Properties
    
    var videoSelected: String
    var videoTitle: String
        
    //MARK: - Body
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) 
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal, 8), alignment: .topLeading)
        } //: VStack
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
