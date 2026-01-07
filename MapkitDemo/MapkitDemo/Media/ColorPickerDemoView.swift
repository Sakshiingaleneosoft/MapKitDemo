//
//  ColorPickerDemoView.swift
//  MapkitDemo
//
//  Created by Sakshi on 07/01/26.
//

import SwiftUI

struct ColorPickerDemoView: View {
    @State private var color = Color.blue

    var body: some View {
        VStack {
            ColorPicker("Pick a Color", selection: $color)
                .foregroundStyle(Color.red)
            Rectangle()
                .fill(color)
                .frame(height: 200)
        }
        .padding()
        .navigationTitle("Color Picker")
    }
}
