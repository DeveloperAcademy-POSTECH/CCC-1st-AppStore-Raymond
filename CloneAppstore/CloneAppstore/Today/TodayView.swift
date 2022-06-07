//
//  TodayView.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/04.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                //safe area ignore 되는 문제 발생
                header
                LargeCard(title: "DEEMO 2 매력 탐방", subTitle: "추천", summary: nil, imageName: "디모", cardStyle: .directDownload)
                SmallCard(title: "이번 주 인기 게임", subTitle: "요즘 화제", cardStyle: .appList)
                SmallCard(title: "짜증이라는 것이\n 폭발할 때", subTitle: "추천", cardStyle: .appTheme)
            }
            .navigationBarHidden(true)
        
        }
    }
    
    var header: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("날짜")
                .foregroundColor(.gray)
            HStack {
                Text("투데이").font(.largeTitle).fontWeight(.bold)
                Spacer()
                CircleImage()
            }
        }
        .padding(.horizontal)
        .padding(.top, 20)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
