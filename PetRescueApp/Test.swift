//
//  Test.swift
//  PetRescueApp
//
//  Created by PMStudent on 12/2/21.
//

import SwiftUI

struct Test: View {
    @State public var showMenu = false
    var body: some View {
        return NavigationView {
            VStack {
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        Test(showMenu: showMenu)
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
    }
}

struct Main: View {
@ObservedObject var homeScreen = Home()
@ObservedObject var setingsScreen = Settings()
    @State public var test = Test()
     @Binding public var showMenu: Bool
    @Binding public var show: String
    var body: some View {
        if show == "Settings" {
            Settings()
            
        }
        else if show == "Home" {
            Home()
            
        }
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
