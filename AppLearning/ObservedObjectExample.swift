//
//  ObservedObjectExample.swift
//  AppLearning
//
//  Created by Prince on 19/09/25.
//

import SwiftUI
import Combine

class ProfileStore: ObservableObject {
    @Published var isOn: Bool = false
}

struct CustomButton: View {
    @ObservedObject var profileS: ProfileStore
    
    var body: some View {
        HStack {
            Text("Is On? \(profileS.isOn ? "Y" : "N")")
            Button("Let's Toggle.") {
                profileS.isOn.toggle()
            }
        }
    }
}

struct ProfileView: View {
    @ObservedObject var ps: ProfileStore
    
    var body: some View {
        VStack {
            Text("This is Profile View.")
            Text("Is On? \(ps.isOn ? "Yesss": "Nooo")")
            CustomButton(profileS: ps)
        }
    }
}

struct ObservedObjectExample: View {
    @StateObject private var profileStore = ProfileStore()
    
    var body: some View {
        VStack {
            Text("Is On? \(profileStore.isOn ? "Yes": "No")")
            ProfileView(ps: profileStore)
        }
    }
}
