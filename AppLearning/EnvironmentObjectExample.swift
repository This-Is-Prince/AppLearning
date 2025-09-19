//
//  EnvironmentObjectExample.swift
//  AppLearning
//
//  Created by Prince on 19/09/25.
//

import SwiftUI
import Combine


class PageStore: ObservableObject {
    @Published var isOn: Bool = false
}

struct ProfilePage: View {
    @EnvironmentObject var pageStore: PageStore
    
    var body: some View {
        VStack {
            Text("This is Profile Page")
            HStack {
                Text("Is Toggle? \(pageStore.isOn ? "Yes": "No")")
                Button("Let's Toggle?") {
                    pageStore.isOn.toggle()
                }
            }
        }
    }
}

struct HomePage: View {
    var body: some View {
        VStack {
            Text("This is Home Page.")
            ProfilePage()
        }
    }
}

struct MainPage: View {
    @StateObject var pageStore = PageStore()
    
    var body: some View {
        VStack {
            Text("This is Main Page")
            Text("Is On? \(pageStore.isOn ? "Y" : "NO")")
            HomePage().environmentObject(pageStore)
        }
    }
}

struct EnvironmentObjectExample: View {
    var body: some View {
        MainPage()
    }
}
