//
//  ListScreen.swift
//  iosapp
//
//  Created by gikwegbu on 02/08/2022.
//

import SwiftUI

struct ListScreen: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var drinks: [String] = [
        "origin", "malt", "smirnoff Ice", "ice cream 😋"
    ]
    var body: some View {
        
        
        NavigationView {
            List{
                Section(header: HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                        .foregroundColor(.red)
                }
                    .font(.headline)
                        , content: {
                    ForEach(fruits, id: \.self) {fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(.red)
                    }
    //                .onDelete { indexSet in
    // This notifies us the row they just swipped, then we delete it...
    //                    _deleteItem(indexSet: indexSet)
    //                }

    // This shortcut, understands that the indexSet will be passed down to our delete function, no need to explicitely specify it dawg...
                    .onDelete(perform: _deleteItem)
                    
                      
// This allows you to re-arrange the order the items were placed
//                    .onMove(perform: {indices, newOffset in
//                        _moveItem(indices: indices, newOffset: newOffset)
//                    })
                    
//                    Short cut
                    .onMove(perform: _moveItem)
                    
//                    Will be adding the background of the list here
                    .listRowBackground(Color.blue)
                })
                
                Section(header: HStack {
                    Text("Drinks")
                    Image(systemName: "flame")
                        .foregroundColor(.blue)
                }, content: {
                    ForEach(drinks, id: \.self) {drink in
                        Text(drink.capitalized)
                    }
                })
            }
            .accentColor(.yellow) // This changes the color of the section
//  When using liststyles, please confirm the UI is what you want on all instance of ios devices, cus ipad and iphone have kinda like different looks...
            

//            .listStyle(DefaultListStyle())
//            .listStyle(PlainListStyle())
//            .listStyle(GroupedListStyle()) // This styles the list for you
            .navigationTitle("Grocery List")
            .navigationBarItems( leading: EditButton(), trailing: addItemButton )
        }
        .accentColor(.green) // This changes the color of the NavigationView entirely
    }
    
    var addItemButton: some View {
        Button("Add", action: {
            _addItem()
        })
    }
    
    func _deleteItem(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func _moveItem(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func _addItem() {
        fruits.append("Beans")
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
