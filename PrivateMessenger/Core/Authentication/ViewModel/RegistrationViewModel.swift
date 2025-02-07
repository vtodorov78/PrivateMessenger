//
//  RegistrationViewModel.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 6.02.25.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func creatUser() async throws {
        try await AuthService().createUser(withEmail: email, password: password, fullname: fullname)
    }
}
