//
//  WelcomeScreenView.swift
//  login
//
//  Created by Jason Susanto on 9/5/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
        
                VStack {
                    Text("JEF Mental")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Your mental health assisant")
                        .font(.headline)
                    Spacer()
                    Image(uiImage: #imageLiteral(resourceName: "onboard"))
                    Spacer()
                    PrimaryButton(title: "Sign In")
                    
                    NavigationLink(
                        destination: SignInScreenView().navigationBarHidden(true),
                        label: {
                            Text("Sign Up")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("PrimaryColor"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)
                    
                    HStack {
                        Text("New around here? ")
                        Text("Sign in")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
