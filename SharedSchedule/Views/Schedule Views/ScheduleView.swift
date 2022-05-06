//
//  ScheduleView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/04.
//

import SwiftUI

struct ScheduleView: View {
    let schedule: ScheduleModel
    
    var body: some View {
        List {
            HStack {
                Label(
                    title: {
                        Text("Due Date")
                            .font(.headline)
                    },
                    icon: {
                        Image(systemName: "calendar")
                    })
                Spacer()
                Text("\(schedule.startTime, formatter: DateFormatter.dueDateFormatter)")
            }
            HStack {
                Label(
                    title: {
                        Text("Payout")
                            .font(.headline)
                    },
                    icon: {
                        Image(systemName: "creditcard")
                    })
                Spacer()
                Text(schedule.name)
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle(schedule.name)
    }
}

#if DEBUG
struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(schedule: ScheduleModel(name: "배드민턴 치실분?", createUserName: "Robin", description: "토요일 오후 8시 배드민턴", meetingLocation: "체육관", startTime: Date(), endTime: Date()))
    }
}
#endif
