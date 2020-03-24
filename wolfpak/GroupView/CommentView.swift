//
//  CommentView.swift
//  wolfpak
//
//  Created by Raul Lopez on 3/22/20.
//  Copyright © 2020 Raul Lopez. All rights reserved.
//

import SwiftUI

struct CommentView: View {
    var name: String
    var body: some View {
        Text(name)
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(name: "Test")
    }
}
