//
//  MediaHomeView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI

struct MediaHomeView: View {

    var body: some View {
        List {

            NavigationLink("Camera") {
                CameraView()
            }

            NavigationLink("Storing Pictures") {
                StoreImageView()
            }

            NavigationLink("Share Link") {
                ShareLinkView()
            }

            NavigationLink("Video Player") {
                VideoPlayerView()
            }

            NavigationLink("Color Picker") {
                ColorPickerDemoView()
            }
        }
        .navigationTitle("Media")
    }
}
