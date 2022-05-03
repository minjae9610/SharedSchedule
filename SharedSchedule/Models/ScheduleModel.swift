//
//  ScheduleModel.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/03.
//

import SwiftUI

struct Schedule: Identifiable {
    var id = UUID()
    var scheduleName: String
    var meetingLocation: String
    var startTime: Date
    var endTime: Date
    let participants: [String: Image]
}
