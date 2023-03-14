//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
      Image(systemName: "heart.fill")
        .font(.system(size: 40))
        .foregroundColor(.white)
        .background {
          Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [.indigo, .green]), startPoint: .leading, endPoint: .trailing))
            .frame(width: 100, height: 100)
            .shadow(color: .black, radius: 10, x: 0.0, y: 5)
            .overlay(alignment: .topLeading) {
              Circle()
                .fill(.black)
                .frame(width: 35, height: 35)
                .overlay(alignment: .center) {
                  Text("5")
                    .font(.headline)
                    .foregroundColor(.white)
                }
            }
        }
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}

//        Circle()
//          .fill(.red)
//          .frame(width: 100, height: 100, alignment: .center)
//          .overlay(
//            Text("1")
//              .font(.largeTitle)
//              .foregroundColor(.white)
//          )
//          .background(
//            Circle()
//              .fill(.purple)
//              .frame(width: 110, height: 110)
//          )

//Rectangle()
//  .fill(.green)
//  .frame(width: 200, height: 200)
//  .overlay(alignment: .center, content: {
//    Rectangle()
//      .fill(.blue)
//      .frame(width: 50, height: 50)
//  })
//  .background(alignment: .center) {
//    Rectangle()
//      .fill(.red)
//      .frame(width: 300, height: 300)
//  }
