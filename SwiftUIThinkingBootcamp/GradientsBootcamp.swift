//
//  GradientsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
      RoundedRectangle(cornerRadius: 25.0)
        .fill(
//          LinearGradient(gradient: Gradient(colors: [.cyan, .green]),
//                         startPoint: .topLeading,
//                         endPoint: .bottomTrailing)
//          RadialGradient(gradient: Gradient(colors: [.cyan, .indigo]),
//                         center: .center,
//                         startRadius: 5,
//                         endRadius: 200)
          AngularGradient(gradient: Gradient(colors: [.indigo, .green]),
                          center: .center,
                          angle: .degrees(180))
        )
        .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
