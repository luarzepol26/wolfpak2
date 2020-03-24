//
//  GroupRowView.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/22/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import SwiftUI

struct GroupRowView: View {
        var body: some View {
            VStack {
                HStack(alignment: .top, spacing: 5) {
                    Text("Eggs(dozen)")
                    Spacer()
                    Text("Category: Dairy")
                    Spacer()
                    Text("Qty: 2")
                    Spacer()
                }
                HStack {

                    Text("For: Raul")
                    Spacer()
                    Text("Entered: 03/18/2020")
                }
            }
        }
    }

struct GroupRowView_Previews: PreviewProvider {
    static var previews: some View {
        GroupRowView()
    }
}
