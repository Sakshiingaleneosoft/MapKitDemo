//
//  VideoPlayerView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url:
            URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
        ))
        .navigationTitle("Video Player")
    }
}
