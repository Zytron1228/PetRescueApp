//
//  Test.swift
//  PetRescueApp
//
//  Created by PMStudent on 12/2/21.
//

import SwiftUI

struct Test: View {
    @State public var showMenu = false
//    @Binding public var show: String
//    @Binding public var test = Test()
    var body: some View {
        return NavigationView {
            VStack {
//                GeometryReader { geometry in
//                    ZStack(alignment: .leading) {
                Main(showMenu: $showMenu)
//                            .frame(width: geometry.size.width, height: geometry.size.height)
//                        if self.showMenu {
//                            SideBarMenu
//                                .frame(width: 175)
//                                .edgesIgnoringSafeArea(.all)
                            
//                        }
//                    }
//                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Main: View {
@ObservedObject var homeScreen = Home()
@ObservedObject var setingsScreen = Settings()
    @ObservedObject var menuScreen = SideBarMenu()
//    @Binding public var test = Test()
    @State public var home = Home()
    @State public var settings = Settings()
     @Binding public var showMenu: Bool
//    @Binding public var show: String
    var body: some View {
//        if show == "Settings" {
//            Settings()
//
//        }
//        else if show == "Home" {
//            Home()
        VStack {
        Info()
            Text("AAAAA")
        }
            
        
        
    }
}

//struct Test_Previews: PreviewProvider {
//    static var previews: some View {
//        Test(show: $show)
//    }
//}
