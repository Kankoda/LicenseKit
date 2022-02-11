//
//  HomeScreen.swift
//  Demo
//
//  Created by Daniel Saidi on 2022-02-11.
//  Copyright © 2022 Daniel Saidi. All rights reserved.
//

import SwiftUI
import DemoPackage
import LicenseKit

struct HomeScreen: View {
    
    init() {
        do {
            demoPackageFeature = try DemoPackageFeature()
        } catch {
            demoPackageFeature = nil
            print("The license protected feature could not be created due to a license error: \(error).")
        }
    }
    
    /**
     This license-protected feature can only be created when
     the app has successfully registered a license that lets
     it use the DemoPackage library.
     */
    private let demoPackageFeature: DemoPackageFeature?
    
    @State
    private var appLicenseKey = ""
    
    @EnvironmentObject
    private var context: DemoLicenseContext
    
    
    var body: some View {
        NavigationView {
            List {
                packageLicenseSection
                appLicenseSection
            }
            .font(.callout)
            .navigationTitle("LicenseKit demo")
        }
    }
}

private extension HomeScreen {
    
    var appLicenseSection: some View {
        Section(header: Text("App License"), footer: Text("This license is defined by the demo app. You can register a license key to unlock this app.")) {
            StatusListItem(status: hasAppLicense, title: "Has valid app license")
            if let license = context.appLicense {
                LicenseLink(license: license)
            }
            appLicenseKeyTextField
            appLicenseKeyCopyButton
            if let error = context.appLicenseError {
                Text("Error: \(error.localizedDescription)")
            }
        }
    }
    
    var packageLicenseSection: some View {
        Section(header: Text("Demo Package License"), footer: Text("This license is defined by the demo package. The license key is registered by the app as it launches.")) {
            StatusListItem(status: hasDemoPackageLicense, title: "Has valid package license")
            StatusListItem(status: hasDemoPackageFeature, title: "Could create license feature")
            if let license = context.demoPackageLicense {
                LicenseLink(license: license)
            }
            if let error = context.demoPackageLicenseError {
                Text("Error: \(error.localizedDescription)")
            }
        }
    }
}

private extension HomeScreen {
    
    var appLicenseKeyCopyButton: some View {
        Button(action: copyAppLicenseKey) {
            Label {
                Text("Copy app license key to text field")
            } icon: {
                Image(systemName: "doc.on.clipboard")
            }
        }.buttonStyle(.plain)
    }
    
    var appLicenseKeyTextField: some View {
        HStack {
            TextField("Enter app license key", text: $appLicenseKey)
            Button(action: registerAppLicenseKey) {
                Text("Register")
            }
        }
    }
}

private extension HomeScreen {
    
    var hasAppLicense: Bool {
        context.appLicense != nil
    }

    var hasDemoPackageFeature: Bool {
        demoPackageFeature != nil
    }
    
    var hasDemoPackageLicense: Bool {
        context.demoPackageLicense != nil
    }
}

private extension HomeScreen {
    
    func copyAppLicenseKey() {
        appLicenseKey = "4B142177-214B-447F-9E57-8E906DE6FCFC"
    }
    
    func registerAppLicenseKey() {
        Task {
            do {
                context.appLicense = nil
                context.appLicenseError = nil
                let license = try await context.licenseEngine?.registerLicenseKey(appLicenseKey)
                updateContext(with: license)
            } catch {
                updateContext(with: error as? LicenseError)
            }
        }
    }
}

@MainActor
private extension HomeScreen {
    
    func updateContext(with license: License?) {
        context.appLicense = license
    }
    
    func updateContext(with error: LicenseError?) {
        context.appLicenseError = error
    }
}
