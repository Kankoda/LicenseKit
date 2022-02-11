//
//  DemoPackageFeature.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import Foundation

/**
 This class represents a license-protected package feature.
 
 Whenever you try to create an instance of this feature from
 the demo app, the initializer will check that a license has
 been properly registered. If not, the initializer will fail.
 */
public class DemoPackageFeature {
    
    /**
     Create a feature instance.
     */
    public init() throws {
        try DemoPackageLicense.validate()
        self.isValidLicenseRegistered = true
    }
    
    /**
     The only thing that this feature does is to have a bool
     that tells if a valid license has been registered. This
     is however required to be able to create an instance of
     this class, so it's just for extra clarification.
     */
    public let isValidLicenseRegistered: Bool
}
