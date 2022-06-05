//
//  ArcadeView.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/04.
//

import SwiftUI

struct ArcadeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Spacer()
                    CircleImage()
                        .padding(.horizontal)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ArcadeView_Previews: PreviewProvider {
    static var previews: some View {
        ArcadeView()
    }
}
