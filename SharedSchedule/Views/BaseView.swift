//
//  BaseView.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/02.
//

import SwiftUI

struct BaseView: View {
    
    var body: some View {
        TabView {
            ForEach(Tab.allCases, id: \.self) { tab in
                tab.view
                    .tabItem {
                        Image(systemName: tab.systemImageName)
                        Text(tab.title)
                    }
            }
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
