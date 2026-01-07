//
//  ContentView.swift
//  MapkitDemo
//
//  Created by Sakshi on 31/12/25.
//

import SwiftUI
import MapKit
import CoreLocation

struct ContentView: View {

    @StateObject private var locationManager = LocationManager()

    var body: some View {
        ZStack {
            MapView(locationManager: locationManager)
                .ignoresSafeArea()

            VStack {
                Spacer()

                HStack {
                    Spacer()

                    Button {
                        locationManager.recenterOnUser()
                    } label: {
                        Image(systemName: "location.fill")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.blue)
                            .padding(14)
                            .background(.ultraThinMaterial)
                            .clipShape(Circle())
                            .shadow(radius: 4)
                    }
                    .padding(.trailing, 20)
                    .padding(.bottom, 30)
                }
            }
        }
    }
}


struct LocationPin: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

#Preview {
    ContentView()
}
