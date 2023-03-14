//
//  IconsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
//        .renderingMode(.original)
//        .font(.system(size: 200))
        .resizable() // resizeable 메소드를 사용해야 설정한 frame 만큼 사이즈가 적용됨.
//        .aspectRatio(contentMode: .fit)
        .scaledToFit()
        .foregroundColor(.indigo)
        .frame(width: 200, height: 200)
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
