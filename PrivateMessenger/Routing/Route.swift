//
//  Route.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 11.02.25.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
}
