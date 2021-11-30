//
//  Home.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/29/21.
//

import SwiftUI

struct Home: View {
    @State var showMenu = false
    var body: some View {
        //        return NavigationView {
        VStack {
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    if self.showMenu {
                        SideBarMenu(showMenu: self.$showMenu)
                            .frame(width: 400)
                            .edgesIgnoringSafeArea(.top)
                            .offset(x: -120)
                    }
                }
            }
        }
        //        }
        //        .navigationBarTitle("Side Menu", displayMode: .inline)
        //        .navigationBarHidden(true)
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    var body: some View {
        VStack {
            Text("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAA")
            Button(action: {
                print("Open Menu")
                if showMenu == false {
                    self.showMenu = true
                } else if showMenu == true {
                    self.showMenu = false
                }
            }){
                Image(systemName: "line.3.horizontal")
            }
            
        }
        .background(Color.red)
        .ignoresSafeArea()
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
