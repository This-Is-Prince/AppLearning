//
//  StateObjectExample.swift
//  AppLearning
//
//  Created by Prince on 19/09/25.
//

import SwiftUI
import Combine

class HomeStore: ObservableObject {
    @Published var isOn: Bool = false
    
    func toggle() {
        isOn.toggle()
    }
}

struct StateObjectExample: View {
    @StateObject private var homeStore = HomeStore()
    
    var body: some View {
        VStack {
            Button("Is On? \(homeStore.isOn ? "True" : "False")") {
                homeStore.toggle()
            }
        }
    }
}
