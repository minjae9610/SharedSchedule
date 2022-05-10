//
//  ScheduleRowView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/04.
//

import SwiftUI

struct ScheduleRowView: View {
    let schedule: ScheduleModel
    
    var body: some View {
        NavigationLink(destination: ScheduleView(schedule: schedule)) {
            HStack {
                UserImage
                VStack(alignment: .leading) {
                    Text(schedule.name)
                        .font(.title)
                    Text("\(schedule.startTime, formatter: DateFormatter.dueDateFormatter) ~ \(schedule.endTime, formatter: DateFormatter.dueDateFormatter)")
                        .font(.caption)
                }
                Spacer()
            }
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
        }
    }
}

private extension ScheduleRowView {
    var UserImage: some View {
        ScheduleListProfileImage(image: Image("robinProfileImage"))
    }
}

#if DEBUG
struct ScheduleRowView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleRowView(schedule: ScheduleModel(name: "배드민턴 치실분?", createUserName: "Robin", description: "토요일 오후 8시 배드민턴", meetingLocation: "체육관", startTime: Date(), endTime: Date()))
    }
}
#endif
