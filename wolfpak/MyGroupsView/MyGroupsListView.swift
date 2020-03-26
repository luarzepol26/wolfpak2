//
//  MyGroupsListView.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/22/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import SwiftUI

struct MyGroupsListView: View {
    
    var groupList = GroupModel().group
    var body: some View {
        VStack {
            NavigationView{
                List(groupList) { item in

                    MyGroupsRowView()
                    Spacer()
                    
                }
                
            }
        }
    }
}

struct MyGroupsListView_Previews: PreviewProvider {
    static var previews: some View {
        MyGroupsListView()
    }
}
