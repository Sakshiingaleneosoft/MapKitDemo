//
//  ShareLinkView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI

struct ShareLinkView: View {

    let url = URL(string: "https://developer.apple.com")!

    var body: some View {
        VStack(spacing: 30) {

            Text("Share this link")
                .font(.headline)

            ShareLink(item: url) {
                Label("Share Apple Developer", systemImage: "square.and.arrow.up")
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Share Link")
    }
}
