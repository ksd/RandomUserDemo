//
//  RandomUserDemoApp.swift
//  RandomUserDemo
//
//  Created by ksd on 05/03/2025.
//

import SwiftUI

@main
struct RandomUserDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environment(UserController())
        }
    }
}
