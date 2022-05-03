//
//  ScheduleView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/02.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                LazyVStack {
                    ForEach(1...100, id: \.self) { count in
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder \(count)")/*@END_MENU_TOKEN@*/
                    }
                }

                Button("Top") {
                    withAnimation {
                        proxy.scrollTo(100)
                    }
                }
            }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
