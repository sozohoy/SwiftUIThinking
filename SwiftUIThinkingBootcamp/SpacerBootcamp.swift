//
//  SpacerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/14.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
      VStack { // Vertical - 세로
        HStack(spacing: 0) { // Horizontal - 가로
          Image(systemName: "xmark")
          Spacer() // 가로로 공간 늘리기
//            .frame(height: 10)
//            .background(.orange)
          Image(systemName: "gear")
        }
        .font(.title)
        
        .padding(.horizontal)
        
        Spacer() // 세로로 공간 늘림. VStack의 내부에서 선언되어 있으므로
//          .frame(width: 10)
//          .background(.orange)
        
//X  O
//스페이스
//스페이스
//frame - height 55
//우리가 실제로 사용하는 UI와 유사하구나
        
        Rectangle()
          .frame(height: 55)
    }
//    .background(.yellow)
  }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}

//HStack(spacing: 0) {
//  Spacer()
//    .frame(height: 10)
//    .background(.orange)
//
//  Rectangle()
//    .frame(width: 50, height: 50)
//
//  Rectangle()
//    .fill(.red)
//    .frame(width: 50, height: 50)
//
//  Rectangle()
//    .fill(.green)
//    .frame(width: 50, height: 50)
//
//  Spacer()
//    .frame(height: 10)
//    .background(.orange)
//}
//.background(.yellow)
//.padding(.horizontal, 200)
//.background(.blue)
