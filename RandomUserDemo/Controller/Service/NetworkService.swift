//
//  NetworkService.swift
//  RandomUserDemo
//
//  Created by ksd on 05/03/2025.
//

import Foundation

class NetworkService {
    static func getData(from url: URL) async -> Data? {
        let session = URLSession.shared
        let (data, response) = try! await session.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse, (200..<300).contains(httpResponse.statusCode) else { return nil }
        return data
    }
}

