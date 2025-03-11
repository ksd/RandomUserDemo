//
//  UserDetailView.swift
//  RandomUserDemo
//
//  Created by ksd on 11/03/2025.
//

import SwiftUI

struct UserDetailView: View {
    var user: User

    init(_ user: User) {
        self.user = user
    }

    var body: some View {
        VStack {
            UserMapView(coordinates: user.coordinates!)
                .frame(height: 300)

            UserImageView(pictureURL: user.picture.large)
                .offset(y: -110)

            VStack {
                Text(user.fullName)
                    .font(.title)
                Text("Speedwaykører")
            }

        }
    }
}

#Preview {
    UserDetailView(UserController.demoUser)
}
