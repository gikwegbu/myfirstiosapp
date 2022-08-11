//
//  ContextMenuScreen.swift
//  iosapp
//
//  Created by gikwegbu on 10/08/2022.
//

import SwiftUI

struct ContextMenuScreen: View {
    @State var bgColor: Color = .teal
    var body: some View {
// This is just like the sheet and alert, but it only turns up when a user clicks and holds on an item for a stipulated amount of time.
        
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("George Lessons")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(bgColor).cornerRadius(30)
        .contextMenu {
            Button {
                bgColor = .yellow
            } label: {
// This label, by default, is just an HStack
                Label("Share Post", systemImage: "flame.fill")
            }
            Button {
                bgColor = .red
            } label: {
                Text("Report Post")
            }
            Button {
                bgColor = .green
            } label: {
                HStack{
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }


        }
    }
}

struct ContextMenuScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuScreen()
    }
}
