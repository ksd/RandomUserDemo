//
//  User.swift
//  RandomUserDemo
//
//  Created by ksd on 05/03/2025.
//

import Foundation
import CoreLocation

struct User: Decodable, Identifiable {
    var id: UUID {
        UUID()
    }
    let name: Name
    let picture: Picture
    let location: Location

    struct Name: Decodable {
        let title: String
        let first: String
        let last: String
    }

    struct Picture: Decodable {
        let large: URL
        let medium: URL
    }

    struct Location: Decodable {
        let coordinates: Coordinates

        struct Coordinates: Decodable {
            let latitude: String
            let longitude: String
        }
    }

    var coordinates: CLLocationCoordinate2D? {
        guard let lat = Double(location.coordinates.latitude),
              let long = Double(location.coordinates.longitude) else { return nil }
        return .init(latitude: lat, longitude: long)
    }

    var fullName: String {
        "\(name.title) \(name.first) \(name.last)"
    }
}
