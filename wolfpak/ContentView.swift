//
//  ContentView.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/20/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Found-IT")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Friends shopping for friends")
                    .font(.caption)
            }
            List(0..<3) { item in
                MyGroupsRowView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .colorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}


