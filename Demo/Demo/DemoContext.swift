//
//  DemoContext.swift
//  Demo
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import SwiftUI
import LicenseKit

/// This observable class is used to manage observable state
/// for the app.
///
/// The `packageLicense` is registered when the app launches,
/// and is used by the app to access features in the package.
///
/// The `appLicense` is registered when a user taps a button,
/// and is used to let a user access features within the app.
class DemoContext: ObservableObject {
    
    init() {}

    @Published var packageLicense: License?
    @Published var packageLicenseError: License.ValidationError?

    @Published var appLicense: License?
    @Published var appLicenseError: License.ValidationError?
}

extension DemoContext {

    var hasAppLicense: Bool { appLicense != nil }
    var hasPackageLicense: Bool { packageLicense != nil }
}
