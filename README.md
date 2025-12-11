<p align="center">
    <img src="Resources/Icon.png" alt="Project Icon" width="250" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/LicenseKit/LicenseKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/Swift-6.0-orange.svg" alt="Swift 6.0" />
    <a href="https://kankoda.github.io/LicenseKit"><img src="https://img.shields.io/badge/documentation-web-blue.svg" alt="Documentation" /></a>
    <a href="https://kankoda.com/licensekit"><img src="https://img.shields.io/badge/license-commercial-yellow.svg" alt="Pricing" /></a>
</p>



# LicenseKit

LicenseKit is a Swift library that lets you protect your apps and SDKs with commercial licenses on major Apple platforms (iOS, macOS, tvOS, watchOS & visionOS).

LicenseKit can define licenses with code, generate encrypted license files, read licenses from plain CSV files, integrate with any REST API, etc. It also has pre-defined Gumroad integrations in place. 

LicenseKit can validate expiration date, platform, bundle ID, tier, environment, features, and much more. It lets you cache licenses to handle temporary connectivity loss, and combine multiple data sources for flexible validation.



## Pricing

LicenseKit requires a commercial license to be used. It's free to start using, and affordable to scale. You can sign up for a license or try out a free, unlimited trial from the [LicenseKit website][Website].



## Installation

LicenseKit can be installed with the Swift Package Manager:

```
https://github.com/Kankoda/LicenseKit.git
```

LicenseKit only has to be linked to the main target. If you use LicenseKit with a Swift package, make sure to set up your package as described in the [online documentation][Documentation].



## Getting started

With LicenseKit, your app/library should create a ``LicenseEngine`` with the license key you obtain when you [sign up for LicenseKit][Website], then define which service type you want to use to use to fetch customer licenses.

For instance, this would create an engine with two licenses that are compiled into the product validated on-device:

```swift
let licenseEngine = try await LicenseEngine(
    licenseKey: "your-license-key",
    licenseStore: .myInternalLicenseStore // optional
    licenseService: { yourLicense in
        .api(...)  // or...
        .binary(...)  // or...
        .csvFile(...)  // or...
        .encryptedFile(...)  // or...
        .gumroad(...)  // etc...
    }
)
```

There are many service types to choose from, as described in the [license services article][Services]. You can define licenses with source code, read licenses from file, fetch licenses from an API, integrate with services like Gumroad, etc.

Once you have a license engine instance, you can use it to resolve and validate licenses for your product, by letting your customers enter *their* license key. See the [getting-started guide][Getting-Started] for more information.



## Features

LicenseKit provides you with services, integrations and apps that make it easy to manage licenses. 

### Services

LicenseKit services make it easy to define, fetch, and validate licenses in different ways, for instance:

* 🌩️ [API Integrations][Services] - LicenseKit can integrate with any REST API.
* ⌨️ [Binary Licenses][Services] - LicenseKit lets you define licenses with source code.
* 📄 [CSV Files][Services] - LicenseKit lets you define licenses with plain CSV files.
* ⌨️ [Encrypted Files][Services] - LicenseKit lets you define licenses with source code.

### Integrations

LicenseKit has pre-defeined integrations for popular 3rd party payment providers:

* 🌩️ [Gumroad][Services] - LicenseKit can integrate directly with Gumroad.

### Apps

LicenseKit has macOS-specific SwiftUI Preview apps that can be used directly from within Xcode:
 
* 💻 [License Manager][Apps] - Inspect a collection of licenses and license services. 
* 💻 [License File Decryptor][Apps] - Decrypt and inspect the contents of a license file.



## Documentation

The [online documentation][Documentation] has articles, code examples etc. that let you overview the various parts of the library.

See the [Understanding Licenses][Licenses] and [Understanding License Services][Services] articles for more information about licenses and services.



## Demo Application

The demo app lets you try out the library on iOS and macOS. Just open and run the `Demo` project.



## Contact

LicenseKit is property of Kankoda:

* [E-mail][Email]
* [Website][Website]
* [Bluesky][Bluesky]
* [Mastodon][Mastodon]

Reach out if you have any questions, want to sign up for a license, or need help in any way.



## License

LicenseKit is closed source. See the [LICENSE][License] file for more info.



[Email]: mailto:info@kankoda.com
[Website]: https://kankoda.com/licensekit
[GitHub]: https://github.com/kankoda

[Bluesky]: https://bsky.app/profile/kankoda.bsky.social
[Twitter]: https://twitter.com/kankodahq
[Mastodon]: https://mastodon.social/@kankoda

[Documentation]: https://kankoda.github.io/LicenseKit/documentation/licensekit
[Getting-Started]: https://kankoda.github.io/LicenseKit/documentation/licensekit/getting-started-article
[License]: https://github.com/Kankoda/LicenseKit/blob/main/LICENSE

[Apps]: https://kankoda.github.io/LicenseKit/documentation/licensekit
[Licenses]: https://kankoda.github.io/LicenseKit/documentation/licensekit/understanding-licenses
[Services]: https://kankoda.github.io/LicenseKit/documentation/licensekit/understanding-services
