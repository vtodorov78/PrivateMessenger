//
//  LoginViewModel.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 6.02.25.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService().login(withEmail: email, password: password)
    }
}
