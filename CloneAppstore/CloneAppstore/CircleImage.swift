//
//  CircleImage.swift
//  CloneAppstore
//
//  Created by sanghyo on 2022/06/05.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("profile_image")
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
