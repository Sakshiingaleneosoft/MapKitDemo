//
//  Web Links.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//
import SwiftUI

struct WebLinksHomeView: View {

    var body: some View {
        List {
            NavigationLink("Open Web Link (openURL)") {
                OpenURLView()
            }

            NavigationLink("Safari View Controller") {
                SafariViewDemo()
            }

            NavigationLink("WebKit (WKWebView)") {
                WebKitDemoView()
            }

            NavigationLink("Web Content (HTML)") {
                WebContentView()
            }
        }
        .navigationTitle("Web Links")
    }
}

