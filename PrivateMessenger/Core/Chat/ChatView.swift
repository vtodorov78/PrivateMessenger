//
//  ChatView.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 4.09.24.
//

import SwiftUI

struct ChatView: View {
    
    @State private var messageText = ""
    
    var body: some View {
        VStack {
            ScrollView {
                // header
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    
                    VStack(spacing: 4) {
                        Text("Bruce Wayne")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("Messenger")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }
                
                // messages
                
                ForEach(0...15, id: \.self) { message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
            }
            
            // message input view
            
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(.capsule)
                    .font(.subheadline)
                
                Button {
                    print("Send message")
                } label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
