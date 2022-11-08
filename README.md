<p align="center">
    <img src ="Resources/Logo.png" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/LicenseKit/LicenseKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/cocoapods/p/LicenseKit.svg?style=flat" alt="Platform" />
    <img src="https://img.shields.io/badge/Swift-5.6-orange.svg" alt="Swift 5.6" />
    <img src="https://img.shields.io/github/license/KeyboardKit/KeyboardKit" alt="Closed-Source License" />
    <a href="https://twitter.com/danielsaidi">
        <img src="https://img.shields.io/badge/contact-@danielsaidi-blue.svg?style=flat" alt="Twitter: @danielsaidi" />
    </a>
</p>


## About LicenseKit

LicenseKit helps you protect your Swift-based apps and libraries with a commercial license.

LicenseKit lets you specify your licenses in code, files or fetch them from an external api. Licenses can specify expiration date, supported platforms (iOS, macOS, tvOS, watchOS), bundle IDs, tier, features etc.

LicenseKit requires a commercial license to be used. You can obtain a license from the [LicenseKit website][Website] or use `FREE` as license key to use the library with a capped number of licenses. 



## Supported Platforms

LicenseKit supports `iOS 13`, `macOS 12`, `tvOS 13` and `watchOS 6`.

This means that you can use LicenseKit to protect your software on all major Apple platforms.



## Installation

LicenseKit can be installed with the Swift Package Manager:

```
https://github.com/LicenseKit/LicenseKit.git
```

LicenseKit only has to be added to the main app target. If you are using LicenseKit with a library, make sure to set up SPM so that your users get both your library and LicenseKit.



## Getting started

The online documentation has a [getting-started guide][Getting-Started] that will help you get started with LicenseKit.

Basically, you first create a `LicenseEngine` with your(!) LicenceKit license key:

```swift
let engine = try LicenseEngine(licenseKey: "...") { license in
    LocalLicenseRegistrationService(
        license: license,
        licenses: [
            License(licenseKey: "license-key-1"),
            License(licenseKey: "license-key-2")
        ]
    )
}
```

If the license key is valid, the license engine will be created with the service you define in the service builder.

Once you have a license engine, you can use it to register license keys that you can sell or provide to your app and library users:

```swift
let license = try await engine.registerLicenseKey("...")
```

Licenses can specify expiration date, supported platforms (iOS, macOS, tvOS, watchOS), bundle IDs, tier, features etc.



## Free license

There's a FREE license that you can use to try out LicenseKit with a capped number of licenses.

To use LicenseKit with the FREE license, just use `FREE` as license key when creating a license engine instance:

```
let engine = try LicenseEngine(licenseKey: "FREE") { license in
    ...
}
```

The FREE tier is capped to `10` licenses, using a `LocalLicenseRegistrationService` or `CsvLicenseRegistrationService`.  



## Documentation

The [online documentation][Documentation] has articles, code examples etc. that let you overview the various parts of the library.

The online documentation is currently iOS-specific. To generate documentation for other platforms, open the package in Xcode, select a simulator then run `Product/Build Documentation`.



## Demo app

This project has a demo app that lets you explore the library. To try it out, just open and run `Demo/Demo.xcodeproj`.



## Contact

Feel free to reach out if you have any questions or need help any way:

* E-mail: [daniel.saidi@gmail.com][Email]
* Twitter: [@danielsaidi][Twitter]
* Website: [getlicensekit.com][Website]



## License

LicenseKit is closed source. See the [LICENSE][License] file for more info.



[Email]: mailto:daniel.saidi@gmail.com
[Twitter]: http://www.twitter.com/danielsaidi
[Website]: https://getlicensekit.com
[Licenses]: https://getlicensekit.com/licenses

[Documentation]: https://licensekit.github.io/LicenseKit/documentation/licensekit/
[Getting-Started]: https://licensekit.github.io/LicenseKit/documentation/licensekit/getting-started
[License]: https://github.com/LicenseKit/LicenseKit/blob/main/LICENSE
