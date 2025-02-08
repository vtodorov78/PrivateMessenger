//
//  ContentViewModel.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 8.02.25.
//

import FirebaseAuth
import Combine

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscirbers()
    }
    
    private func setupSubscirbers() {
        AuthService.shared.$userSession.sink { [weak self] userSessionFromAuthService in
            self?.userSession = userSessionFromAuthService
        }.store(in: &cancellables)
    }
}
