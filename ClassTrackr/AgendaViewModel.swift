//
//  AgendaViewModel.swift
//  ClassTrackr
//
//  Created by Andrius Shiaulis on 25.05.2025.
//

import Foundation

@Observable
final class AgendaViewModel {

    let sessions: [ClassSession] = [
        .init(
            id: .init(),
            name: "Üp",
            teacher: "SiSi",
            startTime: Date(),
            endTime: Date().addingTimeInterval(3600),
            room: "",
        ),
        .init(
            id: .init(),
            name: "Ku",
            teacher: "SiMa",
            startTime: Date().addingTimeInterval(4000),
            endTime: Date().addingTimeInterval(7000),
            room: "405",
        ),
    ]

}
