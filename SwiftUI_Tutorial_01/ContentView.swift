//
//  ContentView.swift
//  SwiftUI_Tutorial_01
//
//  Created by SeongMinK on 2021/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isActivated: Bool = false
    var urlYoutube = "https://www.youtube.com/channel/UCg_pGaOuYAHvncmq2piUWAQ"
    var urlGitHub = "https://github.com/SeongMin-K"
    var urlKakao = "https://open.kakao.com/o/sqP7S3Bd"
    
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
                    MyText(name: "ColorView", color: Color.orange)
                }
                .padding(.vertical, 20)
            
                HStack {
                    NavigationLink(destination: MyWebView(urlToLoad: urlYoutube)
                        .edgesIgnoringSafeArea(.all))
                    {
                        MyText(name: "Youtube", color: Color.red)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: urlGitHub)
                        .edgesIgnoringSafeArea(.all))
                    {
                        MyText(name: "GitHub", color: Color.black)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: urlKakao)
                        .edgesIgnoringSafeArea(.all))
                    {
                        MyText(name: "Kakao", color: Color.yellow)
                    }
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
