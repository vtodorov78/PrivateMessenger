//
//  NewMessageViewModel.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 9.02.25.
//

import Foundation
import FirebaseAuth

@MainActor
class NewMessageViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    func fetchUsers() async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        var users = try await UserService.shared.fetchAllUsers()
        self.users = users.filter( { $0.id != currentUid })
    }
}
