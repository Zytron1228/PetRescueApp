//
//  ContentView.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/9/21.
//

import SwiftUI // yes

struct ContentView: View {

    
    var body: some View {
        NavigationView {
            HStack {
            VStack {
//                NavigationLink(destination: Home()) {
//                    Label("Home", systemImage: "list.dash")
//                }
//                NavigationLink(destination: Profile()) {
//                    Label("Profile", systemImage: "list.dash")
//                }
                NavigationLink(destination: Forms()) {
                    Label("Submit a Form", systemImage: "list.dash")
                }
//                NavigationLink(destination: LostForm()) {
//                    Label("Subit Lost Pet", systemImage: "list.dash")
//                }
//                NavigationLink(destination: FoundForm()) {
//                    Label("Submit Found Pet", systemImage: "list.dash")
//                }
//                NavigationLink(destination: ListView()) {
//                    Label("Search Pets", systemImage: "list.dash")
//                }
//
//                NavigationLink(destination: Settings()) {
//                    Label("Settings", systemImage: "list.dash")
//                }
//                NavigationLink(destination: Help()) {
//                    Label("Help", systemImage: "list.dash")
//                }
//                NavigationLink(destination: Info()) {
//                    Label("Info", systemImage: "list.dash")
//                }
            }
                Divider()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// submit button
