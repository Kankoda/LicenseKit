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
    private var appLicenseKey = "4B142177-214B-447F-9E57-8E906DE6FCFC"
    
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
        Group {
            Section(header: Text("App License"), footer: Text("This license is defined in the app. Register it to unlock the app.")) {
                appLicenseKeyTextField
                StatusListItem(status: hasAppLicense, title: "Has valid app license")
                if let license = context.appLicense {
                    LicenseLink(license: license)
                }
            }

            Section(footer: text(for: context.appLicenseError)) {
                appLicenseRegisterButton
            }
        }
    }
    
    var packageLicenseSection: some View {
        Section(header: Text("Demo Package License"), footer: Text("This license is defined in the demo library. The app registers it as it launches.")) {
            StatusListItem(status: hasDemoPackageLicense, title: "Has valid package license")
            StatusListItem(status: hasDemoPackageFeature, title: "Can access package feature")
            if let license = context.demoPackageLicense {
                LicenseLink(license: license)
            }
            text(for: context.demoPackageLicenseError)
        }
    }
}

private extension HomeScreen {
    
    var appLicenseRegisterButton: some View {
        Button(action: registerAppLicenseKey) {
            Text("Register app license key")
                .frame(maxWidth: .infinity)
        }
        .controlSize(.large)
        .buttonStyle(.borderedProminent)
        .listRowInsets(EdgeInsets())
        .listRowBackground(Color.clear)
    }
    
    var appLicenseKeyTextField: some View {
        TextField("Enter app license key", text: $appLicenseKey)
    }

    @ViewBuilder
    func text(for error: License.ValidationError?) -> some View {
        if let error = error {
            Text("ERROR: \(error.displayName)")
                .frame(maxWidth: .infinity)
                .padding()
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
    
    func registerAppLicenseKey() {
        Task {
            do {
                context.appLicense = nil
                context.appLicenseError = nil
                let license = try await context.licenseEngine?
                    .getLicense(withKey: appLicenseKey)
                updateContext(with: license)
            } catch {
                updateContext(with: error as? License.ValidationError)
            }
        }
    }
}

@MainActor
private extension HomeScreen {
    
    func updateContext(with license: License?) {
        context.appLicense = license
    }
    
    func updateContext(with error: License.ValidationError?) {
        context.appLicenseError = error
    }
}
