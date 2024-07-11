//
//  ProfileView.swift
//  MessengerTutorial
//
//  Created by Rudy Rolland on 04/02/2024.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    let user: User
    
    var body: some View {
        VStack{
            // header
            VStack {
                PhotosPicker(selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profileImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                    } else {
                        CircularProfileImageView(user: user, size: .xLarge)
                    }
                }
                
                
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            // List
            
            List{
                
                Section{
                    ForEach(SettingsOptionViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                
                Section {
                    Button("Me déconnecter") {
                        
                    }
                    
                    Button("Supprimer mon compte") {
                        
                    }
                }
                
                .foregroundColor(.red)
            }
        }
    }
}
    
    struct Profileview_Previews: PreviewProvider {
        static var previews: some View{
            ProfileView(user: User.MOCK_USER)
        }
    }

