//
//  StepperBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/20.
//

import SwiftUI

struct StepperBootcamp: View {
  
  @State var stepperValue: Int = 10
  @State var widthIncrement: CGFloat = 0
  
  var body: some View {
    VStack {
      Stepper("Stepper : \(stepperValue)", value: $stepperValue)
        .padding(50
      )
      
      RoundedRectangle(cornerRadius: 25.0)
        .frame(width: 100 + CGFloat(widthIncrement), height: 100)
      
      Stepper("Stepper 2") {
        // increment
        incrementWidth(amount: 100)
      } onDecrement: {
        // decrement
        widthIncrement -= 10
      }
      .padding(50)

    }
  }
  
  func incrementWidth(amount: CGFloat) {
    withAnimation(.easeInOut) {
      widthIncrement += amount
    }
  }
  
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
