//
//  ContentView.swift
//  PetRescueApp
//
//  Created by PMStudent on 11/9/21.
//

import SwiftUI // yes

struct ContentView: View {
    @State private var date = Date()
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
    @State var AnimalColor2Error1: String = "Please Specify the color(s) if you chose 'Other' or 'Mixed.'"
    @State var AnimalBreedSpecify: String = ""
    @State var ShowAnimalBreed2Error: Double = 0.0 // opacity for the error message.
    @State var AnimalBreed2Error = ""
    @State var AnimalBreed2Error1: String = "Please Specify the breed. If you are not sure just say that."
    @State var AnimalSize: String = "Please Select"
    @State var AnimalGender: String = "Please Select"
    @State var Age: String = "Please Select"
    @State var OtherInfo: String = "He likes Mexican and African music, and he hates the color red. He is skilled at playing video games. If you give him a pen he will draw his giraffe friend from Madagascar. Also he speaks English don't be afraid."
    
    var body: some View {
        //        Form {
        //        ScrollView{
        //            Group {
        //            VStack {
        //                HStack {
        //        DatePicker("Date:", selection: $date, displayedComponents: .date)
        //                Text("HEllo date")
        //                }
        //            }
        //                VStack {
        //                    TextField("hello", text: $OtherInfo)
        //                }
        //            }
        //        }
        //        }
        VStack {
            Text("Lost and Found")
                .font(.title2)
                .bold()
            Divider()
            Spacer()
            Form {
                VStack {
                    Group { // uplaod pic
                        HStack {
                            Text("Upload Picture")
                            Spacer()
                            Text("WIP")
                                .frame(width: 75, height: 75)
                                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.75))
                                .cornerRadius(10)
                                .offset(x: 20)
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    Group { //type
                        HStack {
                            
                            Text("Type of Animal:")
                                .offset(x: -19)
                            
                            Menu(AnimalType) {
                                
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
                            .offset(x: 15)
                        }
                        VStack { // specify
                            VStack(alignment: .center) {
                                Text("*Specify Type of Animal:")
                                TextField("*(if other or unsure)", text: $AnimalTypeSpecify)
                                    .lineLimit(8)
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
                            Text(AnimalType2Error) //error message
                                .font(.caption)
                                .fontWeight(.light)
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                                .lineLimit(3)
                                .padding(.bottom)
                                .opacity(ShowAnimalType2Error)
                            
                        }
                    }
                    
                    Spacer()
                    
                    Group {     // color
                        HStack {
                            Text("Color:")
                            Spacer()
                            Menu(AnimalColor) {  //options
                                
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
                            .offset(x: -3)
                            
                        }
                        
                        VStack {
                            VStack(alignment: .center) {
                                Text("*Specify Color of Animal:")
                                TextField("*(if other or multi)", text: $AnimalColorSpecify)
                                    .lineLimit(8)
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
                                .lineLimit(3)
                                .padding(.bottom)
                                .opacity(ShowAnimalColor2Error)
                            
                        }
                    }
                    Group { //location&date
                        
                        Spacer()
                        
                        HStack(alignment: .center) { //location
                            Text("Location:")
                            Spacer()
                            Text("WIP")
                                .frame(width: 50, height: 50)
                                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.75))
                                .cornerRadius(10)
                                .offset(x: 50)
                            Spacer()
                        }
                        
                        Spacer()
                        
                        HStack(alignment: .center) { // date
                            Text("Date:")
                            //                                DatePicker("Date:", selection: $date, displayedComponents: .date)
                            Spacer()
                            Text("WIP")
                                .frame(width: 50, height: 50)
                                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.75))
                                .cornerRadius(10)
                                .offset(x: 65)
                            Spacer()
                        }
                        
                        Spacer()
                        
                    }
                    
                    Group { //breed
                        VStack {
                            VStack(alignment: .center) {
                                Text("Breed:")
                                TextField(" Breed", text: $AnimalBreedSpecify)
                                    .onAppear(perform: {
                                        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) {_ in
                                            
                                            if AnimalBreedSpecify == "" {
                                                AnimalBreed2Error = AnimalBreed2Error1
                                                ShowAnimalBreed2Error = 1.0
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
                                .foregroundColor(.blue)
                                .multilineTextAlignment(.center)
                                .lineLimit(3)
                                .padding(.bottom)
                                .opacity(ShowAnimalBreed2Error)
                        }
                        Spacer()
                    }
                    
                    Group { // size
                        HStack {
                            Text("Size:")
                            Spacer()
                            Menu(AnimalSize) {
                                
                                Button(action: {
                                    AnimalSize = "Tiny"
                                }) {
                                    Text("Tiny")
                                }
                                
                                Button(action: {
                                    AnimalSize = "Small"
                                }) {
                                    Text("Small")
                                }
                                
                                Button(action: {
                                    AnimalSize = "Medium"
                                }) {
                                    Text("Medium")
                                }
                                
                                Button(action: {
                                    AnimalSize = "Large"
                                }) {
                                    Text("Large")
                                }
                                
                                Button(action: {
                                    AnimalSize = "Extra Large"
                                }) {
                                    Text("Extra Large")
                                }
                                
                            }
                            .frame(width: 150, height: 30)
                            .background(Color(hue: 0.0, saturation: 0.0, brightness: 0.9))
                            .cornerRadius(5)
                            .foregroundColor(.black)
                            .padding(.all)
                            
                        }
                        
                        Spacer()
                    }
                    Group { // gender
                        HStack {
                            Text("Gender:")
                            Spacer()
                            Menu(AnimalGender) {

                                Button(action: {
                                    AnimalGender = "Male"
                                }) {
                                    Text("Male")
                                }
                                
                                Button(action: {
                                    AnimalGender = "Female"
                                }) {
                                    Text("Female")
                                }
                                
                                Button(action: {
                                    AnimalGender = "Unsure"
                                }) {
                                    Text("Unsure")
                                }
                                
                            }
                            .frame(width: 150, height: 30)
                            .background(Color(hue: 0.0, saturation: 0.0, brightness: 0.9))
                            .cornerRadius(5)
                            .foregroundColor(.black)
                            .padding(.all)
                            
                        }
                        Spacer()
                    }
                    
                    Group {
                        HStack {
                            Text("Age:")
                            Spacer()
                            Menu(Age) {
                                
                                Button(action: {
                                    Age = "Very Young"
                                }) {
                                    Text("Very Young")
                                }
                                
                                Button(action: {
                                    Age = "Young"
                                }) {
                                    Text("Young")
                                }
                                
                                Button(action: {
                                    Age = "Middle Aged"
                                }) {
                                    Text("Middle Aged")
                                }
                                
                                Button(action: {
                                    Age = "Old"
                                }) {
                                    Text("Old")
                                }
                                
                                Button(action: {
                                    Age = "Unsure"
                                }) {
                                    Text("Unsure")
                                }
                                
                            }
                            .frame(width: 150, height: 30)
                            .background(Color(hue: 0.0, saturation: 0.0, brightness: 0.9))
                            .cornerRadius(5)
                            .foregroundColor(.black)
                            .padding(.all)

                        }
                        Spacer()
                    }
                    
                    Group {
                        VStack {
                            Text("Other Information:")
//                            TextField("Other Information", text: $OtherInfo)
//                                .multilineTextAlignment(.center)
//                                .lineLimit(16)
                            
                            TextEditor(text: $OtherInfo)

                        }
                        Spacer()
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
//size: small medium large x large *
// gender : m/f/unsure *
// age:
// other: blue collar *
// submit button
