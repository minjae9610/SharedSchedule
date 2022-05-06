//
//  Formatters.swift
//  SharedSchedule
//
//  Created by 김민재 on 2022/05/04.
//

import Foundation

extension DateFormatter {
    static var dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
}
