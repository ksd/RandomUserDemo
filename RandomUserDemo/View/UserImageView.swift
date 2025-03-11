//
//  UserImageView.swift
//  RandomUserDemo
//
//  Created by ksd on 11/03/2025.
//

import SwiftUI

struct UserImageView: View {
    var pictureURL: URL

    var body: some View {
        AsyncImage(url: pictureURL)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.black, lineWidth: 3)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    UserImageView(pictureURL: UserController.demoUser.picture.large)
}
