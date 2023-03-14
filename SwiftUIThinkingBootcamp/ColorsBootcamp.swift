//
//  ColorsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
      RoundedRectangle(cornerRadius: 25.0)
        .fill(Color("CustomColor"))
        .frame(width: 300, height: 200)
        .shadow(color: .black, radius: 10, x: 0, y: 10)
//        .shadow(radius: 10)

      // Color.primary 는 다크/라이트 모드 대응하는 Color
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
