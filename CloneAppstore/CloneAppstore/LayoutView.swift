//
//  LayouttView.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/03.
//

import SwiftUI

struct LayoutView: View {
    let game_icon = UIImage(named: "game_symbol")
    let arcade_icon = UIImage(named: "arcade_symbol")
    var body: some View {
        TabView {
            TodayView()
                .tabItem {
                    Label {
                        Text("투데이")
                    } icon: {
                        Image(systemName: "doc.text.image")
                    }
                }
            GameView()
                .tabItem {
                    Label {
                        Text("게임")
                    } icon: {
                        Image("game_symbol").renderingMode(.template)
                    }
                }
            AppView()
                .tabItem {
                    Label {
                        Text("앱")
                    } icon: {
                        Image(systemName: "square.stack.3d.up.fill")
                    }
                }
            ArcadeView()
                .tabItem {
                    Label {
                        Text("Arcade")
                    } icon: {
                        Image("arcade_symbol").renderingMode(.template)
                    }
                }
            SearchView()
                .tabItem {
                    Label {
                        Text("검색")
                    } icon: {
                        Image(systemName: "magnifyingglass")
                    }
                }
        }
    }
}

struct LayoutView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutView()
    }
}

