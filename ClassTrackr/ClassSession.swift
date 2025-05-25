//
//  ClassSession.swift
//  ClassTrackr
//
//  Created by Andrius Shiaulis on 25.05.2025.
//

import Foundation

struct ClassSession: Identifiable, Codable {
    let id: UUID
    let name: String
    let teacher: String?
    let startTime: Date
    let endTime: Date
    let room: String?
}
