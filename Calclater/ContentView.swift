//
//  ContentView.swift
//  Calclater
//
//  Created by 渡邊はる佳 on 2024/07/19.
//

import SwiftUI

struct ContentView: View {
    @State var n1 = ""
    @State var n2 = ""
    @State var b = ""
    var body: some View {
        VStack {
            TextField( " 数字１",text:$n1 )
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField( "数字２",text:$n2 )
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("計算"){
                var m1:Int = Int(n1) ?? 0
                var m2:Int = Int(n2) ?? 0
                b = "\(m1 + m2)"
//                var a:Int = m1 + m2
//                b = "\(a)"
            }
            .padding()
            Text(b)
                .font(.title)
        }
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
