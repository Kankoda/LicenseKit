//
//  DemoPackage.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022-2025 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

/// This is the central class within the demo library. It is
/// used to set up the library with any customer license key
/// that unlocks protected features in the library.
public final class DemoPackage {

    /// This function must be called by the demo app, to set
    /// up the library and unlock its features.
    public static func setup(
        withLicenseKey customerLicenseKey: String,
        source: License.Source
    ) async throws -> License {

        // Try to create a license engine with a license key
        // and a license store, using a source-based service.
        let licenseEngine = try await LicenseEngine(
            licenseKey: DemoPackage.productLicenseKey,
            licenseStore: LicenseStore.demo
        ) { _ in
            licenseService(for: source)
        }
        
        // Try to get a license for the provided license key.
        let license = try await licenseEngine.getLicense(
            withKey: customerLicenseKey
        )

        // Return the customer license. This license is also
        // auto-stored in the license store by the engine.
        return license
    }
}

extension DemoPackage {

    // This is an app-specific license key that's defined in
    // the demo package and can only be used by the demo app,
    // to unlock features in the package.
    static let packageLicenseKey = "6A34BED3-5A7F-44B9-A3C6-3415463C4D0B"

    // This is a product-specific license key that's defined
    // in LicenseKit and can be used by both the package and
    // the app to unlock features in LicenseKit.
    static let productLicenseKey = "299B33C6-061C-4285-8189-90525BCAF098"
}

private extension DemoPackage {

    /// Create a license service for the provided source.
    static func licenseService(
        for source: License.Source
    ) -> LicenseServiceType {
        switch source {

        /// Binary licenses are defined in `License+Demo`.
        case .binary:
            return .binary(
                licenses: [.packageLicense(method: "local")]
            )

        /// CSV licenses are set in `Resources/licenses.txt`.
        case .file:
            return .csvFile(
                fileName: "licenses",
                fileExtension: "txt",
                bundle: .demoPackage,
                licenseMapping: { row in
                    License(
                        licenseKey: row[0],
                        customer: .init(name: row[1]),
                        additionalInfo: ["registration-method": "csv"]
                    )
                }
            )
        default:
            fatalError("Unhandled source")
        }
    }
}
