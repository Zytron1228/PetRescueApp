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
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                NavigationLink(destination: Profile()) {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .padding(1.0)
                NavigationLink(destination: Home()) {
                    Label("Home", systemImage: "house.fill")
                }
                .padding(1.0)
                NavigationLink(destination: Forms()) {
                    Label("Submit a Form", systemImage: "list.bullet.rectangle.portrait.fill")
                }
                .padding(1.0)
//                NavigationLink(destination: LostForm()) {
//                    Label("Subit Lost Pet", systemImage: "list.dash")
//                }
//                .padding(1.0)
//                NavigationLink(destination: FoundForm()) {
//                    Label("Submit Found Pet", systemImage: "list.dash")
//                }
//                .padding(1.0)
                NavigationLink(destination: ListView()) {
                    Label("Search Pets", systemImage: "magnifyingglass")
                }
                .padding(1.0)
//
                NavigationLink(destination: Settings()) {
                    Label("Settings", systemImage: "gearshape.fill")
                }
                .padding(1.0)
                NavigationLink(destination: Help()) {
                    Label("Help", systemImage: "questionmark.circle.fill")
                }
                .padding(1.0)
                NavigationLink(destination: Info()) {
                    Label("Info", systemImage: "info.circle")
                }
                .padding(1.0)
                    NavigationLink(destination: Home()) {
                        Label("[Test]", systemImage: "pawprint.fill")
                    }
                    .padding(1.0)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Divider()
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
