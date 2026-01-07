//
//  SafariView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI
import SafariServices

struct SafariViewDemo: View {

    @State private var showSafari = false

    var body: some View {
        VStack(spacing: 20) {

            Button("Open in Safari View") {
                showSafari = true
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
        .navigationTitle("Safari View")
        .sheet(isPresented: $showSafari) {
            SafariView(url: URL(string: "https://developer.apple.com")!)
        }
    }
}

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}
