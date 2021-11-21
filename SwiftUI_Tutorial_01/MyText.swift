//
//  MyText.swift
//  SwiftUI_Tutorial_01
//
//  Created by SeongMinK on 2021/11/21.
//

import SwiftUI

struct MyText: View {
    var name: String
    var color: Color
    
    var body: some View {
        Text(name)
            .font(.system(size: 20))
            .bold()
            .padding(15)
            .foregroundColor(Color.white)
            .background(color)
            .cornerRadius(15)
    }
}

struct MyWebLink_Previews: PreviewProvider {
    static var previews: some View {
        MyText(name: "Youtube", color: Color.red)
    }
}
