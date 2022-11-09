//
//  License+Demo.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

/**
 This extension has a license that can be used by other apps
 or libraries that want to use DemoPackage.

 Think of this as a way to set up a local license collection
 for your library. Local licenses have many benefits, but it
 requires new versions to be released to update the licenses,
 which may not always be ideal.

 The library also defines more licenses in a `licenses` file,
 which is another option for managing many licenses that can
 change often, e.g. if you get daily license files from your
 license service provider. This lets you update all licenses
 by replacing a single file.
 */
extension License {
    
    /// This license can only be used by the demo app.
    static func demoLicense(method: String) -> License {
        License(
            licenseKey: "6A34BED3-5A7F-44B9-A3C6-3415463C4D0B",
            customer: .demoCustomer,
            expirationDate: Date().addingTimeInterval(3600),
            allowsExpiration: false,
            platforms: .all,
            bundleIds: ["com.licensekit.demo"],
            additionalInfo: ["registration-method" : method]
        )
    }
}

extension LicenseCustomer {

    /// This customer could be bound to several licenses.
    static let demoCustomer = LicenseCustomer(
        name: "Kankoda",
        contact: "Daniel Saidi",
        address: "Stockholm, Sweden",
        email: "daniel.saidi@gmail.com",
        website: "https://getlicensekit.com")
}
