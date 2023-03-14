//
//  ShapesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
      RoundedRectangle(cornerRadius: 10)
//        Circle()
//        .fill(.green)
//        .foregroundColor(.pink)
//        .stroke(.brown, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [10]))
//        .trim(from: 0.2, to: 1.0)
        .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
