//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Mary Moreira on 20/10/2022.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    guard let file = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else { fatalError("Not file found!") }
    videoPlayer = AVPlayer(url: file)
    videoPlayer?.play()
    return videoPlayer!
}
