//
//  RegistrationView.swift
//  MessengerTutorial
//
//  Created by Rudy Rolland on 04/02/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            //logo image
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height:150)
                .padding()
                .clipShape(Capsule())
            
            
            //text fields
            VStack (spacing:12){
                TextField("Entrer votre email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Entrer votre prénom", text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Entrer votre mot de passe", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
            }
            Button{
                print("Handle login")
            } label: {
                Text("M'inscrire")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemTeal))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button{
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Vous avez déjà un compte ?")
                    
                    Text("Se connecter")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
    }
}
    
    struct RegistrationView_Previews: PreviewProvider{
        static var previews: some View {
            RegistrationView()
        }
    }

