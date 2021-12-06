//
//  Info.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/29/21.
//

import SwiftUI

struct Info: View {
    var body: some View {
        Text("This is the help & information page for this app. \n \nThis app let users submit a form for a lost pet or for a pet they found and are trying to find it's owner. The user can then search for pets that are similar in their description that have also been submitted on this app. \nPress the side bar button in the top-right to navigate to different pages. If you have lost a pet, go to submit a form, then click Lost a pet, and fill out a form. If you have found a missing pet and want to find it's owner, Click Found a pet instead. You can then procede to search lost or found pets and the app will help filter pets by similar details in the forms. ")
            .padding()
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
