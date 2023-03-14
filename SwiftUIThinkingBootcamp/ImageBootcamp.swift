//
//  ImageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("emoji")
        .resizable()
        .scaledToFill()
        .frame(width: 300, height: 500)
        .cornerRadius(30)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
