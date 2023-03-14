//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
      
      VStack(alignment: .leading) {
        Text("Hello, World!")
          .font(.largeTitle)
          .fontWeight(.semibold)
          .padding(.bottom, 20)
        
        Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge")
      }
      .padding()
      .padding(.vertical, 10)
      .background(
        Color.white
          .cornerRadius(10)
          .shadow(color: .black.opacity(0.3),
                  radius: 10,
                  x: 0,
                  y: 0)
      )
      .padding(.horizontal, 10)
    }
  
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
