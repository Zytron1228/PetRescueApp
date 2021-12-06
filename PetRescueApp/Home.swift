//
//  Home.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/29/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
                Text("This is placeholder text. This is the homepage.")
                Image(systemName: "pawprint.fill")
                    .padding()
        }
  }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
