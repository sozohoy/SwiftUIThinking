//
//  TabViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by 한지석 on 2023/03/20.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        
        TabView {
            RoundedRectangle(cornerRadius: 25)
            RoundedRectangle(cornerRadius: 25)
            RoundedRectangle(cornerRadius: 25)
        }
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $selectedTab) {
//
//            ExtractedView(selectTab: $selectedTab)
//
//            Text("Browse")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("Profile")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .tint(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct ExtractedView: View {
    
    @Binding var selectTab: Int
    
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            VStack {
                Text("Home")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
        

            
        }
        .tabItem {
            Image(systemName: "house.fill")
            Text("Home")
        }
        .tag(0)
    }
}
