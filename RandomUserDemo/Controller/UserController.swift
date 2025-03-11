//
//  UserController.swift
//  RandomUserDemo
//
//  Created by ksd on 05/03/2025.
//

import SwiftUI

@Observable
class UserController {
    var users: [User] = []

    init() {
        guard let randomUserURL = URL(string: "https://randomuser.me/api/?results=100&nat=dk") else { return }
        fetchUsers(from: randomUserURL)
    }

    private func fetchUsers(from url: URL) {
        Task(priority: .low) {
            guard let randomUserData = await NetworkService.getData(from: url) else { return }
            let decoder = JSONDecoder()
            do {
                let jsonResult = try decoder.decode(
                    RandomUserData.self,
                    from: randomUserData
                )
                self.users = jsonResult.results
            } catch {
                fatalError(
                    "Konverteringen gik ikke så godt: \(error.localizedDescription)"
                )
            }

        }
    }
}

extension UserController {
    static var demoUser = User(
        name: User.Name(title: "Hr.", first: "Ole", last: "Olsen"),
        picture: User.Picture(large: URL(string: "https://ole.olsen.dk")!, medium: URL(string: "https://ole.olsen.dk")!)
    )
}
