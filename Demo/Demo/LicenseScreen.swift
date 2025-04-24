//
//  LicenseScreen.swift
//  Demo
//
//  Created by Daniel Saidi on 2022-02-12.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import LicenseKit
import SwiftUI

/// This screen is used to display licenses for the demo app.
struct LicenseScreen: View {
    
    let license: License
    
    var body: some View {
        List {
            Section(header: Text("License")) {
                InfoListItem(title: "License key", text: license.licenseKey)
                InfoListItem(title: "License tier", text: "\(license.tier.name) (level \(license.tier.level))")
                InfoListItem(title: "Expiration date", text: license.expirationDate?.formatted(date: .long, time: .shortened) ?? "-")
                InfoListItem(title: "Platforms", text: license.platforms.map { $0.id }.joined(separator: ", "))
                InfoListItem(title: "Bundle IDs", text: bundleIdsText)
                InfoListItem(title: "Registration method", text: license.additionalInfo["registration-method"] ?? "")
            }
            Section(header: Text("Customer")) {
                InfoListItem(title: "Name", text: license.customer?.name ?? "-")
                InfoListItem(title: "Contact", text: license.customer?.contact ?? "-")
                InfoListItem(title: "Address", text: license.customer?.address ?? "-")
                InfoListItem(title: "Email", text: license.customer?.email ?? "-")
                InfoListItem(title: "Phone", text: license.customer?.phone ?? "-")
                InfoListItem(title: "Website", text: license.customer?.website ?? "-")
            }
        }
        .font(.callout)
        .navigationTitle("License information")
    }
}

private extension LicenseScreen {
    
    var bundleIdsText: String {
        license.bundleIds.isEmpty ? "-" : license.bundleIds.joined(separator: ", ")
    }
}
