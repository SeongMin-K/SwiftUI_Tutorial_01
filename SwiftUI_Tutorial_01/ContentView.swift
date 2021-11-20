//
//  ContentView.swift
//  SwiftUI_Tutorial_01
//
//  Created by SeongMinK on 2021/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 30 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    print("HStack Tapped")
                    withAnimation {
                        self.isActivated.toggle()
                    }
                }
                
                NavigationLink(destination: MyColorView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .font(.headline)
                        .bold()
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
