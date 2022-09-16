//
//  ViewModelScreen.swift
//  iosapp
//
//  Created by gikwegbu on 10/09/2022.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
    
}

// Creating a class
class FruitViewModel: ObservableObject {
    // Added this ObservableObject so the FruitViewModel will conform to @ObservedObject
    // This published is because it's in a class, if it was for struct, i'd use @State.
    // This is used to notify the fruitArray that something just happened.
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init () {
//        Any code within this init runs immediatly the class instance is created...
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Apple", count: 69)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            // Append all the items at once...
            // I used this instead of doing it individually...
            self.fruitArray.append(contentsOf: [fruit1, fruit2, fruit3])
            // Using self, to reference the FruitArray class, i.e 'this' in JS
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelScreen: View {
//    @State var fruitArray : [FruitModel] = []
//    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    // The @ObservedObject, does same as the @State, by making sure the fruitViewModel
    // is listening for a change
    
    // This @ObservedObject will always reload/refresh each time the ViewModelScreen is rendered, which might not be a good thing, so we will be using another thing...
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
// NB::: when you're creating instances of classes like above, and it's the first time you're creating it, and you don't want it to be reloaded or refreshed, use @StateObject.
    
// But if you're passing it into another view or subView, use @Observable
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    // By passing the deleteFruit only, the system understands that the indexSet is required, and automatically includes it for you...
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing: NavigationLink(destination: {
                secondObservableScreenView(fruitViewModel: fruitViewModel)
            }, label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            }))
            // With the onAppear here, each time the 'ViewModelScreen' is rendered, the NavigationView obviously goes with it, hence the onAppear gets called again and again, and whilst at it, the fruits gets fruitViewModel.getFruits() gets called repeatedly.
            
            // To remove this, we will add an init(){} in the FruitViewModel class, that will call the getFruits() each time the instance of it is called, and having used the @StateObject in the 'ViewModelScreen', we only call it once...
//            .onAppear{
//                fruitViewModel.getFruits()
//            }
        }
    }
    
}

struct secondObservableScreenView: View {
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

struct ViewModelScreen_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelScreen()
    }
}
