//
//  Forms.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/23/21.
//

import SwiftUI //AAAAAAAAAAAAAAAAAAAAAAAAAAAAAÆAAAAAAAAAAAAAAAAAAAAAAA

struct Forms: View {
    let color1 = Color.blue
    @Binding public var show: String
    var body: some View {
//        NavigationView {
            ZStack {
                color1.ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    Button(action: {
                        show = "Lost"
                        
                    }) {
                        Text("I Have Lost A Pet")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.yellow)
                            .bold()
                    }
//                    NavigationLink(destination: LostForm()) {
//                        Text("I Have Lost A Pet")
//                            .font(.title)
//                            .fontWeight(.heavy)
//                            .foregroundColor(Color.yellow)
//                            .bold()
//                    }
//                    .navigationBarHidden(true)
                    
                    Spacer()
                    Button(action: {
                        show = "Found"
                        
                    }) {
                        Text("I have Found A Pet")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.yellow)
                            .bold()
                    }
//                    NavigationLink(destination: FoundForm()) {
//                        Text("I have Found A Pet")
//                            .font(.title)
//                            .fontWeight(.heavy)
//                            .foregroundColor(Color.yellow)
//                            .bold()
//                    }
//                    .navigationBarHidden(true)
                    Spacer()
                }
            }
//        }
    }
}

//struct Forms_Previews: PreviewProvider {
//    static var previews: some View {
//        Forms(show: $show)
//    }
//}
