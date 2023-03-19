//
//  ActionsheetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/17.
//

import SwiftUI

struct ActionsheetBootcamp: View {
  
  @State var showDialog: Bool = false
  @State var actionSheetOption: ActionSheetOptions = .isOtherPost
  
  
  enum ActionSheetOptions {
    case isMyPost
    case isOtherPost
  }
  
  var body: some View {
    VStack {
      HStack {
        Circle()
          .frame(width: 30, height: 30)
        Text("@username")
        Spacer()
        
        Button {
          actionSheetOption = .isMyPost
          showDialog.toggle()
        } label: {
          Image(systemName: "ellipsis")
        }
        .tint(.primary)
      }
      .padding(.horizontal)
      
      Rectangle()
        .aspectRatio(1.0, contentMode: .fit)
    }
    .actionSheet(isPresented: $showDialog, content: returnButton)
//    .confirmationDialog("title key", isPresented: $showDialog) {
//      returnButton()
//    }
  }
  
//  @ViewBuilder
//  var buttons: some View {
//
//  }
  
  func returnButton() -> ActionSheet {
    let shareButton: ActionSheet.Button = .default(Text("Share")) {
      
    }
    let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
      
    }
    let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
      
    }
    let cancelButton: ActionSheet.Button = .cancel()
    let title = "What would you like to do?"
    
    switch actionSheetOption {
    case .isOtherPost:
      return ActionSheet(title: Text(title), message: nil, buttons: [shareButton, reportButton, cancelButton])
    case .isMyPost:
      return ActionSheet(title: Text(title), message: nil, buttons: [shareButton, reportButton, deleteButton, cancelButton])
    }
//    Button("OK", role: .destructive) { }
//    Button("title") { }
//    Button("title") { }
//    Button("title") { }
//    Button("title") { }
//    Button("title") { }
//    Button("title") { }
//    Button("cancel", role: .cancel) { }
  }
  
  
  
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
