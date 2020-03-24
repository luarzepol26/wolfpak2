//
//  GroupModel.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/23/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import Foundation

struct GroupItem:Identifiable {
    var id:Int
    var name:String
    var description:String
}

let testGroupModel = GroupItem(id: 1, name: "Lopez Family", description: "Group of only local Miami Lopez Family residents")

struct GroupModel {
    var group:[GroupItem] = [
        GroupItem(id: 2, name: "102 Place Neighbors", description: "Neighbors on 102 Place.")
    ]
}
