//
//  CircularProfileImageView.swift
//  MessengerTutorial
//
//  Created by Rudy Rolland on 04/02/2024.
//

import SwiftUI

struct CircularProfileImageView: View {
    let user: User
    let size: ProfileImageSize
    
    enum ProfileImageSize {
        case xxSmall
        case xSmall
        case small
        case medium
        case large
        case xLarge
        
        var dimension: CGFloat {
        switch self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 40
        case .medium: return 56
        case .large: return 64
        case .xLarge: return 80
            }
        }
    }
    
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .foregroundColor(Color(.systemGray4))
            
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: User.MOCK_USER, size: .medium)
    }
   
}
