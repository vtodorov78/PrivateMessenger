//
//  ContentView.swift
//  PrivateMessenger
//
//  Created by Vladimir Todorov on 12.08.24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                InboxView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
