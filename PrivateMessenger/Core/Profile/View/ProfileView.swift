//
//  ProfileView.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 3.09.24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // header
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray4))
                
                Text("Bruce Wayne")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            // list
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                
                Section {
                    Button("Log Out") {
                        
                    }
                    
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    ProfileView()
}
