//
//  Tab.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/03.
//

import SwiftUI

enum Tab: CaseIterable {
    case schedule
    case profile
 
    var title: String {
        switch self {
        case .schedule: return "Schedule"
        case .profile: return "Profile"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .schedule: return "calendar"
        case .profile: return "person.crop.circle.fill"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .schedule: ScheduleListView()
        case .profile: ProfileView()
        }
    }
}
