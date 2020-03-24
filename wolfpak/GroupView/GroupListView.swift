//
//  GroupListView.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/22/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import SwiftUI

struct GroupListView: View {
        var body: some View {
            VStack {
                NavigationView{
                    List(0..<15) { item in
                        NavigationLink(destination: CommentView(name: "Blah")) {
                            GroupRowView()
                        }
                    }
                }
                    
            }.navigationBarTitle("Family List")
            
    }
}

struct GroupListView_Previews: PreviewProvider {
    static var previews: some View {
        GroupListView()
    }
}
