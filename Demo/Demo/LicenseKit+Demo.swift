//
//  LicenseKit+Demo.swift
//  Demo
//
//  Created by Daniel Saidi on 2025-04-24.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
//

import LicenseKit

extension LicenseEngine {

    /// Try to get an app-specific license for a license key
    /// that is defined within LicenseKit, and that can only
    /// be used by the demo app and the demo package.
    static func getAppLicense(
        withLicenseKey licenseKey: String
    ) async throws -> License {
        let engine = try await createAppSpecificEngine()
        let license = try await engine.getLicense(withKey: licenseKey)
        return license
    }

    /// Try to create an app-specific license engine.
    ///
    /// The reason for adding the `sending` keyword, is that
    /// it makes it possible to use the function from within
    /// a SwiftUI view.
    static func createAppSpecificEngine() async throws -> sending LicenseEngine {
        let licenseKey = await DemoApp.appLicenseKey
        return try await LicenseEngine(licenseKey: DemoApp.productLicenseKey) {
            .binary(licenses: [
                .init(
                    licenseKey: licenseKey,
                    customer: .init(name: "Demo app user"),
                    tier: .gold,
                    expirationDate: Date().addingTimeInterval(3600),
                    allowsExpiration: false,
                    platforms: [.iOS],
                    additionalInfo: ["source" : License.Source.binary.id]
                )
            ])
        }
    }
}
