//
//  Home.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/29/21.
//

import SwiftUI
final class Home: ObservableObject {
struct Home: View {
   @State public var showMenu = false
    var body: some View {
        return NavigationView {
            VStack {
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        MainView(home: Home(), showMenu: $showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                        if self.showMenu {
                            SideBarMenu(home: Home(), showMenu: $showMenu)
                                .frame(width: 175)
                                .edgesIgnoringSafeArea(.all)

                        }
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarHidden(false)
    }
}

struct MainView: View {
   @State public var home = Home()
    @Binding public var showMenu: Bool
    var body: some View {
        VStack {
            
            HStack {
                
                Button(action: {
                    print("Open Menu")
                    showMenu.toggle()
                }){
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                }
                .frame(width: 25, height: 15)
                .offset(y: 750)
                
                
            }
            
            //                    Text("Home")
            //                        .bold()
            
            .padding(.top, 65)
            
            Spacer()
            //.position(x: 30, y: 60)
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
