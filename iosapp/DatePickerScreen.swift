//
//  DatePickerScreen.swift
//  iosapp
//
//  Created by gikwegbu on 11/08/2022.
//

//Editor placeholder in source file,
//to solve this, command + shift + B
// This is caused when you use the provided autocompletion from the xcode-swift, but ending up deleting a value that was needed but not compulsory

import SwiftUI

struct DatePickerScreen: View {
    @State var selectedDate: Date = Date() // the Date(), means we are selecting the current date i.e today's
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    // The null check, tries to limit the starting date to 2018, but ifthe 2018 does not exist, then use current Date()
    
    let endingDate: Date = Date()
    
//    Date formatter
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
//        formatter.dateStyle = .short
//        formatter.dateStyle = .medium
        formatter.dateStyle = .long
        formatter.timeStyle = .short // medium, long, full
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected Date Is: ")
//            Text(selectedDate.description.decomposedStringWithCanonicalMapping)
//            Will have to format the above, using a formatter
            Text(dateFormatter.string(from: selectedDate))
        
    //        DatePicker("Select a Date", selection: $selectedDate)
    //        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
    // You get to choose the components you want to display, either .date, .hourAndMinute or both
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date,.hourAndMinute])
            
                .accentColor(.red) //Anytime you see the color blue, just know it's the default color and can be changed with accentColor
    //            .datePickerStyle(GraphicalDatePickerStyle())
    //            .datePickerStyle(WheelDatePickerStyle())
                .datePickerStyle(CompactDatePickerStyle())
        }
    }
}

struct DatePickerScreen_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerScreen()
    }
}
