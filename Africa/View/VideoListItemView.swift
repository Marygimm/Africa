//
//  VideoListItem.swift
//  Africa
//
//  Created by Mary Moreira on 20/10/2022.
//

import SwiftUI

struct VideoListItemView: View {
    //MARK: - Properties
    
    let video: Video
    
    //MARK: - Body
    
    
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
            } //: ZStack
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                    
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        } //: HStack
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let video: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItemView(video: video[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
