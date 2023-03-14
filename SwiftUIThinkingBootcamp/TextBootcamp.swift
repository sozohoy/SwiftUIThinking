//
//  TextBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
      Text("Hello, World!".lowercased())
//        .font(.body)
//        .bold()
//        .underline(true, color: Color.red)
//        .italic()
//        .strikethrough(true, color: Color.green)
        .font(.system(size: 24, weight: .semibold, design: .rounded))
        .multilineTextAlignment(.leading)
        .foregroundColor(.brown)
        .frame(width: 200, height: 100, alignment: .leading)
        .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
