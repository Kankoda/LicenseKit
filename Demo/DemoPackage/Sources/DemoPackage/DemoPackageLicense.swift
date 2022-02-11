//
//  DemoPackageLicense.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

/**
 This class is used to let any apps and other libraries that
 have a license for this package, register their license key.
 
 This class will setup the package's LicenseKit license when
 the register function is called.
 */
public final class DemoPackageLicense {
    
    /// Keep the application instance private at all times!
    private static var engine: LicenseEngine!
    
    /**
     This function should be used by apps and libraries that
     use this package, to register their license keys before
     they start using the library.
     */
    public static func registerLicenseKey(_ key: String) async throws -> License {
        
        // This demo license key is specified in LicenseKit
        let demoAppLicenseKey = "299B33C6-061C-4285-8189-90525BCAF098"
        
        // Try to setup a locale license engine with the key
        let engine = try LicenseEngine(
            licenseKey: demoAppLicenseKey,
            type: .local(licenses: [.demoLicense]))
        
        // Try to validate the demo-specific license key
        let license = try await engine.registerLicenseKey(key)
        
        // Set an application instance that we can use later
        self.engine = engine
        
        // Return the license
        return license
    }
    
    /**
     This function is used by the library's various features
     to validate that a valid license key is registered.
     */
    public static func validate() throws {
        guard let license = engine?.license else { throw LicenseError.missingLicense }
        try license.validate()
    }
}
