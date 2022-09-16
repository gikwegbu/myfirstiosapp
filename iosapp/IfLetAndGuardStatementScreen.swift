//
//  IfLetAndGuardStatementScreen.swift
//  iosapp
//
//  Created by gikwegbu on 18/08/2022.
//


/**
 The essence of this tutorial is to learn how to avoid force unwrap, e.g, in the displayText, that is optional, you can't just diplay it that way in the view, you'll have an error because its initial value is nil, then you add ! to it to force unwrap it, i.e Text(displayText!)... Though this works, but in situation that the displayText variable makes it to the view (i.e being displayed), it'll crash the app if the value is still nill, therefore, to avoid it, use either the
 'if let' or the 'guard let' to counter this, I for one would prefer the 'guard let' as it contains the negative case scenario first... happy coding George, you're doing just fine, App awaits you buddy... 
 
 */

import SwiftUI

struct IfLetAndGuardStatementScreen: View {
// The ?, means its data is optional
    @State var currentUserID: String? = nil // In an app, users can either access a certain screen with or without an ID, though the ID differentiates the access
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Text("Learn how to write codes safely...")
                
// Here, i'm saying, if displayText has a value, then return the said value to the 'text' variable created with 'let', then same time, display the Text widget, with 'text' as the value
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
// This runs immediately the navigation view is in view, to fetch certain data from the api
                loadData()
            }
        }
    }
    
    func loadData() {
// Here, the data only gets loaded if there's a user ID, else, the user will only surf through the limited services on the app
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "The data is gotten from API calls, userID is : \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Enjoy limited offer, or signup for more offers"
        }
        
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Enjoy limited offer, or signup for more offers"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "The data is gotten from API calls, userID is : \(userID)"
            isLoading = false
        }
    }
}

struct IfLetAndGuardStatementScreen_Previews: PreviewProvider {
    static var previews: some View {
        IfLetAndGuardStatementScreen()
    }
}
