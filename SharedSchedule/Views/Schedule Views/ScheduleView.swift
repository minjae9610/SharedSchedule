//
//  ScheduleView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/04.
//

import SwiftUI

struct ScheduleView: View {
    let schedule: ScheduleModel
    @State private var showModal = false
    
    var body: some View {
        List {
            HStack {
                Label(
                    title: {
                        Text("Description")
                            .font(.headline)
                    },
                    icon: {
                        Image(systemName: "text.justify")
                    })
                Spacer()
                Text("\(schedule.description)")
            }
            
            HStack {
                Label(
                    title: {
                        Text("Location")
                            .font(.headline)
                    },
                    icon: {
                        Image(systemName: "location.circle")
                    })
                Spacer()
                Text("\(schedule.meetingLocation)")
            }
            
            HStack {
                Label(
                    title: {
                        Text("Start Time")
                            .font(.headline)
                    },
                    icon: {
                        Image(systemName: "clock")
                    })
                Spacer()
                Text("\(schedule.startTime, formatter: DateFormatter.dueDateFormatter)")
            }
            
            HStack {
                Label(
                    title: {
                        Text("End Time")
                            .font(.headline)
                    },
                    icon: {
                        Image(systemName: "clock.fill")
                    })
                Spacer()
                Text("\(schedule.endTime, formatter: DateFormatter.dueDateFormatter)")
            }

            Button(action: {
                self.showModal = true
            }){
                HStack {
                    Label(
                        title: {
                            Text("Participants")
                                .font(.headline)
                        },
                        icon: {
                            Image(systemName: "person.crop.circle.fill")
                        })
                    Spacer()
                    ForEach(schedule.participants, id: \.self) { participant in
                        Text("\(participant)")
                    }
                }
                .sheet(isPresented: self.$showModal) {
                    ScheduleParticipantsView(participants: schedule.participants)
                }
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
