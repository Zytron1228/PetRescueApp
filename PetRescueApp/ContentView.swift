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
    @State var ShowAnimalType2Error: Double = 0.0 // opacity for the error message. If this were a bool, 0.0 would be false and 1.0 would be true.
    @State var AnimalType2Error = ""
    @State var AnimalType2Error1: String = "Please specify what type of animal if you chose 'Other' or explain if 'Unsure'"
    @State var AnimalType2Error2: String = "Please provide an explanation if you chose 'Unsure'"
    @State var AnimalType2Error3: String = "*Error: humans are not pets. To report a missing person, go elsewhere."
    @State var AnimalType1Error = ""
    @State var AnimalType1Error1 = "Please Select an Animal"
    @State var AnimalColor: String = "Please Select"
    @State var AnimalColorSpecify: String = ""
    @State var ShowAnimalColor2Error: Double = 0.0 // opacity for the error message.
    @State var AnimalColor2Error = ""
    @State var AnimalColor2Error1: String = "Please Specify the Color(s) if you chose 'Other' or 'Mixed.'"
    @State var AnimalBreed: String = "Please Select"
    @State var AnimalBreedSpecify: String = ""
    @State var ShowAnimalBreed2Error: Double = 0.0 // opacity for the error message.
    @State var AnimalBreed2Error = ""
    @State var AnimalBreed2Error1: String = "Please Specify the Color(s) if you chose 'Other' or 'Mixed.'"
    
    var body: some View {
        VStack {
            
            Text("Lost and Found")
                .bold()
            Divider()
            Spacer()
            Form {
                ScrollView {
                    VStack {
                        Group {
                            HStack {
                                Text("Uplaod Picture")
                                Spacer()
                                Text("WIP")
                                    .frame(width: 75, height: 75)
                                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.75))
                                    .cornerRadius(10)
                                Spacer()
                            }
                            
                            Spacer()
                        }
                        Group {
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
                                .frame(width: 150, height: 30)
                                .background(Color(hue: 0.0, saturation: 0.0, brightness: 0.9))
                                .cornerRadius(5)
                                .foregroundColor(.black)
                                .padding(.all)
                            }
                            VStack {
                                HStack(alignment: .center) {
                                    Text("*Specify Type of Animal:")
                                    TextField("*(if other or unsure)", text: $AnimalTypeSpecify)
                                        .onAppear(perform: {
                                            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) {_ in
                                                if AnimalType == "Other" {
                                                    if AnimalTypeSpecify == "" {
                                                        AnimalType2Error = AnimalType2Error1
                                                        ShowAnimalType2Error = 1.0
                                                    }
                                                    else if AnimalTypeSpecify == "Human" {
                                                        print("Error, user has specified the pet as a human.")
                                                        AnimalType2Error = AnimalType2Error3
                                                        ShowAnimalType2Error = 1.0
                                                    }
                                                    else {
                                                        AnimalType2Error = ""
                                                        ShowAnimalType2Error = 0.0
                                                    }
                                                }
                                                
                                                else if AnimalType == "Unsure" {
                                                    if AnimalTypeSpecify == ""    {
                                                        AnimalType2Error = AnimalType2Error2
                                                        ShowAnimalType2Error = 1.0
                                                    }
                                                    else if AnimalTypeSpecify == "Human" {
                                                        print("Error, user has specified the pet as a human.")
                                                        AnimalType2Error = AnimalType2Error3
                                                        ShowAnimalType2Error = 1.0
                                                    }
                                                    else {
                                                        AnimalType2Error = ""
                                                        ShowAnimalType2Error = 0.0
                                                    }
                                                }
                                                
                                                else {
                                                    AnimalType2Error = ""
                                                    ShowAnimalType2Error = 0.0
                                                }
                                            }
                                        })
                                }
                                Text(AnimalType2Error)
                                    .font(.caption)
                                    .fontWeight(.light)
                                    .foregroundColor(.red)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(/*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                                    .padding(.bottom)
                                    .opacity(ShowAnimalType2Error)
                                
                            }
                        }
                        
                        Spacer()
                        
                        Group {
                            HStack {
                                Text("Color:")
                                Spacer()
                                Menu(AnimalColor) {
                                    Button(action: {
                                        AnimalColor = "Please Select"
                                    }) {
                                        Text("Please Select")
                                    }
                                    
                                    Button(action: {
                                        AnimalColor = "Black"
                                    }) {
                                        Text("Black")
                                    }
                                    
                                    Button(action: {
                                        AnimalColor = "Gray"
                                    }) {
                                        Text("Gray")
                                    }
                                    
                                    Button(action: {
                                        AnimalColor = "White"
                                    }) {
                                        Text("White")
                                    }
                                    
                                    Button(action: {
                                        AnimalColor = "Tan"
                                    }) {
                                        Text("Tan")
                                    }
                                    
                                    Button(action: {
                                        AnimalColor = "Brown"
                                    }) {
                                        Text("Brown")
                                    }
                                    
                                    Button(action: {
                                        AnimalColor = "Multi"
                                    }) {
                                        Text("Multi*")
                                    }
                                    
                                    Button(action: {
                                        AnimalColor = "Other"
                                    }) {
                                        Text("Other*")
                                    }
                                    
                                }
                                .frame(width: 150, height: 30)
                                .background(Color(hue: 0.0, saturation: 0.0, brightness: 0.9))
                                .cornerRadius(5)
                                .foregroundColor(.black)
                                .padding(.all)
                                
                            }
                            
                            VStack {
                                HStack(alignment: .center) {
                                    Text("*Specify Color of Animal:")
                                    TextField("*(if other or multi)", text: $AnimalColorSpecify)
                                        .onAppear(perform: {
                                            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) {_ in
                                                if AnimalColor == "Other" {
                                                    if AnimalColorSpecify == "" {
                                                        AnimalColor2Error = AnimalColor2Error1
                                                        ShowAnimalColor2Error = 1.0
                                                    }
                                                    
                                                    else {
                                                        AnimalColor2Error = ""
                                                        ShowAnimalColor2Error = 0.0
                                                    }
                                                }
                                                
                                                else if AnimalColor == "Multi" {
                                                    if AnimalColorSpecify == ""    {
                                                        AnimalColor2Error = AnimalColor2Error1
                                                        ShowAnimalColor2Error = 1.0
                                                    }
                                                    else {
                                                        AnimalColor2Error = ""
                                                        ShowAnimalColor2Error = 0.0
                                                    }
                                                }
                                                
                                                else {
                                                    AnimalColor2Error = ""
                                                    ShowAnimalColor2Error = 0.0
                                                }
                                            }
                                        })
                                }
                                Text(AnimalColor2Error)
                                    .font(.caption)
                                    .fontWeight(.light)
                                    .foregroundColor(.red)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(/*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                                    .padding(.bottom)
                                    .opacity(ShowAnimalColor2Error)
                                
                            }
                        }
                        Group {
                            
                            Spacer()
                            
                            HStack(alignment: .center) {
                                Text("Location:")
                                Spacer()
                                Text("WIP")
                                    .frame(width: 50, height: 50)
                                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.75))
                                    .cornerRadius(10)
                                Spacer()
                            }
                            
                            Spacer()
                            
                            HStack(alignment: .center) {
                                Text("Date:")
                                //                            DatePicker(selection: .constant(Date()), label: { Text("Date") })
                                Spacer()
                                Text("WIP")
                                    .frame(width: 50, height: 50)
                                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.75))
                                    .cornerRadius(10)
                                Spacer()
                            }
                            
                            Spacer()
                            
                        }
                        Group {
                            HStack { // needs work for other animals, current list is only for dogs.
                                Text("Breed:")
                                Spacer()
                                Menu(AnimalBreed) {
                                    Button(action: {
                                        AnimalBreed = "Please Select"
                                    }) {
                                        Text("Please Select")
                                    }
                                    
                                    Button(action: {
                                        AnimalBreed = "Sheperd"
                                    }) {
                                        Text("Sheperd")
                                    }
                                    
                                    Button(action: {
                                        AnimalBreed = "Bull"
                                    }) {
                                        Text("Bull")
                                    }
                                    
                                    Button(action: {
                                        AnimalBreed = "Lab"
                                    }) {
                                        Text("Lab")
                                    }
                                    
                                    Button(action: {
                                        AnimalBreed = "Poodle"
                                    }) {
                                        Text("Poodle")
                                    }
                                    
                                    Button(action: {
                                        AnimalBreed = "Chihuahua"
                                    }) {
                                        Text("Chihuahua")
                                    }
                                    
                                    Button(action: {
                                        AnimalBreed = "Pug"
                                    }) {
                                        Text("Pug")
                                    }
                                    
                                    Button(action: {
                                        AnimalBreed = "Maltese"
                                    }) {
                                        Text("Maltese")
                                    }
                                    
                                    Button(action: {
                                        AnimalBreed = "Mixed"
                                    }) {
                                        Text("Mixed*")
                                    }
                                    
                                    Button(action: {
                                        AnimalBreed = "Other/Unsure"
                                    }) {
                                        Text("Other/Unsure*")
                                    }
                                    
                                }
                                .frame(width: 150, height: 30)
                                .background(Color(hue: 0.0, saturation: 0.0, brightness: 0.9))
                                .cornerRadius(5)
                                .foregroundColor(.black)
                                .padding(.all)
                                
                            }
                            Text("(please pick other if it's not a dog)")
                                .font(.caption2)
                            
                            VStack {
                                HStack(alignment: .center) {
                                    Text("*Specify Breed of Animal:")
                                    TextField("*(if other/unsure or mixed)", text: $AnimalColorSpecify)
                                        .onAppear(perform: {
                                            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) {_ in
                                                if AnimalBreed == "Other" {
                                                    if AnimalBreedSpecify == "" {
                                                        AnimalBreed2Error = AnimalBreed2Error1
                                                        ShowAnimalBreed2Error = 1.0
                                                    }
                                                    
                                                    else {
                                                        AnimalBreed2Error = ""
                                                        ShowAnimalBreed2Error = 0.0
                                                    }
                                                }
                                                
                                                else if AnimalBreed == "Mixed" {
                                                    if AnimalBreedSpecify == ""    {
                                                        AnimalBreed2Error = AnimalBreed2Error1
                                                        ShowAnimalBreed2Error = 1.0
                                                    }
                                                    else {
                                                        AnimalBreed2Error = ""
                                                        ShowAnimalBreed2Error = 0.0
                                                    }
                                                }
                                                
                                                else {
                                                    AnimalBreed2Error = ""
                                                    ShowAnimalBreed2Error = 0.0
                                                }
                                            }
                                        })
                                }
                                Text(AnimalBreed2Error)
                                    .font(.caption)
                                    .fontWeight(.light)
                                    .foregroundColor(.red)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(/*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                                    .padding(.bottom)
                                    .opacity(ShowAnimalBreed2Error)
                            }
                            Spacer()
                        }
                        
                        Group {
                            
                        }
                        
                    }
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
//Up load picture : * wip
//
//type;  dog cat other *
//date : * wip
//location: hopefully attached to maps * wip
//color : tan brown black white multi *
//breed : shepherd bully lab  mixed *
//size: small medium large x large
// gender : m/f/unsure
//other: blue collar
