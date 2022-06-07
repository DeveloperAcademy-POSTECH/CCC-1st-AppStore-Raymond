//
//  LargeCard.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/05.
//

import SwiftUI

struct LargeCard: View {
    let title: String
    let subTitle: String
    let summary: String?
    let imageName: String
    let cardStyle: CardStyle
    
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                Image(imageName)
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 400)
                    .cornerRadius(20)
                if cardStyle == .directDownload {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(self.subTitle).foregroundColor(.white.opacity(0.8)).fontWeight(.semibold)
                        Text(self.title).foregroundColor(.white).font(.title).fontWeight(.bold)
                    }
                    .padding()
                }
            }
            showCardFooter(style: self.cardStyle, app: makeAppData())
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 20, x: 0, y: 0)
        )
        .padding([.horizontal, .bottom])
    }
    
    @ViewBuilder
    func showCardFooter(style: CardStyle, app: Application) -> some View {
        switch style {
        case .directDownload: AppDownloadFooter(app: app)
        case .storyCard: StoryCardFooter(title: self.title, subTitle: self.subTitle, summary: self.summary)
        }
    }
    
    enum CardStyle {
        case directDownload, storyCard
    }
}


struct LargeCard_Previews: PreviewProvider {
    static var previews: some View {
        LargeCard(title: "DEEMO 2 매력 탐방", subTitle: "추천", summary: nil, imageName: "디모", cardStyle: .directDownload)
    }
}
