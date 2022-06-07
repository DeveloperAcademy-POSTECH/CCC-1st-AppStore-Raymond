//
//  SmallCard.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/05.
//

import SwiftUI

struct SmallCard: View {
    let title: String
    let subTitle: String
    let cardStyle: CardStyle
    let apps = makeAppListData()
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(self.subTitle).foregroundColor(.gray).fontWeight(.semibold)
                Text(self.title).font(.title).fontWeight(.bold)
                Divider().frame(height: 10).opacity(0)
            }
            .padding([.top, .horizontal])
            showCardBody(style: self.cardStyle, appList: self.apps)
                .padding(cardStyle == .appList ? 16 : 0)
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 20, x: 0, y: 0)
        )
        .padding([.bottom, .horizontal])
    }
    
    @ViewBuilder
    func showCardBody(style: CardStyle, appList: [Application]) -> some View {
        switch style {
        case .appList: AppListView(previewCount: 4, previewApps: appList)
        case .appTheme: ThemeShowingView()
        }
    }
    
    enum CardStyle {
        case appList, appTheme
    }

}




struct SmallCard_Previews: PreviewProvider {
    static var previews: some View {
        SmallCard(title: "이번 주 인기 게임", subTitle: "요즘 화제", cardStyle: .appList)
    }
}
