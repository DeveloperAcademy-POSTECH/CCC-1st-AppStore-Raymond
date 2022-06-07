//
//  ThemeShowingView.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/05.
//

import SwiftUI

struct ThemeShowingView: View {
    var body: some View {
        Image("명상테마")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20)
        //corner radius 하단에만 적용되도록 설정 필요
    }
}

struct ThemeShowingView_Previews: PreviewProvider {
    static var previews: some View {
        SmallCard(title: "짜증이라는 것이 \n폭발할 때🧘", subTitle: "추천", cardStyle: .appTheme)
    }
}
