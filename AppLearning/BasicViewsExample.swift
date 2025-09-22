//
//  BasicViewsExample.swift
//  AppLearning
//
//  Created by Prince on 21/09/25.
//

import SwiftUI

struct TextViewExample: View {
    var body: some View {
        Text("This is a paragraph of text, which can span multiple lines if needed.")
            .font(.body)
            .foregroundStyle(.secondary)
            .lineLimit(3)
            .frame(maxWidth: 100, alignment: .leading)
            .background(.blue)
    }
}

struct TextFieldViewExample: View {
    @State var name: String = ""
    
    var body: some View {
        TextField("Enter your name", text: $name)
            .textFieldStyle(.roundedBorder)
            .autocorrectionDisabled(true)
            .padding()
    }
}

struct SecureFieldViewExample: View {
    @State var password: String = ""
    
    var body: some View {
        SecureField("Enter your password", text: $password)
            .padding()
            .textFieldStyle(.roundedBorder)
    }
}

struct TextEditorViewExample: View {
    @State var value: String = "Type your feedback here..."
    
    var body: some View {
        TextEditor(text: $value)
            .padding()
            .border(.gray, width: 1)
            .padding()
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct ButtonViewExample: View {
    var body: some View {
        Button("Tap me!") {
            print("Tapped...")
        }
        .padding()
        .background(.blue)
        .foregroundStyle(.white)
        .clipShape(Capsule())
    }
}

struct ToggleViewExample: View {
    @State var isOn: Bool = false
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Enable Notifications")
        }
    }
}

struct PickerViewExample: View {
    @State var v: String = "Red"
    let colors = ["Red", "Blue", "Green"]
    
    var body: some View {
        Picker("Choose a color", selection: $v) {
            ForEach(colors, id: \.self) { color in
                Text(color)
            }
        }
    }
}

struct PickerViewExample2: View {
    @State var v: String = "Red"
    let colors = ["Red", "Blue", "Green"]
    
    var body: some View {
        Picker("Choose a color", selection: $v) {
            ForEach(colors, id: \.self) { color in
                Text(color)
            }
        }
        .pickerStyle(.segmented)
    }
}

struct SliderViewExample: View {
    @State var v: Double = 0
    var body: some View {
        Slider(value: $v, in: 1...25) {
            Text("Brightness")
        }
    }
}

struct ListViewExample: View {
    let todos = ["Buy milk", "Walk the dog", "Learn SwiftUI"]
    
    var body: some View {
        List {
            ForEach(todos, id: \.self) { todo in
                Text(todo)
            }
        }
    }
}

struct FormViewExample: View {
    @State private var username = "Prince"
    @State private var notificationsEnabled = false
    @State private var selectedTheme = "Dark"
    let themes = ["Light", "Dark", "System"]
    
    var body: some View {
        NavigationView {
            Form {
                Section("Profile") {
                    TextField("Username", text: $username)
                }
                
                Section("Notifications") {
                    Toggle("Enable Notifications", isOn: $notificationsEnabled)
                }
                
                Section("Appearance") {
                    Picker("Theme", selection: $selectedTheme) {
                        ForEach(themes, id: \.self) { theme in
                            Text(theme)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct NavigationsViewExample: View {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.displayScale) private var displayScale
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Home Screen")
                Text("\(colorScheme)")
                Text("\(displayScale)")
                
                NavigationLink("Detail View") {
                    DetailView()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("This is the Detail View")
            .navigationTitle("Details")
    }
}

struct BasicViewsExample: View {
    var body: some View {
//        TextViewExample()
//        TextFieldViewExample()
//        SecureFieldViewExample()
//        TextEditorViewExample()
//        ButtonViewExample()
//        ToggleViewExample()
//        PickerViewExample()
//        PickerViewExample2()
//        SliderViewExample()
//        ListViewExample()
//        FormViewExample()
        NavigationsViewExample()
    }
}
