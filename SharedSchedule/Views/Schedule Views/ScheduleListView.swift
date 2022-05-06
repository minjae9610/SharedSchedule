//
//  ScheduleView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/02.
//

import SwiftUI

struct ScheduleListView: View {
    var body: some View {
        NavigationView {
            ScrollViewReader { proxy in
                ScrollView {
                    ForEach(1...100, id: \.self) { count in
                        ScheduleRowView(schedule: ScheduleModel(name: "배드민턴 치실분?", createUserName: "Robin", description: "토요일 오후 8시 배드민턴", meetingLocation: "체육관", startTime: Date(), endTime: Date()))
                            .background(Color.white)
                            .cornerRadius(80)
                            .listRowSeparator(.hidden)
                            .padding(EdgeInsets(top: 5, leading: 16, bottom: 5, trailing: 16))
                            .shadow(radius: 3)
                    }
                    
                    Button ("top") {
                        withAnimation {
                            proxy.scrollTo(1)
                        }
                    }
                }
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
