//
//  ContentView.swift
//  Memorize
//
//  Created by Xu Quentin Yang on 8/27/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    HStack(content: {
      HStack {
        ForEach(0..<4) { index in
          let isFaceUp = index % 2 == 0 // 偶数卡片正面朝上，奇数卡片背面朝上
          CardView(isFaceUp: isFaceUp)
        }
      }
      // 设置前景色为橙色
      .foregroundColor(.orange)
      // 图片缩放为小尺寸
      .imageScale(.small)
      // 添加内边距
      .padding()
    })
  }
}
struct CardView: View {
  var isFaceUp: Bool = false
  var body: some View {
    ZStack(content: {
      if isFaceUp {
        // 圆角矩形边框
        RoundedRectangle(cornerRadius: 12)
          .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [10, 12]))
        // 显示表情符号
        Text("🦄").font(.largeTitle)
      }  else {
        RoundedRectangle(cornerRadius: 12)
        Text("").font(.largeTitle).foregroundColor(.white)
      }
    })
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
