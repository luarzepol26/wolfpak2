//
//  ItemModel.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/23/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import Foundation
import Combine

enum Category:String  {
    case cans = "Canned Goods"
    case dry = "Dry Goods"
    case drinks = "Beverages"
    case deli = "Deli"
    case seafood = "Seafood"
    case meats = "Meats"
    case dairy = "Dairy"
    case produce = "Produce"
    case bakery = "Bakery"
    case frozen = "Frozen"
    case paper = "Paper Goods"
    case cleaning = "Cleaning"
    case health = "Health & Beauty"
    case other = "Other"
}

enum Status:String {
    case open = "Open"
    case closed = "Found"
}

struct ListItem:Identifiable {
    var id: Int
    var groupId: Int
    var userId: Int
    var name: String
    var qty: Int = 1
    var category:Category = .other
    var DateEntered: Date
    var comments: String = ""
    var status: Status = .open
}

class ItemModel:ObservableObject {
    let group = GroupModel()
    @Published var items:[ListItem] = []
    var lastID:Int = -1
    
    private func newId()->Int {
        lastID += 1
        return lastID
    }
    
    var lastItemName:String {
        items.last?.name ?? "Nil!"
    }
    
    var lastItemID:Int {
        items.last?.id ?? -1
    }
    
    func group(_ groupID:Int) -> GroupItem! {
        return group.group.first { (item) -> Bool in
            item.id == groupID
        }
    }
    
    func add(groupID:Int, category:Category = .cans, quantity:Int = 1, comments:String = "") {
        guard let addedItem:GroupItem = group(groupID) else {
            print("Item #\(groupID) not found")
            return
        }
        let itemorder = ListItem(id: newId(), groupId: 1, userId: 1, name: addedItem.name, qty: quantity, category: category, DateEntered: Date(), comments: comments, status: .open)
        items += [itemorder]
    }
}
