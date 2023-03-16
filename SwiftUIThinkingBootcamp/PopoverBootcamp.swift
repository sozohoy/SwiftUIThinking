//
//  PopoverBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/16.
//

// s heets
// animations
// transitions

import SwiftUI

struct PopoverBootcamp: View {
  
  @State var showNewScreen: Bool = false
  
  var body: some View {
    ZStack {
      Color.orange
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        Button("BUTTON") {
          showNewScreen.toggle()
        }
        .font(.largeTitle)
        Spacer()
      }
      
      // METHOD 1 - SHEET
//      .sheet(isPresented: $showNewScreen) {
//        NewScreen()
//      }
      
      // METHOD 2 - TRANSITION
//      ZStack {
//        if showNewScreen {
//          withAnimation(.spring()) {
//            NewScreen(showNewScreen: $showNewScreen)
//              .padding(.top, 100)
//              .transition(.move(edge: .bottom))
//          }
//        }
//      }
//      .zIndex(2.0)
      
      //METHOD 3 - ANIMATION OFFSET
      
      NewScreen(showNewScreen: $showNewScreen)
        .padding(.top, 100)
        .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
        .animation(.default, value: showNewScreen)
      
    }
  }
}

struct NewScreen: View {
  
  @Environment(\.dismiss) var dismiss
  @Binding var showNewScreen: Bool
  
  var body: some View {
    ZStack(alignment: .topLeading) {
      Color.purple
        .edgesIgnoringSafeArea(.all)
      
      Button {
        dismiss()
        showNewScreen.toggle()
      } label: {
        Image(systemName: "xmark")
          .foregroundColor(.white)
          .font(.largeTitle)
          .padding(20)
      }
    }
  }
  
}

struct PopoverBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    PopoverBootcamp()
//    NewScreen()
  }
}
