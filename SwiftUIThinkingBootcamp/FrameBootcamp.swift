//
//  FrameBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("1q2w3e4r! 1q2w3e4r!")
        .background(.indigo)
        .frame(width: 100, height: 100, alignment: .topTrailing)
        .background(.orange)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.blue)
        .frame(maxHeight: .infinity, alignment: .trailing)
        .background(.green)
        .frame(height: 200)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
