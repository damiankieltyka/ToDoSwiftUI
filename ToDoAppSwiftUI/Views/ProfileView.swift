//
//  ProfileView.swift
//  ToDoAppSwiftUI
//
//  Created by Damian Kiełtyka on 17/05/2023.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                    .padding()
                
                Text(user.name)
            }
            HStack {
                Text("Email: ")
                    .bold()
                    .padding()
                
                Text(user.email)
            }
            HStack {
                Text("Member since: ")
                    .bold()
                    .padding()
                
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
        }
        .padding()
        
        Button("Log out") {
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        
        Spacer()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
