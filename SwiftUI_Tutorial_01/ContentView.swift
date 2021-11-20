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
                Text("안녕하세요!")
                    .font(.system(size: 70))
                    .bold()
                    .onTapGesture {
                        print("Tapped")
                        withAnimation {
                            self.isActivated.toggle()
                        }
                    }
                
                NavigationLink(destination: MyColorView()) {
                    Text("네비게이션")
                        .font(.headline)
                        .bold()
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
