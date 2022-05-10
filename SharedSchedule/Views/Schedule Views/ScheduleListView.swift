//
//  ScheduleView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/02.
//

import SwiftUI


struct ScheduleListView: View {
    @Namespace var topID
    @Namespace var bottomID
    var schedules: [ScheduleModel] = [
        ScheduleModel(name: "배드민턴 치실분?", createUserName: "Robin", description: "토요일 오후 8시 배드민턴", meetingLocation: "체육관", startTime: Date(), endTime: Date()),
        ScheduleModel(name: "오후세션 끝나고 저녁", createUserName: "Robin", description: "오후 세션 끝나고 효자동에 저녁밥 드시러 가실분?", meetingLocation: "C5 앞에서 만나요", startTime: Date(), endTime: Date()),
        ScheduleModel(name: "NC 끝났으니 술", createUserName: "Robin", description: "저녁 10시 끝나고", meetingLocation: "C5 앞에서 만나요", startTime: Date(), endTime: Date()),
        ScheduleModel(name: "더미1", createUserName: "Robin", description: "더미 설명", meetingLocation: "더미 만남 위치", startTime: Date(), endTime: Date()),
        ScheduleModel(name: "더미2", createUserName: "Robin", description: "더미 설명", meetingLocation: "더미 만남 위치", startTime: Date(), endTime: Date()),
        ScheduleModel(name: "더미3", createUserName: "Robin", description: "더미 설명", meetingLocation: "더미 만남 위치", startTime: Date(), endTime: Date()),
        ScheduleModel(name: "더미4", createUserName: "Robin", description: "더미 설명", meetingLocation: "더미 만남 위치", startTime: Date(), endTime: Date()),
        ScheduleModel(name: "더미5", createUserName: "Robin", description: "더미 설명", meetingLocation: "더미 만남 위치", startTime: Date(), endTime: Date()),
        ScheduleModel(name: "더미6", createUserName: "Robin", description: "더미 설명", meetingLocation: "더미 만남 위치", startTime: Date(), endTime: Date()),
        ScheduleModel(name: "더미7", createUserName: "Robin", description: "더미 설명", meetingLocation: "더미 만남 위치", startTime: Date(), endTime: Date())
    ]
    
    var body: some View {
        NavigationView {
            ScrollViewReader { proxy in
                ScrollView {
                    HStack {}.id(topID)
                    ForEach(schedules, id: \.self) { schedule in
                        ScheduleRowView(schedule: schedule)
                            .background(Color.white)
                            .cornerRadius(80)
                            .listRowSeparator(.hidden)
                            .padding(EdgeInsets(top: 5, leading: 16, bottom: 5, trailing: 16))
                            .shadow(radius: 3)
                    }
                    
                    Button(action: {
                        withAnimation {
                            proxy.scrollTo(topID)
                        }
                    }) {
                        Image(systemName: "chevron.up.circle")
                            .imageScale(.large)
                            .font(.title2)
                            .foregroundColor(.gray)
                    }
                    .buttonStyle(.plain)
                    .id(bottomID)
                }
                .background(Color(red: 240, green: 240, blue: 240))
            }
            .navigationBarTitle("Schedule")
        }
    }
}

#if DEBUG
struct ScheduleListView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleListView()
    }
}
#endif
