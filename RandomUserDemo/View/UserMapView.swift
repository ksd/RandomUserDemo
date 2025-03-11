//
//  UserMapView.swift
//  RandomUserDemo
//
//  Created by ksd on 11/03/2025.
//

import SwiftUI
import MapKit

struct UserMapView: View {
    var coordinates: CLLocationCoordinate2D

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(center: self.coordinates,
                           latitudinalMeters: 75000,
                           longitudinalMeters: 75000)
    }

    var body: some View {
        Map(initialPosition: .region(region)) {
            Marker(coordinate: coordinates) {
                Image(systemName:"mappin.and.ellipse.circle.fill")
            }.tag(1)
        }
    }
}

#Preview {
    UserMapView(coordinates: UserController.demoUser.coordinates!)
}
