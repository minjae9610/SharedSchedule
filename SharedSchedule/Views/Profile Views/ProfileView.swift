//
//  ProfileView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/02.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            UserProfileImage
            HStack {
                VStack {
                    Text("Robin")
                        .font(.title)
                    Text("010-2604-5339")
                }
            }
        }
    }
}

private extension ProfileView {
    var UserProfileImage: some View {
        ProfileImage(image: Image("robinProfileImage"))
            .offset(y: -130)
            .padding(.bottom, -130)
    }
}

#if DEBUG
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
#endif
