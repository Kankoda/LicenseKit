<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="LicenseKit Logo" title="LicenseKit" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/danielsaidi/LicenseKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/Swift-5.6-orange.svg" alt="Swift 5.6" />
    <a href="https://twitter.com/getlicensekit">
        <img src="https://img.shields.io/twitter/url?label=Twitter&style=social&url=https%3A%2F%2Ftwitter.com%2Fdanielsaidi" alt="Twitter: @danielsaidi" title="Twitter: @danielsaidi" />
    </a>
    <a href="https://techhub.social/@licensekit">
        <img src="https://img.shields.io/mastodon/follow/109340846532086151?domain=https%3A%2F%2Ftechhub.social&label=Mastodon&style=social" alt="Mastodon: @licensekit@techhub.social" title="Mastodon: @licensekit@techhub.social" />
    </a>
</p>



## About LicenseKit

LicenseKit helps you protect your software with commercial licenses on all major Apple platforms (iOS, iPadOS, macOS, tvOS and watchOS).

You can define licenses with code that is compiled into the product binary, read licenses from files that are bundled within the binary or from any accessible URL, validate licenses over web requests, etc. 

Licenses can specify and validate expiration date, platform (iOS, iPadOS, macOS, watchOS, etc.), bundle ID, tier, specific features, and much more.

LicenseKit supports iOS 13, macOS 12, tvOS 13 and watchOS 6.



## Pricing

LicenseKit requires a commercial license to be used. It's free to start using and affordable to scale.

You can purchase a license from the [LicenseKit website][Website] or use `FREE` as license key to use the library with a limited number of code- and file-based licenses and features.



## Installation

LicenseKit can be installed with the Swift Package Manager:

```
https://github.com/LicenseKit/LicenseKit.git
```

LicenseKit only has to be added to the main app target. If you are using LicenseKit with a library, make sure to set up your Swift package so that your users get both your library and LicenseKit when fetching your package.



## Getting started

The [online documentation][Documentation] has a [getting started guide][Getting-Started] that helps you get started with LicenseKit.

When using LicenseKit, you should first create a `LicenseEngine`, which will be used to validate licenses. The engine can only be created with a valid LicenseKit license key. 

If you provide a valid license key, the engine will call a service builder in which you can define how you want to access customer licenses for *your* product.

Here, we use the "FREE" LicenseKit license key to create an license engine that use `.binary` licenses that are defined directly in the source code:

```swift
// You can use FREE as license key to test the trial version
let engine = try LicenseEngine(licenseKey: "Your license key") { license in
    .binary(
        license: license,
        customerLicenses: [
            License(licenseKey: "license-key-1"),
            License(licenseKey: "license-key-2")
        ]
    )
}
```

You can choose from many different service types within the library, such as `.binary`, `.file`, `.api`, `.gumroad` etc.

Once you have a license engine instance, you can use it to get licenses for your customers:

```swift
let license = try await engine.getLicense(for: "license-key-1")
```

The engine will only return a license if the license key is valid and refers to a valid license. LicenseKit will by default validate the license for the current platform, bundle and date. You can perform more validations after retrieving the license.  

For more information, please see the [online documentation][Documentation] and the [getting started guide][Getting-Started].



## Documentation

The [online documentation][Documentation] has articles, code examples etc. that let you overview the various parts of the library.



## Demo Application

The demo app lets you try out the library on iOS and macOS. Just open and run the `Demo` project.



## Contact

Feel free to reach out if you have any questions or need help any way:

* Website: [getlicensekit.com][Website]
* Mastodon: [@getlicensekit@techhub.social][Mastodon]
* Twitter: [@getlicensekit][Twitter]
* E-mail: [info@getlicensekit.com][Email]



## License

KeyboardKit Pro is closed source. See the [LICENSE][License] file for more info.



[Email]: mailto:info@getlicensekit.coms
[Website]: https://getlicensekit.com
[Twitter]: https://twitter.com/getlicensekit
[Mastodon]: https://techhub.social/@licensekit
[Sponsors]: https://github.com/sponsors/danielsaidi

[Documentation]: https://licensekit.github.io/LicenseKit/documentation/licensekit/
[Getting-Started]: https://licensekit.github.io/LicenseKit/documentation/licensekit/getting-started
[License]: https://github.com/LicenseKit/LicenseKit/blob/main/LICENSE
