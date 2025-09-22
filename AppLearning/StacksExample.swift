//
//  StacksExample.swift
//  AppLearning
//
//  Created by Prince on 19/09/25.
//

import SwiftUI


struct VStackExample: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 100) {
            Image(systemName: "person.circle.fill")
                .font(.largeTitle)
            
            Text("Username")
                .font(.headline)
            
            Text("Status: Online")
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
        .background(.blue)
        .padding()
        .background(.red)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 12))
    }
}

struct HStackExample: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 100) {
            Image(systemName: "person.circle.fill")
                .font(.largeTitle)
            
            VStack(alignment: .leading) {
                Text("Username")
                    .font(.headline)
                Text("Status: Online")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            .background(.blue)
            .padding()
            .background(.red)
        }
        .background(.green)
        .padding()
        .background(.yellow)
    }
}

struct ZStackExample: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("laughing-at-destination")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
//                .border(.red)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(
                    LinearGradient(
                        colors: [.black.opacity(0.5), .clear],
                        startPoint: .bottom,
                        endPoint: .center
                    )
                )
            
            VStack(alignment: .leading) {
                Text("Mountain Retreat")
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text("Switzerland")
                    .font(.headline)
            }
            .foregroundStyle(.white)
            .padding()
        }
    }
}
