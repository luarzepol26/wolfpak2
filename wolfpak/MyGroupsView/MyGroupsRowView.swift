//
//  MyGroupsRowView.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/22/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import SwiftUI

struct MyGroupsRowView: View {
    var body: some View {
        VStack {
            Group {
                HStack {
                    Text("Family")
                    Spacer()
                }
                Divider().background(Color.black)
                HStack(alignment: .top, spacing: 5) {
                    Text("03/20/2020: ")
                    Spacer()
                    Text("6 found")
                    Spacer()
                    Text("80 needed")
                }
            }
        }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2.0)
        )
    }
}

struct MyGroupsRowView_Previews: PreviewProvider {
    static var previews: some View {
        MyGroupsRowView()
    }
}
