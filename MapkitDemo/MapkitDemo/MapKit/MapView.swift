//
//  MapView.swift
//  MapkitDemo
//
//  Created by Sakshi on 02/01/26.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

    @ObservedObject var locationManager: LocationManager

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.showsUserLocation = true
        mapView.delegate = context.coordinator

        let tap = UITapGestureRecognizer(
            target: context.coordinator,
            action: #selector(Coordinator.handleTap(_:))
        )
        tap.cancelsTouchesInView = false
        mapView.addGestureRecognizer(tap)

        return mapView
    }

     func updateUIView(_ mapView: MKMapView, context: Context) {

        if locationManager.followUser {
            mapView.setRegion(locationManager.region, animated: true)
        }

        // remove old red pins
        let pins = mapView.annotations.filter { !($0 is MKUserLocation) }
        mapView.removeAnnotations(pins)

        // add red pin
        if let pin = locationManager.selectedPin {
            let annotation = MKPointAnnotation()
            annotation.coordinate = pin.coordinate
            mapView.addAnnotation(annotation)
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(locationManager: locationManager)
    }

    final class Coordinator: NSObject, MKMapViewDelegate {

        let locationManager: LocationManager

        init(locationManager: LocationManager) {
            self.locationManager = locationManager
        }

        @objc func handleTap(_ gesture: UITapGestureRecognizer) {
            guard let mapView = gesture.view as? MKMapView else { return }

            let point = gesture.location(in: mapView)
            let coordinate = mapView.convert(point, toCoordinateFrom: mapView)

            locationManager.followUser = false
            locationManager.selectedPin = LocationPin(coordinate: coordinate)
        }
    }
}
