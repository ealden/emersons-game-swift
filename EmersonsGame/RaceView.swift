//
//  RaceView.swift
//  EmersonsGame
//
//  Created by Ealden Escañan on 5/10/20.
//  Copyright © 2020 Ealden Escañan. All rights reserved.
//

import SwiftUI

struct RaceView: View {
    var body: some View {
        VStack {
            List(racers) { racer in
                RacerRow(racer: racer)
            }
            Spacer()
            HStack {
                Button(action: {}) {
                    Text("NORMAL SPEED")
                }
                Button(action: {}) {
                    Text("SUPER SPEED")
                }
            }
            .padding()
        }
    }
}

struct RacerRow: View {
    var racer: Racer
    
    var body: some View {
        HStack {
            Image(systemName: "car")
                .foregroundColor(.red)
            Text(racer.name)
            Spacer()
            Text("\(racer.position) / \(racer.finishLine)")
        }
        .font(.headline)
        .padding()
    }
}

let racers = [
    Racer(name: "Alice"),
    Racer(name: "Bob"),
    Racer(name: "Charlie"),
    Racer(name: "Dave")
]

struct Racer: Identifiable {
    var id = UUID()
    var name: String
    var position: Int = 0
    var finishLine: Int = 10
}

struct RaceView_Previews: PreviewProvider {
    static var previews: some View {
        RaceView()
    }
}
