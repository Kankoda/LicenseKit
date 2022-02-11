//
//  DemoLicenseContext.swift
//  Demo
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import SwiftUI
import LicenseKit

/**
 This class is used to handle the licenses of the demo app.
 */
class DemoLicenseContext: ObservableObject {
    
    init() {}
    
    @Published
    var appLicense: License?
    
    @Published
    var appLicenseError: LicenseError?
    
    @Published
    var demoPackageLicense: License?
    
    @Published
    var demoPackageLicenseError: LicenseError?
    
    /**
     This app-specific license engine is used by the app, to
     let users register an app license.
     */
    var licenseEngine: LicenseEngine?
}
