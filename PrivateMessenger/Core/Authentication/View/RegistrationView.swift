//
//  RegistrationView.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 14.08.24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            // logo image
            Image("messenger")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            // text fields
            VStack(spacing: 12) {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(.horizontal, 24)
                
                TextField("Ente your fullname", text: $fullName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(.horizontal, 24)
                
                // sign up button
                
                Button {
                    print("Handle login")
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .clipShape(.rect(cornerRadius: 10))
                }
                .padding(.vertical)
            }
            Spacer()
            
            // sign in link
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    RegistrationView()
}
