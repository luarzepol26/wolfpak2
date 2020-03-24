//
//  GroupView.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/22/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import SwiftUI

struct GroupView: View {
        var body: some View {
            VStack {
                List(0..<15) { item in
                    GroupRowView()
                }
                Spacer()
            }
        }
    }


struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
