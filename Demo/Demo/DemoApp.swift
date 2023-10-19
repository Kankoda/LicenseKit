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
    private var context = DemoLicenseContext()

    // The app's license key is specified within LicenseKit.
    private let appLicenseKey = "299B33C6-061C-4285-8189-90525BCAF098"

    // Use this to set how the demo package should register licenses.
    private let packageLicenseSource = License.Source.binary

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environmentObject(context)
                .onAppear(perform: tryRegisterDemoPackageLicense)
                .task(tryRegisterAppLicense)
        }
    }
}

private extension DemoApp {
    
    /**
     Try to register a DemoPackage license, so that this app
     can use features from DemoPackage.

     This license key would have been provided as this app's
     company or developer signed up for a LicenseKit license.

     If the package setup succeeds, we get a license that we
     present in the app, to verify that we have successfully
     registered a license. Never show your license like this
     in a real app or library!

     If the package setup fails, the setup function throws a
     license error that we update the context with.
     */
    func tryRegisterDemoPackageLicense() {
        let key = "6A34BED3-5A7F-44B9-A3C6-3415463C4D0B"
        Task {
            do {
                let license = try await DemoPackage.setup(
                    withLicenseKey: key,
                    source: packageLicenseSource)
                updateContext(with: license)
            } catch {
                updateContext(with: error as? LicenseError)
            }
        }
    }
    
    /**
     Try to register an app-specific license engine, using a
     LicenseKit license that is only valid for this app.

     This license key would have been provided as this app's
     company or developer signed up for a LicenseKit license.

     This function tries to use this license key to create a
     license engine, that for now only contains a hard-coded
     license. This license key can be used within the app to
     register a user license, which in a real world scenario
     would have been provided to users as they signed up for
     an app license.
     */
    @Sendable
    func tryRegisterAppLicense() async {
        context.licenseEngine = try? await LicenseEngine(licenseKey: appLicenseKey) {
            .binary(
                licenses: [
                    .init(
                        licenseKey: "4B142177-214B-447F-9E57-8E906DE6FCFC",
                        customer: .init(name: "Demo app user"),
                        tier: .gold,
                        expirationDate: Date().addingTimeInterval(3600),
                        allowsExpiration: false,
                        platforms: [.iOS],
                        additionalInfo: [
                            "source" : packageLicenseSource.id
                        ]
                    )
                ]
            )
        }
    }
}

@MainActor
private extension DemoApp {
    
    func updateContext(with license: License) {
        context.demoPackageLicense = license
    }
    
    func updateContext(with error: LicenseError?) {
        context.demoPackageLicenseError = error
    }
}
