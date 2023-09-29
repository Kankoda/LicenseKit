//
//  BinaryLicenseService+Demo.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-10-27.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import LicenseKit

extension BinaryLicenseService {

    /**
     This service uses customer licenses that are defined in
     `Licenses/License+Demo`.
     */
    static func demoService(for license: License) throws -> BinaryLicenseService {
        try .init(
            license: license,
            customerLicenses: [.demoLicense(method: "local")]
        )
    }
}
