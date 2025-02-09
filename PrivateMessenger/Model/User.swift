//
//  User.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 4.09.24.
//

import Foundation
import FirebaseFirestore

struct User: Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    let fullName: String
    let email: String
    var profileImageUrl: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
}

extension User {
    static let MOCK_USER = User(fullName: "Bruce Wayne", email: "batman@gmail.com", profileImageUrl: "batman")
}
