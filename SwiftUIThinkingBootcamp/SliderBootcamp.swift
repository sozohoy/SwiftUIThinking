//
//  SliderBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/20.
//

import SwiftUI

struct SliderBootcamp: View {
  
  @State var sliderValue: Double = 10
  
  var body: some View {
    VStack {
      Text("Rating :")
      Text("\(sliderValue)")
      Slider(value: $sliderValue, in: 0...100)
        .tint(.red)
    }
    
  }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
