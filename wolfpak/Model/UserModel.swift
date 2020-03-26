//
//  UserModel.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/23/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import Foundation

struct UserItem:Identifiable {
    var id:Int
    var username:String
    var password:String
}

let testUserModel = UserItem(id: 1, username: "zepol@bellsouth.net", password: "test33")

struct UserModel {
    var user:[UserItem] = [
        UserItem(id: 1, username: "zepol@bellsouth.net", password: "test22")
    ]
}
