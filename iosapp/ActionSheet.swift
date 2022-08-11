//
//  ActionSheet.swift
//  iosapp
//
//  Created by gikwegbu on 08/08/2022.
//

import SwiftUI

struct ActionSheet: View {
    @State var showConfirmDialog: Bool = false
    var body: some View {
        Button("Click Me"){
            showConfirmDialog.toggle()
        }
        
        .confirmationDialog(Text("should Work"), isPresented: $showConfirmDialog) {
            Button("Close Me"){
                showConfirmDialog.toggle()
            }
            Button("Don't touch my "){
                showConfirmDialog.toggle()
            }
        } message: {
            Text("Ok, working")
        }

    }
    
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet()
    }
}
