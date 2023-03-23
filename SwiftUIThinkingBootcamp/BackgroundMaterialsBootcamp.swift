//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/23.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Text("Hi")
            }
            .frame(height: 350)
            .frame(maxHeight: .infinity)
            .background(.black)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background() 
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
