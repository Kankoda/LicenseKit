//
//  DemoPackageFeature.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022-2025 Daniel Saidi. All rights reserved.
//

import Foundation
import LicenseKit

/// This class represents a license protected feature, which
/// requires that the app has a valid license.
public class DemoPackageFeature {
    
    /// Create an instance of the demo feature.
    ///
    /// This initializer validates that this app has a valid
    /// license. If not, the initializer will throw an error.
    public init() throws {
        try License.validate(.current)
    }
}
