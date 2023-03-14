//
//  StacksBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct StacksBootcamp: View {
  // Vstacks -> Vertical : top to bottom
  // Hstacks -> Horizontal : left to right
  // Zstacks -> zIndex(back to front)
    var body: some View {
      VStack(spacing: 50) {
        
        ZStack {
          Circle()
            .frame(width: 100, height: 100)
          
          Text("5")
            .font(.largeTitle)
            .underline()
            .foregroundColor(.white)
        }
        
        Text("1")
          .font(.title)
          .foregroundColor(.indigo)
          .background {
            Circle()
              .frame(width: 100, height: 100)
        }
      }
      
  }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}

//      VStack {
//        Rectangle()
//          .fill(.red)
//          .frame(width: 150, height: 150)
//        Rectangle()
//          .fill(.green)
//          .frame(width: 130, height: 130)
//        Rectangle()
//          .fill(.orange)
//          .frame(width: 100, height: 100)
//      }

//ZStack(alignment: .topTrailing){
//  Rectangle()
//    .fill(.green)
//    .frame(width: 350, height: 500)
//
//  VStack {
//    Rectangle()
//      .fill(.indigo)
//      .frame(width: 150, height: 150)
//
//    Rectangle()
//      .fill(.red)
//      .frame(width: 100, height: 100)
//
//    HStack {
//      Rectangle()
//        .fill(.purple)
//        .frame(width: 50, height: 50)
//      Rectangle()
//        .fill(.yellow)
//        .frame(width: 75, height: 75)
//      Rectangle()
//        .fill(.black)
//        .frame(width: 25, height: 25)
//  }
//}
//}
