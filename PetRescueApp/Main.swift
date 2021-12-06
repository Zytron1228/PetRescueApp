//
//  Test.swift
//  PetRescueApp
//
//  Created by PMStudent on 12/2/21.
//

import SwiftUI
struct Main: View {
    @State public var show = "Home"
    @State var showing = Home()
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
                .offset(x: -3, y: 24)
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Spacer()
                        Group {
                            Button(action: {
                                show = "Home"
                            }) {
                                HStack {
                                    if show == "Home" {
                                        Image(systemName: "house.fill")
                                            .foregroundColor(.white)
                                            .offset(x: -5)
                                        Text("Home")
                                            .foregroundColor(.white)
                                            .padding(1.0)
                                            .offset(x: -6)
                                    }
                                    else {
                                        Image(systemName: "house.fill")
                                            .offset(x: -2)
                                        Text("Home")
                                            .padding(1.0)
                                            .offset(x: -3)
                                    }
                                    
                                }
                                
                            }
                            
                            Button(action: {
                                show = "Profile"
                            }) {
                                HStack {
                                    if show == "Profile" {
                                        Image(systemName: "person.crop.circle")
                                            .foregroundColor(.white)
                                            .offset(x: -3)
                                        Text("Profile")
                                            .foregroundColor(.white)
                                            .padding(1.0)
                                            .offset(x: -3)
                                    }
                                    else {
                                        Image(systemName: "person.crop.circle")
                                        Text("Profile")
                                            .padding(1.0)
                                    }
                                }
                                
                            }
                            
                            Button(action: {
                                show = "Forms"
                            }) {
                                HStack {
                                    if show == "Forms" {
                                        Image(systemName: "list.bullet.rectangle.portrait.fill")
                                            .foregroundColor(.white)
                                            .offset(x: -3)
                                        Text("Submit a Form")
                                            .foregroundColor(.white)
                                            .padding(1.0)
                                            .offset(x: -3)
                                    }
                                    
                                    else if show == "Lost" {
                                        Image(systemName: "list.bullet.rectangle.portrait.fill")
                                            .foregroundColor(.white)
                                            .offset(x: -2)
                                        Text("Submitting Lost Form")
                                            .foregroundColor(.white)
                                            .padding(1.0)
                                            .offset(x: -2)
                                    }
                                    
                                    else if show == "Found" {
                                        Image(systemName: "list.bullet.rectangle.portrait.fill")
                                            .foregroundColor(.white)
                                            .offset(x: -2)
                                        Text("Submitting Found Form")
                                            .foregroundColor(.white)
                                            .padding(1.0)
                                            .offset(x: -2)
                                    }
                                    
                                    else {
                                        Image(systemName: "list.bullet.rectangle.portrait.fill")
                                        Text("Submit a Form")
                                            .padding(1.0)
                                    }
                                }
                            }
                            
                            Button(action: {
                                show = "ListView"
                            }) {
                                HStack {
                                    if show == "ListView" {
                                        Image(systemName: "magnifyingglass")
                                            .foregroundColor(.white)
                                            .offset(x: -3)
                                        Text("Search Pets")
                                            .foregroundColor(.white)
                                            .padding(1.0)
                                            .offset(x: -3)
                                    }
                                    else {
                                        Image(systemName: "magnifyingglass")
                                        Text("Search Pets")
                                            .padding(1.0)
                                    }
                                }
                            }
                            
                            
                            Button(action: {
                                show = "Settings"
                            }) {
                                HStack {
                                    if show == "Settings" {
                                        Image(systemName: "gearshape.fill")
                                            .foregroundColor(.white)
                                            .offset(x: -3)
                                        Text("Settings")
                                            .foregroundColor(.white)
                                            .offset(x: -3)
                                            .padding(1.0)
                                    }
                                    else {
                                        Image(systemName: "gearshape.fill")
                                        Text("Settings")
                                            .padding(1.0)
                                        
                                    }
                                }
                            }
                            
                            
                            Button(action: {
                                show = "Help/Info"
                            }) {
                                HStack {
                                    if show == "Help/Info" {
                                        Image(systemName: "info.circle")
                                            .foregroundColor(.white)
                                            .offset(x: -3)
                                        Text("Help & Info")
                                            .foregroundColor(.white)
                                            .offset(x: -3)
                                            .padding(1.0)
                                    }
                                    else {
                                        Image(systemName: "info.circle")
                                        Text("Help & Info")
                                            .padding(1.0)
                                    }
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
                        .background(Color.blue)
                        .ignoresSafeArea()
                    
                }
                
                else if show == "Profile" {
                    Profile()
                        .frame(width: 428, height: 926)
                        .ignoresSafeArea()
                        .background(Color.blue)
                        .ignoresSafeArea()
                }
                
                else if show == "Forms" {
                    Forms(show: $show)
                        .frame(width: 428, height: 926)
                        .ignoresSafeArea()
                        .background(Color.blue)
                        .ignoresSafeArea()
                }
                
                else if show == "Lost" {
                    LostForm()
                        .frame(width: 428, height: 926)
                        .ignoresSafeArea()
                        .background(Color.blue)
                        .ignoresSafeArea()
                        .offset(y: -10)
                }
                
                else if show == "Found" {
                    FoundForm()
                        .frame(width: 428, height: 926)
                        .ignoresSafeArea()
                        .background(Color.blue)
                        .ignoresSafeArea()
                        .offset(y: -10)
                }
                
                else if show == "ListView" {
                    ListView()
                        .frame(width: 428, height: 926)
                        .ignoresSafeArea()
                        .background(Color.blue)
                        .ignoresSafeArea()
                }
                
                else if show == "Settings" {
                    Settings()
                        .frame(width: 428, height: 926)
                        .ignoresSafeArea()
                        .background(Color.blue)
                        .ignoresSafeArea()
                }
                
                else if show == "Help/Info" {
                    Info()
                        .frame(width: 428, height: 926)
                        .ignoresSafeArea()
                        .background(Color.blue)
                        .ignoresSafeArea()
                }
                
                //                else {
                //                    print("failed to load view: \(show)")
                //                Error()
                //                    .frame(width: 428, height: 926)
                //                    .ignoresSafeArea()
                //                    .background(Color.red)
                //                    .ignoresSafeArea()
                //                }
                
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
                    .offset(x: -175, y: 15)
                    
                    Spacer()
                    //anything you put in this VStack shows up everywhere loaded by Main.swift except the side menu.
                    //                    Text("this shows up everywhere. Weird...") //uncomment this out for example.
                    Spacer()
                }
                .padding()
            }
            
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

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
