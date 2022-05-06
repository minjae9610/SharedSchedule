//
//  ImageStyles.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/04.
//

import SwiftUI

struct ScheduleListProfileImage: View {
    var image: Image
    var imgHW: CGFloat = 50
    
    var body: some View {
        image
            .resizable()
            .frame(width: imgHW, height: imgHW)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 0.2))
            .shadow(radius: 1)
    }
}
