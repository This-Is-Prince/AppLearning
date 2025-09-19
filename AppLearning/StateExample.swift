//
//  StateExample.swift
//  AppLearning
//
//  Created by Prince on 19/09/25.
//

import SwiftUI

struct StateExample: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        Button("Is On? \(isOn ? "True" : "False")") {
            isOn.toggle()
        }
    }
}
