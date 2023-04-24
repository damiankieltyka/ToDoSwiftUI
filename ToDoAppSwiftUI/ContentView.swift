//
//  ContentView.swift
//  ToDoAppSwiftUI
//
//  Created by Damian Kiełtyka on 08/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // add firebase
        ContentView()
        ContentView()
    }
}
