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
            /// Try to resolve a demo package feature, which
            /// requires that the app has a valid license.
            packageFeature = try DemoPackageFeature()
        } catch {
            packageFeature = nil
            print("The package feature threw an error: \(error).")
        }
    }
    
    private let packageFeature: DemoPackageFeature?
    
    @State
    private var appLicenseKey = DemoApp.appLicenseKey

    @EnvironmentObject
    private var context: DemoContext

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
    
    var packageLicenseSection: some View {
        Section(header: Text("Demo Package License"), footer: Text("This license is defined in the demo package. The app registers it on launch.")) {
            StatusListItem(status: context.hasPackageLicense, title: "Has valid package license")
            StatusListItem(status: packageFeature != nil, title: "Can access package feature")
            if let license = context.packageLicense {
                LicenseLink(license: license)
            }
            text(for: context.packageLicenseError)
        }
    }

    var appLicenseSection: some View {
        Group {
            Section(header: Text("App License"), footer: Text("This license is defined in the app. Register it by tapping the button below.")) {
                TextField("Enter app license key", text: $appLicenseKey)
                StatusListItem(status: context.hasAppLicense, title: "Has valid app license")
                if let license = context.appLicense {
                    LicenseLink(license: license)
                }
            }

            Section(footer: text(for: context.appLicenseError)) {
                appLicenseRegisterButton
            }
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

    func registerAppLicenseKey() {
        Task {
            do {
                context.appLicense = nil
                context.appLicenseError = nil
                let license = try await LicenseEngine.getAppLicense(withLicenseKey: appLicenseKey)
                context.appLicense = license
            } catch {
                context.appLicenseError = error as? License.ValidationError
            }
        }
    }
}
