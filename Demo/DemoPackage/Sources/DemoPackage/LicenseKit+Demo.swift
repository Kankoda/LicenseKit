//
//  LicenseKit+Demo.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022-2025 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

extension License {

    /// The currently registered license, if any.
    static var current: License? { LicenseStore.demo.license }
}

extension LicenseStore {

    // This license store is used to store a current license.
    static let demo = LicenseStore()
}

extension License {
    
    /// This license can be used by the demo app, to make it
    /// possible to use license-protected package features.
    static func packageLicense(method: String) -> License {
        License(
            licenseKey: DemoPackage.packageLicenseKey,
            customer: .packageLicenseCustomer,
            expirationDate: Date().addingTimeInterval(3600),
            allowsExpiration: false,
            bundleIds: ["com.licensekit.demo"],
            platforms: .all,
            additionalInfo: ["registration-method": method]
        )
    }
}

extension LicenseCustomer {

    /// This license customer is added to the demo license.
    static let packageLicenseCustomer = Self(
        name: "Kankoda",
        contact: "Daniel Saidi",
        address: "Stockholm, Sweden",
        email: "daniel.saidi@gmail.com",
        website: "https://kankoda.com"
    )
}
