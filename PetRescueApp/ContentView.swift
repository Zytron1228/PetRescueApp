//
//  ContentView.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/9/21.
//

import SwiftUI // yes

struct ContentView: View {
    
    @State var AnimalType: String = "Please Select"
    @State var AnimalTypeSpecify: String = ""
    
    var body: some View {
        VStack {
            
            Text("Lost and Found")
                .bold()
            Spacer()
            Form {
                ScrollView {
                    HStack {
                        
                        Text("Type of Animal:")
                        
                            Menu(AnimalType) {
                                Button(action: {
                                    AnimalType = "Please Select"
                                }) {
                                    Text("Please Select")
                                }
                                
                                Button(action: {
                                    AnimalType = "Cat"
                                }) {
                                    Text("Cat")
                                }
                                
                                Button(action: {
                                    AnimalType = "Dog"
                                }) {
                                    Text("Dog")
                                }
                                
                                Button(action: {
                                    AnimalType = "Attack Helicopter"
                                }) {
                                    Text("Attack Helicopter")
                                }
                                
                                Button(action: {
                                    AnimalType = "Other"
                                }) {
                                    Text("Other*")
                                }
                                
                                Button(action: {
                                    AnimalType = "Unsure"
                                }) {
                                    Text("Unsure*")
                                }
                            }
                            .frame(width: 200, height: 25)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .foregroundColor(.black)
                            .padding(.all)
                    }
                    TextField("*Type of Animal(if other or unsure)", text: $AnimalTypeSpecify)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Lost and found :  *
//Give options to pick from
//
//Up load picture :
//
//type;  dog cat other
//date :
//location: hopefully attached to maps
//color : tan brown black white multi
//breed : shepherd bully lab  mixed
//size small medium large x large
// sex :
//other: blue collar
