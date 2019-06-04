//
//  ContentView.swift
//  SwiftUI-example
//
//  Created by 朱德坤 on 2019/6/4.
//  Copyright © 2019 DKJone. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        // 创建 文本（Label）
        let aText = Text("Hello SwiftUI")
            .color(.yellow)
            .strikethrough()
            .font(.system(size: 14.1))

        // 创建 按钮（Button）
        let aButton = Button(action: {
            print(#function)
        }) {
            Text("Hello SwiftUI")
        }

        let aView = AnyView(aText)

        // 创建图片
        let anImage = Image("img")
            .aspectRatio(contentMode: .fit)

        // 布局各视图
        return VStack {
            anImage
            aText
            aButton
            aView
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
