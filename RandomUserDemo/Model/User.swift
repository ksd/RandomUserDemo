//
//  User.swift
//  RandomUserDemo
//
//  Created by ksd on 05/03/2025.
//

import Foundation

struct User: Decodable, Identifiable {
    var id: UUID {
        UUID()
    }
    let name: Name
    let picture: Picture

    struct Name: Decodable {
        let title: String
        let first: String
        let last: String
    }

    struct Picture: Decodable {
        let large: URL
        let medium: URL
    }

    var fullName: String {
        "\(name.title) \(name.first) \(name.last)"
    }
}
