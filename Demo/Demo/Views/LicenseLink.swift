//
//  LicenseLink.swift
//  Demo
//
//  Created by Daniel Saidi on 2022-02-12.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import LicenseKit
import SwiftUI

struct LicenseLink: View {
    
    let license: License
    
    var body: some View {
        NavigationLink {
            LicenseScreen(license: license)
        } label: {
            Label {
                Text("License information")
            } icon: {
                Image(systemName: "info.circle")
            }
        }
    }
}
