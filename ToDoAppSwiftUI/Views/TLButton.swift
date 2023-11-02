//
//  TLButton.swift
//  ToDoAppSwiftUI
//
//  Created by Damian Kiełtyka on 02/11/2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    
    var body: some View {
        Button {
            // Attempt login
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Value", background: .pink)
}
