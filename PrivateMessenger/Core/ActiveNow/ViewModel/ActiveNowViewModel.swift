//
//  ActiveNowViewModel.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 11.02.25.
//

import Foundation
import FirebaseAuth

class ActiveNowViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        let users = try await UserService.shared.fetchAllUsers(limit: 10)
        self.users = users.filter( { $0.id != currentUid })
    }
}
