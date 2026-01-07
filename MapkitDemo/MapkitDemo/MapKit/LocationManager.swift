//
//  LocationManager.swift
//  MapkitDemo
//
//  Created by Sakshi on 31/12/25.
//

import Foundation
import CoreLocation
import MapKit
import Combine

final class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {

    private let manager = CLLocationManager()

    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 18.5789, longitude: 73.7400),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    @Published var selectedPin: LocationPin?
    @Published var followUser = true
    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation]) {
        guard followUser else { return }
        guard let location = locations.last else { return }
        region.center = location.coordinate
    }
    func recenterOnUser() {
        followUser = true
    }

}
