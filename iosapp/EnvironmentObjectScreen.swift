//
//  EnvironmentObjectScreen.swift
//  iosapp
//
//  Created by gikwegbu on 11/09/2022.
//

import SwiftUI

// ObservedObject
// StateObject
// EnvironmentObject: This would allow you pass a data, down the hierachy of any view under the main view. In this situation, you won't have the need to pass the data from one view to another through another view.

// E.g, say i'd wanna pass data from view A to view C, and view C is a child of view B, that'll mean i'd have to pass the data through view B first right, but with EnvironmentObject, once i've registered the data as an environmentObject, i could simply reference the data from the view C directly ...


class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["Iphone", "Ipad", "IMac", "IBook", "IBroke"])
    }
}

struct EnvironmentObjectScreen: View {
    @State var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { data in
                    NavigationLink(destination: DeviceDetailScreen(selectedItem: data)) {
                        Text(data)
                    }
                }
                 
            }
            .listStyle(SidebarListStyle())
            .navigationTitle(Text("Apple Products"))
        }
//        This in turn enables us to have the viewModel globally declared, and any view used in this file has access to the data
        .environmentObject(viewModel)
    }
}

struct DeviceDetailScreen: View {
//    @ObservableObject var viewModel: EnvironmentViewModel
    let selectedItem: String
    var body: some View {
        ZStack{
//            Color.green.ignoresSafeArea()
            
            NavigationLink(destination: DeviceDetailExtraScreen(selectedItem: selectedItem)) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.black.cornerRadius(20))
            }
            
            
        }
    }
}

struct DeviceDetailExtraScreen: View {
    let selectedItem: String
//    I forgot to put it in a color... lol, i.e Color(#colorLiteral)
//    var color1: UIColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
//    var color2: UIColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
//    @ObservableObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
//    Since as the developer, you're very certain there is viewModel, stored in the .environmentObject of the mother view Struct,
//    then you can destructure it  

    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color.green, Color.black], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 10.0) {
                Text("Device:-")
                    .font(.body)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text(selectedItem)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.light)
                
                Text("Description:-")
                    .font(.headline)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text("\(selectedItem) is just another block sucking device, no reason am abegi")
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.light)
                Text("Other Devices:-")
                    .font(.body)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    ForEach(viewModel.dataArray, id: \.self) { data in
                        Text(data)
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    .padding(.horizontal, 10.0)
                Spacer()
            }
        }
    }
}


struct EnvironmentObjectScreen_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectScreen()
    }
}
