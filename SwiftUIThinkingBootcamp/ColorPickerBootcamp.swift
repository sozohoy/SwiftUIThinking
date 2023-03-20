//
//  ColorPickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/20.
//

import SwiftUI

struct ColorPickerBootcamp: View {
  
  @State var backgroundColor: Color = .green
  
  var body: some View {
    ZStack {
      backgroundColor
        .edgesIgnoringSafeArea(.all)
      
      ColorPicker("Select a color",
                  selection: $backgroundColor,
                  supportsOpacity: true)
      .padding()
      .background(.black)
      .cornerRadius(10)
      .foregroundColor(.white)
      .font(.headline)
      .padding(50)
    }
  }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
