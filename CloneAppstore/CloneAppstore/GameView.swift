//
//  GameView.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/04.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationView{
            List {
                HStack {
                    Text("hello")
                }
                HStack {
                    Text("hello")
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("게임")
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
