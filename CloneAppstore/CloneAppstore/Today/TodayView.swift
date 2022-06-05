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
                SmallCard(title: "이번 주 인기 게임", subTitle: "요즘 화제", cardStyle: .appList)
                    .padding(.horizontal)
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
