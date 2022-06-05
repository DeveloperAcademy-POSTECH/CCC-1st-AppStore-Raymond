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
            }
            .navigationBarHidden(true)
        }
    }
    
    var header: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("날짜")
            HStack {
                Text("투데이").font(.largeTitle)
                Spacer()
                CircleImage()
            }
        }
        .padding(.horizontal)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
