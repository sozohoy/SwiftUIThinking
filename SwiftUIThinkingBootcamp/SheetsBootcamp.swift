//
//  SheetsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/16.
//

import SwiftUI

struct SheetsBootcamp: View {
  
  @State var showSheet = false
  
  var body: some View {
    ZStack {
      Color.green
        .edgesIgnoringSafeArea(.all)
      
      Button {
        showSheet.toggle()
      } label: {
        Text("Button")
          .foregroundColor(.green)
          .font(.headline)
          .padding(20)
          .background(Color.white.cornerRadius(10))
      }
//      .fullScreenCover(isPresented: $showSheet, content: {
//        SecondScreen()
//      })
      .sheet(isPresented: $showSheet) {
        // Do not add conditional logic
        SecondScreen()
      }

    }
  }
}

struct SecondScreen: View {
  
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    ZStack(alignment: .topLeading) {
      Color.indigo
        .edgesIgnoringSafeArea(.all)
      
      Button {
        dismiss()
      } label: {
        Image(systemName: "xmark")
          .foregroundColor(.white)
          .font(.largeTitle)
          .padding(20)
      }

    }
  }
  
}



struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
      SheetsBootcamp()
      
    }
}
