//
//  InfoListItem.swift
//  Demo
//
//  Created by Daniel Saidi on 2022-02-12.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This list item can be used to show any kind of informatoin.
 */
struct InfoListItem: View {
    
    let title: String
    let text: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title).font(.footnote)
            Text(text)
        }
        .lineLimit(1)
        .padding(.vertical, 5)
    }
}
