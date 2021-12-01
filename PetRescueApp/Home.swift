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
        return NavigationView {
            VStack {
                
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        MainView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                        if self.showMenu {
                            SideBarMenu(showMenu: self.$showMenu)
                                .frame(width: 175)
                                .edgesIgnoringSafeArea(.all)
                            
                        }
                    }
                }
            }
        }
        //        .navigationBarTitle("Side Menu", displayMode: .)
        .navigationBarHidden(true)
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    var body: some View {
        VStack {
            VStack {
                HStack {
                    
                    Button(action: {
                        print("Open Menu")
                        if showMenu == false {
                            self.showMenu = true
                        } else if showMenu == true {
                            self.showMenu = false
                        }
                    }){
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            
                    }
                    .frame(width: 25, height: 15)
                    
                    Spacer()
                }
                
                Text("Home")
                    .bold()
            }
            .padding(.top, 45)
            
            Spacer()
            //            .position(x: 30, y: 60)
            VStack {
                Spacer()
                Text("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAAAAAÆA\nAA This is placeholder text. This is the homepage.\nAAAAAAAAAAAAAAAAAAAAA")
                Image(systemName: "pawprint.fill")
                    .padding()
                Spacer()
            }
            .padding(.all)
        }
        .frame(width: 428, height: 929)
        .edgesIgnoringSafeArea(.all)
        .background(Color.blue)
        .ignoresSafeArea()
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
