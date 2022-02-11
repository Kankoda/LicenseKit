//
//  StatusListItem.swift
//  Demo
//
//  Created by Daniel Saidi on 2022-02-12.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This list item can be used to show a bool status in lists.
 */
struct StatusListItem: View {
    
    let status: Bool
    let title: String
    
    var body: some View {
        HStack {
            Label {
                Text(title)
            } icon: {
                Circle()
                    .padding(6)
                    .foregroundColor(status ? .green : .red)
            }
            Spacer()
            Text(status ? "Yes" : "No")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
    }
}
