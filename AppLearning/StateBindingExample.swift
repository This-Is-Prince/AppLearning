//
//  BindingExample.swift
//  AppLearning
//
//  Created by Prince on 18/09/25.
//

import SwiftUI

struct LightSwitchView: View {
    @Binding var isTurnedOn: Bool
    
    var body: some View {
        Toggle(isOn: $isTurnedOn) {
            Text("Light Switch")
        }
    }
}

struct StateBindingExample: View {
    @State private var isRoomLit: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: isRoomLit ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(isRoomLit ? .yellow : .gray)
            
            LightSwitchView(isTurnedOn: $isRoomLit)
        }.padding()
    }
}
