//
//  Test.swift
//  PetRescueApp
//
//  Created by PMStudent on 12/2/21.
//

import SwiftUI

//struct Test: View {
//    @State public var showMenu = false
//    @Binding var show: String
//    @Binding public var test = Test()
//    var body: some View {
//        return NavigationView {
//            VStack {
//                GeometryReader { geometry in
//                    ZStack(alignment: .leading) {
//                Main(showMenu: $showMenu)
//                            .frame(width: geometry.size.width, height: geometry.size.height)
//                        if self.showMenu {
//                            SideBarMenu
//                                .frame(width: 175)
//                                .edgesIgnoringSafeArea(.all)
                            
//                        }
//                    }
//                }
//            }
//        }
//        .navigationBarTitleDisplayMode(.inline)
//    }
//}

struct Main: View {
//@ObservedObject var homeScreen = Home()
//@ObservedObject var setingsScreen = Settings()
//    @ObservedObject var menuScreen = SideBarMenu()
//    @Binding public var test = Test()
//    @State public var home = Home()
//    @State public var settings = Settings()
    //     @Binding public var showMenu: Bool
    @State var show = "Info"
    @State var showing = Info()
    @State var MenuOpen = false
    @State var menuVisable = 0.0
    var body: some View {
        ZStack {
            ZStack(alignment: .topLeading) {
                Button(action: {
                    print("Open Menu")
                    MenuOpen.toggle()
                }){
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .foregroundColor(.gray)
                }
                .frame(width: 25, height: 15)
                .padding(30)
                .offset(x: -3, y: 9)
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
//                        Info()
                        Spacer()
                        Group {
                            Button(action: {
                                show = "Home"
                            }) {
                                HStack {
                                    Image(systemName: "house.fill")
                                        
                                Text("Home")
                                    .padding(1.0)
                                }

                            }
                            
                            Button(action: {
                                show = "Profile"
                            }) {
                                HStack {
                                    Image(systemName: "person.crop.circle")
                                Text("Profile")
                                    .padding(1.0)
                                }

                            }
                            
                            Button(action: {
                                show = "Forms"
                            }) {
                                HStack {
                                    Image(systemName: "list.bullet.rectangle.portrait.fill")
                                Text("Submit a Form")
                                    .padding(1.0)
                                }
                            }
                            
                            Button(action: {
                                show = "ListView"
                            }) {
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                Text("Search Pets")
                                    .padding(1.0)
                                }
                            }

                            
                            Button(action: {
                                show = "Settings"
                            }) {
                                HStack {
                                    Image(systemName: "gearshape.fill")
                                Text("Settings")
                                    .padding(1.0)
                                }
                            }

                            Button(action: {
                                show = "Help"
                            }) {
                                HStack {
                                    Image(systemName: "questionmark.circle.fill")
                                Text("Help")
                                    .padding(1.0)
                                }
                            }
                            
                            Button(action: {
                                show = "Info"
                            }) {
                                HStack {
                                    Image(systemName: "info.circle")
                                Text("Info")
                                    .padding(1.0)
                                }
                            }
                            
                            
                        }
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.434))
                        .padding(10)
                        Spacer()
                    }
                    Spacer()
                }
            }
            .frame(maxWidth: 150, alignment: .leading)
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)
            .zIndex(menuVisable)
            .offset(x: -139)
        ZStack {
            
        if show == "Home" {
            Home()
                .frame(width: 428, height: 926)
                .ignoresSafeArea()
                .background(Color.yellow)
                .ignoresSafeArea()

        }
            
            else if show == "Profile" {
                Profile()
                    .frame(width: 428, height: 926)
                    .ignoresSafeArea()
                    .background(Color.yellow)
                    .ignoresSafeArea()
            }
        
            else if show == "Forms" {
                Forms()
                    .frame(width: 428, height: 926)
                    .ignoresSafeArea()
                    .background(Color.yellow)
                    .ignoresSafeArea()
            }
            
            
            else if show == "ListView" {
                ListView()
                    .frame(width: 428, height: 926)
                    .ignoresSafeArea()
                    .background(Color.yellow)
                    .ignoresSafeArea()
            }
            
            else if show == "Setttings" {
                Settings()
                    .frame(width: 428, height: 926)
                    .ignoresSafeArea()
                    .background(Color.yellow)
                    .ignoresSafeArea()
            }
            
            else if show == "Help" {
                Help()
                    .frame(width: 428, height: 926)
                    .ignoresSafeArea()
                    .background(Color.yellow)
                    .ignoresSafeArea()
            }
            
            else if show == "Info" {
                Info()
                    .frame(width: 428, height: 926)
                    .ignoresSafeArea()
                    .background(Color.yellow)
                    .ignoresSafeArea()
            }
                
//            showing
//                .frame(width: 428, height: 926)
//                .ignoresSafeArea()
//                .background(Color.yellow)
//                .ignoresSafeArea()
//                .padding()
//                .offset(y: 40.911)
            VStack {
                Button(action: {
                    print("Open Menu")
                    MenuOpen.toggle()
                }){
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                }
                .frame(width: 25, height: 15)
                .padding()
                .offset(x: -175)
                
            Spacer()
            Text("This text shows up in all views, how weird... ")
                Spacer()
            }
            .padding()
        }
//        .onAppear(perform: {
//            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {_ in
//                if show == "Settings" {
//                    showing = Settings()
//                }
//                else if show == "Info" {
//                    showing = Info()
//                }
//            }
//        })

    }
        .onAppear(perform: {
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {_ in
                if MenuOpen == true {
                    menuVisable = 1.0
                }
                else if MenuOpen == false {
                    menuVisable = 0.0
                }
            }
        })
}
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
