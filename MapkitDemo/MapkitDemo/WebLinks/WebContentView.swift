//
//  WebContentView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI
import WebKit

struct WebContentView: View {

    var body: some View {
        HTMLWebView()
            .navigationTitle("Web Content")
            .ignoresSafeArea(edges: .bottom)
    }
}

struct HTMLWebView: UIViewRepresentable {

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()

        let html = """
        <html>
        <head>
            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        </head>
        <body>
            <h1>Web Content Demo</h1>
            <p>This content is loaded from an HTML string.</p>
            <ul>
                <li>SwiftUI</li>
                <li>WebKit</li>
                <li>WKWebView</li>
            </ul>
        </body>
        </html>
        """

        webView.loadHTMLString(html, baseURL: nil)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
