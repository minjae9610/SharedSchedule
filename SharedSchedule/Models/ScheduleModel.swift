//
//  ScheduleModel.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/03.
//

import Foundation

class ScheduleListStore: ObservableObject {
    @Published var Schedules: [ScheduleModel] = []
}

struct ScheduleModel: Codable, Identifiable {
    var id = UUID()
    var isMeIn : Bool = false
    var name: String
    var description: String
    var meetingLocation: String
    var startTime: Date
    var endTime: Date
    let participants: [String]
    
    init(name: String, createUserName: String, description: String, meetingLocation: String, startTime: Date, endTime: Date) {
        self.name = name
        self.description = description
        self.meetingLocation = meetingLocation
        self.startTime = startTime
        self.endTime = endTime
        self.participants = [createUserName]
    }
    
    func data() -> Data? {
        let encoder = JSONEncoder()
        return try? encoder.encode(self)
    }
}
