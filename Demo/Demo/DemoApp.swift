//
//  DemoApp.swift
//  Demo
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import SwiftUI
import DemoPackage
import LicenseKit

@main
struct DemoApp: App {

    @StateObject
    private var context = DemoContext()

    // This sets how the DemoPackage should get app licenses.
    private let packageLicenseSource = License.Source.binary

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environmentObject(context)
                .task(setupDemoPackage)
        }
    }
}

extension DemoApp {

    // This is an app-specific license key that's defined by
    // the app itself, that can be used by the demo app user
    // to unlock features in the app.
    static let appLicenseKey = "4B142177-214B-447F-9E57-8E906DE6FCFC"

    // This is an app-specific license key that's defined in
    // the demo package and can only be used by the demo app,
    // to unlock features in the package.
    static let packageLicenseKey = "6A34BED3-5A7F-44B9-A3C6-3415463C4D0B"

    // This is a product-specific license key that's defined
    // in LicenseKit and can be used by both the package and
    // the app to unlock features in LicenseKit.
    static let productLicenseKey = "299B33C6-061C-4285-8189-90525BCAF098"
}

private extension DemoApp {

    /// Try to set up the DemoPackage with a license key, so
    /// that this app can use features from the package.
    func setupDemoPackage() async {
        do {
            let license = try await DemoPackage.setup(
                withLicenseKey: DemoApp.packageLicenseKey,
                source: packageLicenseSource
            )
            context.packageLicense = license
        } catch {
            context.packageLicenseError = error as? License.ValidationError
        }
    }
}
