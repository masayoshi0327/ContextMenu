//
//  ContentView.swift
//  ContextMenu
//
//  Created by 澤崎正佳 on 2021/02/28.
//

import SwiftUI

struct ContentView: View {
    let evs = ["イーブイ", "ブースター", "シャワーズ", "サンダース", "エーフィ", "ブラッキー", "グレイシア", "リーフィア", "ニンフィア"]
    let colors1: [Color] = [Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)), .red, .blue, .yellow, Color(#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 0.5)), .black, Color(#colorLiteral(red: 0.6872052062, green: 0.9808971643, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)), .pink]
    let colors2: [Color] = [.white, .white, .white, .black, .black, .yellow, .blue, Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))]
    
    @State var evID = 0
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(colors1[evID])
                .frame(width: 250)
            VStack{
                Text(evs[evID])
                    .padding()
                Image(systemName: "sparkles")
                    .contextMenu(ContextMenu(menuItems: {
                        ForEach(0..<9) { n in
                            Button(action: {
                                evID = n
                            }, label: {
                                Text(evs[n])
                            })
                        }
                    }))
            }
            .font(.title)
            .foregroundColor(colors2[evID])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
