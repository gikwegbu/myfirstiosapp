//
//  TextEditorScreen.swift
//  iosapp
//
//  Created by gikwegbu on 10/08/2022.
//

import SwiftUI

struct TextEditorScreen: View {
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
                // This works but turns the text color to black by default
                    .lineSpacing(5)
                    .colorMultiply(.teal)
                    .cornerRadius(20)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                Text(savedText)
                Spacer()

            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Screen")
        }
    }
}

struct TextEditorScreen_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorScreen()
    }
}
