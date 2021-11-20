//
//  MyColorView.swift
//  SwiftUI_Tutorial_01
//
//  Created by SeongMinK on 2021/11/20.
//

import SwiftUI

struct MyColorView: View {
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    @State private var index: Int = 0
    private let backgroundColors = [Color.red, Color.yellow, Color.green, Color.blue, Color.gray, Color.black]
    
    var body: some View {
        VStack {
            Text("Background Color \(self.index)")
                .foregroundColor(Color.white)
                .font(.system(size: 30))
                .bold()
                .onTapGesture {
                    if self.index == self.backgroundColors.count - 1 {
                        self.index = 0
                    } else {
                        self.index += 1
                    }
                }
            
            Text("활성화 상태: \(String(isActivated))")
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .font(.system(size: 25))
                .bold()
                .background(Color.black)
                .padding(.top, 10)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(backgroundColors[index])
    }
}

struct MyColorView_Previews: PreviewProvider {
    static var previews: some View {
        MyColorView()
    }
}
