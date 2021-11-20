//
//  MyVStackView.swift
//  SwiftUI_Tutorial_01
//
//  Created by SeongMinK on 2021/11/20.
//

import SwiftUI

struct MyVStackView: View {
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    var body: some View {
        VStack {
            Text("1")
                .font(.system(size: 60))
                .bold()
            Text("2")
                .font(.system(size: 60))
                .bold()
            Text("3")
                .font(.system(size: 60))
                .bold()
        }
        .padding(10)
        .background(self.isActivated ? Color.green : Color.red)
    }
}

struct MyBindingView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
