//
//  DemoApp.swift
//  Demo
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import SwiftUI
import DemoPackage
import LicenseKit

@main
struct DemoApp: App {

    @StateObject
    private var context = DemoLicenseContext()
    
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environmentObject(context)
                .onAppear(perform: tryRegisterDemoPackageLicense)
                .onAppear(perform: setupAppLicense)
        }
    }
}

private extension DemoApp {
    
    /**
     Try to register a DemoPackage license, so that this app
     can use features from DemoPackage.
     */
    func tryRegisterDemoPackageLicense() {
        
        // This key would have been provided to the app team
        // by the package creator as the license was created.
        let key = "6A34BED3-5A7F-44B9-A3C6-3415463C4D0B"
        
        Task {
            do {
                // If this license validation succeeds, we get a
                // license back, that we then present in the app.
                let license = try await DemoPackageLicense.registerLicenseKey(key)
                updateContext(with: license)
            } catch {
                // If we arrive here (try replacing the key with
                // an invalid one, change the bundle id etc.) we
                // failed to register a package license and will
                // get an error that describes what went wrong.
                updateContext(with: error as? LicenseError)
            }
        }
    }
    
    /**
     Setup application-specific licenses, which the user can
     register in the app, using a license key.
     
     This key would have been provided to the app developers
     by LicenseKit as the app LicenseKit license was created.
     For now, this demo app uses the same license key as the
     demo package.
     */
    func setupAppLicense() {
        
        // This key would have been provided to the app team
        // by LicenseKit as the license was created.
        let key = "299B33C6-061C-4285-8189-90525BCAF098"
        
        // Create an app-specific license. If you would have
        // an app that used LicenseKit, it should create its
        // licenses in the same way.
        let appLicense = License(
            licenseKey: "4B142177-214B-447F-9E57-8E906DE6FCFC",
            customer: LicenseCustomer(name: "Demo app user"),
            expirationDate: Date().addingTimeInterval(3600),
            isExpirationFatal: true,
            platforms: [.iOS])
        
        // Create the app-specific license application, then
        // add app-specific licenses to it.
        let engine = try? LicenseEngine(licenseKey: key, type: .local(licenses: [appLicense]))
        context.licenseEngine = engine
    }
}

@MainActor
private extension DemoApp {
    
    func updateContext(with license: License) {
        context.demoPackageLicense = license
    }
    
    func updateContext(with error: LicenseError?) {
        context.demoPackageLicenseError = error
    }
}
