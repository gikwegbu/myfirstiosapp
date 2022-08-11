//
//  TextFieldScreen.swift
//  iosapp
//
//  Created by gikwegbu on 10/08/2022.
//

import SwiftUI

struct TextFieldScreen: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
        // .textFieldStyle(RoundedBorderTextFieldStyle)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(100))
                    .foregroundColor(.red)
                    .font(.headline)
                    
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                    
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(100)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Screen")
        }
        
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldScreen_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldScreen()
    }
}
