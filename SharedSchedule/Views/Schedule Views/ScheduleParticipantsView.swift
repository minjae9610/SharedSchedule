//
//  ScheduleParticipantsView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/06.
//

import SwiftUI

struct ScheduleParticipantsView: View {
    let participants: [String]
    
    var body: some View {
        List {
            ForEach(participants, id: \.self) { participant in
                HStack {
                    ScheduleParticipantsRowView(participant: participant)
                }
            }
        }
    }
}

#if DEBUG
struct ScheduleParticipantsView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleParticipantsView(participants: ["Robin"])
    }
}
#endif
