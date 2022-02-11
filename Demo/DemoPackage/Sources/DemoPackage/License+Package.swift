//
//  License+Package.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

extension License {
    
    // This license will be used by the demo app
    static let demoLicense = License(
        licenseKey: "6A34BED3-5A7F-44B9-A3C6-3415463C4D0B",
        customer: LicenseCustomer(
            name: "LicenseKit Demo",
            contact: "Daniel Saidi",
            address: "Sweden",
            email: "daniel.saidi@gmail.com",
            phone: nil,
            website: "http://danielsaidi.com"),
        expirationDate: Date().addingTimeInterval(3600),
        isExpirationFatal: true,
        platforms: LicensePlatform.allCases,
        bundleIds: ["com.licensekit.demo"])
}
