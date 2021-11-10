//
//  ContentView.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            TextEditor(text: .constant("messagEk!?iohqtAa")).font(Font .custom("galactic-simple", size: 33))
            
        Text("Aa Bb Cc Dd Ee Ff Gg Hh Ii Jj Kk Ll Mm Nn Oo Pp Qq Rr Ss Tt Uu Vv Ww Xx Yy Zz .!?$ 1234567890*")
            .font(.custom("Montserrat-ExtraLight.ttf", size: 32))
            .padding()
            
            Text("Aa Bb Cc Dd Ee Ff Gg Hh Ii Jj Kk Ll Mm Nn Oo Pp Qq Rr Ss Tt Uu Vv Ww Xx Yy Zz .!?$ 1234567890*")
                .padding()
                .font(Font .custom("JoeMama-Obamaa", size: 32))
            
            Text("Aa Bb Cc Dd Ee Ff Gg Hh Ii Jj Kk Ll Mm Nn Oo Pp Qq Rr Ss Tt Uu Vv Ww Xx Yy Zz .!?$ 1234567890*")
                .font(.largeTitle)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

