//
//  StoryCardFooter.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/08.
//

import SwiftUI

struct StoryCardFooter: View {
    let title: String
    let subTitle: String
    let summary: String?
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct StoryCardFooter_Previews: PreviewProvider {
    static var previews: some View {
        StoryCardFooter(title: "여기가 화성이라고?", subTitle: "추천 게임", summary: "<Mars: Mars>에서 우주 탐험 임무를 완수하세요.")
    }
}
