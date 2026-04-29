//
//  CreaturesListView.swift
//  CatchEmAll
//
//  Created by Jim Walejko on 4/27/26.
//

import SwiftUI

struct CreaturesListView: View {
    var creatures = Creatures()
    
    var body: some View {
        NavigationStack {
            List(creatures.creaturesArray, id: \.self) { creature in
                Text(creature.name)
                    .font(.title2)
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")
        }
        .task {
            await creatures.getData()
        }
    }
}

#Preview {
    CreaturesListView()
}
