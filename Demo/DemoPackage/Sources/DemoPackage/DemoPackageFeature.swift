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
     Create an instance of the demo feature.
     */
    public init() throws {
        try DemoPackage.validateCustomerLicense()
    }
}
