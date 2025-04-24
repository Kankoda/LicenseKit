//
//  Bundle+DemoPackage.swift
//  DemoPackage
//
//  Created by Daniel Saidi on 2022-08-21.
//  Copyright © 2022-2025 Daniel Saidi. All rights reserved.
//

import Foundation

extension Bundle {

    /// The name of the package bundle. This may change in a
    /// future Xcode update.
    ///
    /// If the Xcode name convention changes, just print the
    /// new path and look for the bundle name in the text:
    ///
    /// ```
    /// Bundle(for: BundleFinder.self).resourceURL?.deletingLastPathComponent().deletingLastPathComponent()
    /// ```
    static let demoPackageBundleName = "DemoPackage_DemoPackage"

    /**
     This bundle lets us use resources from DemoPackage.

     Hopefully, Apple will fix this bundle bug to remove the
     need for this workaround.

     Inspiration from here:
     https://developer.apple.com/forums/thread/664295
     https://dev.jeremygale.com/swiftui-how-to-use-custom-fonts-and-images-in-a-swift-package-cl0k9bv52013h6bnvhw76alid
     */
    public static let demoPackage: Bundle = {
        let candidates = [
            // Bundle should be present here when the package is linked into an App.
            Bundle.main.resourceURL,
            // Bundle should be present here when the package is linked into a framework.
            Bundle(for: BundleFinder.self).resourceURL,
            // For command-line tools.
            Bundle.main.bundleURL,
            // Bundle should be present here when running previews from a different package
            // (this is the path to "…/Debug-iphonesimulator/").
            Bundle(for: BundleFinder.self)
                .resourceURL?
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent(),
            Bundle(for: BundleFinder.self)
                .resourceURL?
                .deletingLastPathComponent()
                .deletingLastPathComponent()
        ]

        for candidate in candidates {
            let bundlePath = candidate?.appendingPathComponent(demoPackageBundleName + ".bundle")
            if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        fatalError("Can't find custom bundle. See Bundle+DemoPackage.swift")
    }()
}

private extension Bundle {

    class BundleFinder {}
}
