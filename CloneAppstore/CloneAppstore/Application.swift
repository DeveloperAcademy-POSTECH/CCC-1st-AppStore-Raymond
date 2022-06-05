//
//  Application.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/05.
//

import Foundation

struct Application {
    let id = UUID().uuidString
    let thumbnailName: String
    let category: String
    let name: String
    let summary: String
    let payInApp: Bool = true
}

func makeMockData() -> [Application] {
    [
        Application(thumbnailName: "디아블로", category: "게임", name: "디아블로 이모탈", summary: "전리품, 커스터마이징과 탐험"),
        Application(thumbnailName: "던전앤파이터", category: "게임", name: "던전앤파이터 모바일", summary: "어디서나 액션쾌감!"),
        Application(thumbnailName: "오딘", category: "게임", name: "오딘: 발할라 라이징", summary: "롤플레잉"),
        Application(thumbnailName: "원신", category: "게임", name: "원신", summary: "미호요 오픈월드 액션 RPG")
    ]
}
