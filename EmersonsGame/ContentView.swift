//
//  ContentView.swift
//  EmersonsGame
//
//  Created by Ealden Escañan on 5/10/20.
//  Copyright © 2020 Ealden Escañan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                RacerRow(racer: "Alice")
                RacerRow(racer: "Bob")
                RacerRow(racer: "Charlie")
                RacerRow(racer: "Dave")
            }
            Spacer()
        }
    }
}

struct RacerRow: View {
    var racer: String
    
    var body: some View {
        HStack {
            Image(systemName: "car")
                .foregroundColor(.red)
            Text(racer)
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
