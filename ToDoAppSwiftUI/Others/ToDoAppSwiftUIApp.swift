//
//  ToDoAppSwiftUIApp.swift
//  ToDoAppSwiftUI
//
//  Created by Damian Kiełtyka on 08/04/2023.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoAppSwiftUIApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
