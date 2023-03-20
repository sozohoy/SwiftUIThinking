//
//  DatePickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/20.
//

import SwiftUI

struct DatePickerBootcamp: View {
  
  @State var selectedDate: Date = Date()
  
  var body: some View {
    DatePicker("Select a Date",
               selection: $selectedDate,
               displayedComponents: [.date, .hourAndMinute])
//    DatePicker("Select a Date", selection: $selectedDate)
//      .datePickerStyle(
//        GraphicalDatePickerStyle()
//        WheelDatePickerStyle()
//      )
  }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
