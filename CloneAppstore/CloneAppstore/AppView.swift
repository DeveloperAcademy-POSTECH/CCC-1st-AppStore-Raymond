//
//  AppView.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/04.
//

import SwiftUI

struct AppView: View {
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
            .navigationTitle("앱")
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
