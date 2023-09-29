//
//  ApiLicenseService+Demo.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-10-27.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

extension ApiLicenseService {

    /**
     This service uses a fake network service that returns a
     demo license that is defined in `Licenses/License+Demo`.
     */
    static func demoService(for license: License) throws -> ApiLicenseService<ResponseType> {
        try ApiLicenseService<ResponseType>(
            license: license,
            configuration: .init(
                url: { licenseKey in "https://not-used" },
                httpMethod: { licenseKey in "GET" },
                httpHeaders: { licenseKey in ["not": "used"] }
            ),
            licenseMapping: { _ in
                .demoLicense(method: "remote")
            }
        )
    }
}

struct FakeNetworkResponse: Codable {

    var license: License { .demoLicense(method: "remote") }
}
