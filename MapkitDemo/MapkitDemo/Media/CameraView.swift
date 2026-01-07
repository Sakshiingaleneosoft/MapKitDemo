//
//  CameraView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI

struct CameraView: View {

    @State private var showCamera = false
    @State private var capturedImage: UIImage?

    var body: some View {
        VStack(spacing: 20) {

            if let image = capturedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
            } else {
                Text("No photo captured")
                    .foregroundColor(.gray)
            }

            Button("Open Camera") {
                showCamera = true
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
        .navigationTitle("Camera")
        .sheet(isPresented: $showCamera) {
            CameraPicker(image: $capturedImage)
        }
    }
}
