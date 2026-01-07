//
//  WebKitView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI
import WebKit

struct WebKitDemoView: View {

    var body: some View {
        WebView(url: URL(string: "https://developer.apple.com/swift/")!)
            .navigationTitle("WKWebView")
            .ignoresSafeArea(edges: .bottom)
    }
}

struct WebView: UIViewRepresentable {

    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
