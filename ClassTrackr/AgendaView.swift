//
//  AgendaView.swift
//  ClassTrackr
//
//  Created by Andrius Shiaulis on 25.05.2025.
//

import SwiftUI

struct AgendaView: View {

    let viewModel = AgendaViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(Date(), style: .date)
                .font(.title)
                .padding(.top)

            List(self.viewModel.sessions) { session in
                HStack {
                    VStack(alignment: .leading) {
                        Text(session.name)
                            .font(.title)
                        if let teacher = session.teacher {
                            Text(teacher)
                                .font(.subheadline)
                        }
                        if let room = session.room {
                            Text(room)
                                .font(.subheadline)
                        }
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(session.startTime, style: .time)
                        Text(session.endTime, style: .time)
                    }
                }
            }
            .listStyle(PlainListStyle())
        }
        .padding(.horizontal)
    }
}

#Preview {
    AgendaView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
