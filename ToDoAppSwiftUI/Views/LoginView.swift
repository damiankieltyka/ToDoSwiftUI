//
//  LoginView.swift
//  ToDoAppSwiftUI
//
//  Created by Damian Kiełtyka on 17/05/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        // Header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text("Get Things Done")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -330)
        
        
        // Login form
        
        
        
        // Register
        Spacer()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
