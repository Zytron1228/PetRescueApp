//
//  Forms.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/23/21.
//

import SwiftUI //AAAAAAAAAAAAAAAAAAAAAAAAAAAAAÆAAAAAAAAAAAAAAAAAAAAAAA

struct Forms: View {
    let color1 = Color.blue
    var body: some View {
        NavigationView {
            ZStack {
                color1.ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    NavigationLink(destination: LostForm()) {
                        Text("I Have Lost A Pet")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.yellow)
                            .bold()
                    }
                    .navigationBarHidden(true)
                    
                    Spacer()
                    NavigationLink(destination: FoundForm()) {
                        Text("I have Found A Pet")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.yellow)
                            .bold()
                    }
                    .navigationBarHidden(true)
                    Spacer()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct Forms_Previews: PreviewProvider {
    static var previews: some View {
        Forms()
    }
}
