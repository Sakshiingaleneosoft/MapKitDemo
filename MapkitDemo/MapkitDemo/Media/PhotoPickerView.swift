//
//  PhotoPickerView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI
import PhotosUI

struct PhotoPickerView: View {
    @State private var selectedItem: PhotosPickerItem?

    var body: some View {
        PhotosPicker("Pick Photo", selection: $selectedItem)
            .navigationTitle("Photos Picker")
    }
}
