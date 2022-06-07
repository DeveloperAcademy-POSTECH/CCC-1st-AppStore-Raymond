//
//  AppListView.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/05.
//

import SwiftUI

struct AppListView: View {
    let previewCount: Int
    let previewApps: [Application]
    
    var body: some View {
        VStack{
            ForEach(previewApps) { app in
                HStack(alignment: .center, spacing: 10) {
                    Image(app.thumbnailName)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(10)
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(app.name)
                                    .font(.system(size: 13))
                                    .fontWeight(.bold)
                                Text(app.summary)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            VStack{
                                Text("")
                                Button(action: {
                                    print("button clicked")
                                }) {
                                    Text("받기")
                                        .font(.system(size: 13, weight: .bold))
                                        .padding(.horizontal, 20)
                                        .padding(.vertical, 5)
                                        .background(.gray.opacity(0.2))
                                        .cornerRadius(15)
                                }
                                
                                Text(app.payInApp ? "앱 내 구입" : "")
                                    .font(.system(size: 8))
                                    .foregroundColor(.gray)
                            }
                        }
                        Divider()
                    }
                }
            }
        }
    }
}

struct AppListView_Previews: PreviewProvider {
    static var previews: some View {
        SmallCard(title: "이번 주 인기 게임", subTitle: "요즘 화제", cardStyle: .appList)
    }
}
