//
//  MarkupsAndDocumentationScreen.swift
//  iosapp
//
//  Created by gikwegbu on 17/08/2022.
//

// First things first activate the minimap, on the xcode's far top right corner


 //George - In Swift Programming, users break up their codes in three sections
/**
 1. Properties, i.e where you declare your variables and default values

 2. The Body, which is the actual view code for the file.

 3. The function, which is the bottom part of the code
 
 
 To fold my code, use option + command + left arrow key
*/

// To add a summary/description to a view, or anything at all, so when held down on options key and clicked, you can read it up, use three ///

import SwiftUI

struct MarkupsAndDocumentationScreen: View {
    
    // MARK:- PROPERTIES
    @State var data: [String] = [
        "Apples", "Oranges", "Banana"
    ]
    @State var showAlert: Bool = false
    
    // MARK: FUNCTIONS
    var body: some View {
        NavigationView{ // START: NAV
            ZStack {
                // Background Layer
                Color.red.ignoresSafeArea()
                
                
                ScrollView{ // START: SCROLLVIEW
                    Text("Hello")
                    ForEach(data, id: \.self) {name in
                        Text(name)
                            .font(.headline)
                }
            } // END: SCROLLVIEW
                .navigationTitle("Documentation Screen")
                .navigationBarItems(trailing:
                                        Button("Alert", action: {
                        showAlert.toggle()
                    })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "Hello Documentation")
            })
            }
        } // END: NAV
    }
    
    
    // MARK: FUNCTIONS
    /// This is a custom documentation or summary by George Ikwegbu lol
    /// - Parameter text: This is the title
    /// - Returns: Returns an alert with title
    /// - Sucre: This is mad, but it's going to be a discussion...
    /// ```
    /// getAlert(text: "Hi George") -> Alert(title: Text("Hi"))
    /// ```
    ///  - Warning: This is breakfast in bed bayi lol, please add the title, its compulsory sha, Geeeegeeeee
    func getAlert(text: String) -> Alert{
        return Alert(title: Text(text))
    }
}

struct MarkupsAndDocumentationScreen_Previews: PreviewProvider {
    static var previews: some View {
        MarkupsAndDocumentationScreen()
    }
}
