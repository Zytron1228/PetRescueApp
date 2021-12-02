//
//  SideBarMenu.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/29/21.
//

import SwiftUI

struct SideBarMenu: View {
    @State public var home = Home()
     @Binding public var showMenu: Bool
    @State public var show = "Home"
    var body: some View {
//        NavigationView {
            ZStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Spacer()
                        Group {
                            Button(action: {
                                show = "Settings"
                            }) {
                                Text("Settings")
                                    .padding(1.0)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.434))
                                
                            }
                            NavigationLink(destination: Home()) {
                                Label("Home", systemImage: "house.fill")
                            }
                            .offset(x: -3)
                            .padding([.leading, .bottom, .trailing], 1.0)
                            .padding(.top, 75.0)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.434))
                            
                            NavigationLink(destination: Profile()) {
                                Label("Profile", systemImage: "person.crop.circle")
                            }
                            .padding(1.0)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.434))
                            
                            
                            NavigationLink(destination: Forms()) {
                                Label("Submit a Form", systemImage: "list.bullet.rectangle.portrait.fill")
                            }
                            .padding(1.0)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.434))
                            
                            NavigationLink(destination: ListView()) {
                                Label("Search Pets", systemImage: "magnifyingglass")
                            }
                            .padding(1.0)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.434))
                            
                            NavigationLink(destination: Settings()) {
                                Label("Settings", systemImage: "gearshape.fill")
                            }
                            .padding(1.0)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.434))
                            
                            NavigationLink(destination: Help()) {
                                Label("Help", systemImage: "questionmark.circle.fill")
                            }
                            .padding(1.0)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.434))
                            
                            NavigationLink(destination: Info()) {
                                Label("Info", systemImage: "info.circle")
                            }
                            .padding(1.0)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.434))
                            
                        }
//                        .offset(y: 75)
                      .padding(10)
                        Spacer()
                    }
                    Spacer()
                }
            }
            .frame(maxWidth: 400, alignment: .leading)
            .background(Color.black)
            
            .edgesIgnoringSafeArea(.all)
            .zIndex(100)
            
            
//        }
//        .navigationBarHidden(true)
    }
}

//struct SideBarMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        SideBarMenu()
//    }
//}
