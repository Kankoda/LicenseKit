//
//  DemoPackage.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

/**
 This is the central class in the demo library. It's used to
 set up the library with a customer license key that unlocks
 protected features in the library.

 This class uses LicenseKit to create a `LicenseEngine` that
 is then used to register the provided customer license key.
 */
public final class DemoPackage {

    // This engine is created in the setup function.
    static var engine: LicenseEngine!

    // This license is registered in the setup function.
    static var customerLicense: License!
    
    /**
     This function should be called by apps and libraries to
     set up this package with a customer license.
     */
    public static func setup(
        withLicenseKey key: String,
        method: LicenseRegistrationMethod
    ) async throws -> License {
        
        // This key grants this library access to LicenseKit
        let licenseKitLicenseKey = "299B33C6-061C-4285-8189-90525BCAF098"
        
        // Try to setup a locale license engine with the key
        let engine = try LicenseEngine(licenseKey: licenseKitLicenseKey) { license in
            try licenseRegistrationService(for: license, method: method)
        }
        
        // Try to validate provided license key
        let license = try await engine.registerLicenseKey(key)
        
        // Set the private engine and license for later use
        Self.engine = engine
        Self.customerLicense = license
        
        // Return the customer license to the user
        return license
    }
    
    /**
     This function is used by the library's various features
     to validate that a valid license key is registered.
     */
    public static func validateCustomerLicense() throws {
        guard let license = customerLicense else { throw LicenseError.missingLicense }
        try license.validate()
    }
}

private extension DemoPackage {

    /**
     Create a license registration service with the provided
     customer license and registration method.
     */
    static func licenseRegistrationService(
        for license: License,
        method: LicenseRegistrationMethod
    ) throws -> LicenseRegistrationService {
        switch method {
        case .csvFile:
            return try CsvLicenseRegistrationService.demoService(for: license)
        case .local:
            return try LocalLicenseRegistrationService.demoService(for: license)
        case .remote:
            return try RemoteLicenseRegistrationService<FakeNetworkResponse>.demoService(for: license)
        }
    }
}
