//
//  LoginView.swift
//  MessengerTutorial
//
//  Created by Rudy Rolland on 04/02/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
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
                    
                    SecureField("Entrer votre mot de passe", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                }
                
                //mot de passe oublier
                
                Button {
                    print("Mot de passe oublié")
                } label: {
                    Text("Mot de passe oublié ?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                
                //boutton login
                
                Button{
                    print("Login")
                } label: {
                    Text("Connexion")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemTeal))
                        .cornerRadius(10)
                }
                .padding(.vertical)
                
                //facebook login
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OU")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    }
                .foregroundColor(.gray)
                
                HStack{
                    Image("facebook")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continuer avec Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                    }
                .padding(.top, 8)
                
                Spacer()
                
                //sign up
                
                Divider()
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3) {
                        Text("Pas encore de compte ?")
                        
                        Text("M'inscrire")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
                
            }
        }
    }
}
        
struct LoginView_Previews: PreviewProvider{
    static var previews: some View {
        LoginView()
        }
    }
