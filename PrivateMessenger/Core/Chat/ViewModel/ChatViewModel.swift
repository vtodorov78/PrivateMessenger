//
//  ChatViewModel.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 9.02.25.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messageText = ""
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func sendMessage() {
        MessageService.sendMessage( messageText, toUser: user)
    }
}
