//
//  CsvLicenseRegistrationService+Demo.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-10-27.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

extension CsvLicenseRegistrationService {

    /**
     This service uses customer licenses that are defined in
     `Resources/licenses.txt`.
     */
    static func demoService(for license: License) throws -> CsvLicenseRegistrationService {
        try CsvLicenseRegistrationService(
            license: license,
            fileName: "licenses",
            fileExtension: "txt",
            bundle: .demoPackage,
            licenseBuilder: { rows in
                rows.map { row in
                    License(
                        licenseKey: row[0],
                        customer: LicenseCustomer(name: row[1]),
                        additionalInfo: ["registration-method": LicenseRegistrationMethod.csvFile.rawValue]
                    )
                }
            }
        )
    }
}
