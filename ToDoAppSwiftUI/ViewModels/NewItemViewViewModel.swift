//
//  NewItemViewViewModel.swift
//  ToDoAppSwiftUI
//
//  Created by Damian Kiełtyka on 17/05/2023.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    public func save() {
        print("Saved")
    }
}
