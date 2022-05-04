//
//  ScheduleView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/02.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1...100, id: \.self) { count in
                    HStack{
                        Button(action: {}, label: {
                            Image("largecircle.fill.circle")
                                .foregroundColor(Color.gray)
                        })
                        Text("\(Date())")
                    }
                }
            }
            .navigationBarTitle("Schedule")
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
