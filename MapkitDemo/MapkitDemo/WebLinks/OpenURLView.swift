//
//  OpenURLView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI

struct OpenURLView: View {

    @Environment(\.openURL) var openURL

    var body: some View {
        VStack(spacing: 30) {

            Button("Open Apple Website") {
                openURL(URL(string: "https://www.apple.com")!)
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
        .navigationTitle("Open Web Link")
    }
}
