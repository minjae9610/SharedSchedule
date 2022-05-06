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
                    ForEach(1...5, id: \.self) { count in
                        ScheduleRowView(schedule: ScheduleModel(name: "배드민턴 치실분?", createUserName: "Robin", description: "토요일 오후 8시 배드민턴", meetingLocation: "체육관", startTime: Date(), endTime: Date()))
                            .background(Color.white)
                            .cornerRadius(80)
                            .listRowSeparator(.hidden)
                            .padding(EdgeInsets(top: 5, leading: 16, bottom: 5, trailing: 16))
                            .shadow(radius: 3)
                    }
                    
                    Button(action: {
                        withAnimation {
                            proxy.scrollTo(1)
                        }
                    }) {
                        Image(systemName: "chevron.up.circle")
                            .imageScale(.large)
                            .font(.title2)
                            .foregroundColor(.gray)
                    }
                    .buttonStyle(.plain)
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
