//
//  ScheduleParticipantsRowView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/06.
//

import SwiftUI

struct ScheduleParticipantsRowView: View {
    let participant: String
    
    var body: some View {
        HStack {
            UserImage
            Spacer()
            Text("\(participant)").foregroundColor(.black)
        }
        .foregroundColor(.black)
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
    }
}

private extension ScheduleParticipantsRowView {
    var UserImage: some View {
        ScheduleListProfileImage(image: Image("robinProfileImage"))
    }
}

#if DEBUG
struct ScheduleParticipantsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleParticipantsRowView(participant: "Robin")
    }
}
#endif
