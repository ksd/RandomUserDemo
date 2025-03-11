//
//  ContentView.swift
//  RandomUserDemo
//
//  Created by ksd on 05/03/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(UserController.self) var userController
    var body: some View {
        List {
            ForEach(userController.users) { user in
                HStack {
                    AsyncImage(url: user.picture.medium)
                    Text(user.fullName)
                }
            }
        }
    }
}

#Preview {
    ContentView().environment(UserController())
}
