//
//  Untitled.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI
import PhotosUI

struct StoreImageView: View {

    @State private var selectedItem: PhotosPickerItem?
    @State private var image: UIImage?

    var body: some View {
        VStack(spacing: 20) {

            if let image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
            }

            PhotosPicker("Pick Image", selection: $selectedItem)

            Button("Save Image") {
                saveImage()
            }
            .disabled(image == nil)

            Spacer()
        }
        .padding()
        .navigationTitle("Store Image")
        .onChange(of: selectedItem) { newValue in
            loadImage(from: newValue)
        }
    }

    private func loadImage(from item: PhotosPickerItem?) {
        Task {
            if let data = try? await item?.loadTransferable(type: Data.self),
               let uiImage = UIImage(data: data) {
                image = uiImage
            }
        }
    }

    private func saveImage() {
        guard let image,
              let data = image.jpegData(compressionQuality: 0.8) else {
            print(" Failed to convert image to data")
            return
        }

        let url = FileManager.default
            .urls(for: .documentDirectory, in: .userDomainMask)[0]
            .appendingPathComponent("saved_image.jpg")

        do {
            try data.write(to: url)
            print(" Image saved successfully")
            print(" File path:", url.path)

            let fileExists = FileManager.default.fileExists(atPath: url.path)
            print(" File exists at path:", fileExists)

        } catch {
            print(" Error saving image:", error.localizedDescription)
        }
    }
}
