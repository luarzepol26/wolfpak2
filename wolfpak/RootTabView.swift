//
//  RootTabView.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/22/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Image(systemName: "person.3")
                    Text("Groups")
            }
            MyListView()
                .tabItem{
                    Image(systemName: "list.number")
                    Text("My List")
            }
        }
        .accentColor(Color.blue)
        .background(Color.gray)
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
