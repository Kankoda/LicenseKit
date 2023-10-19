<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="LicenseKit Logo" title="LicenseKit" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/danielsaidi/LicenseKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/Swift-5.7-orange.svg" alt="Swift 5.7" />
    <a href="https://twitter.com/getlicensekit">
        <img src="https://img.shields.io/twitter/url?label=Twitter&style=social&url=https%3A%2F%2Ftwitter.com%2Fgetlicensekit" alt="Twitter: @getlicensekit" title="Twitter: @getlicensekit" />
    </a>
    <a href="https://techhub.social/@licensekit">
        <img src="https://img.shields.io/mastodon/follow/109340846532086151?domain=https%3A%2F%2Ftechhub.social&label=Mastodon&style=social" alt="Mastodon: @licensekit@techhub.social" title="Mastodon: @licensekit@techhub.social" />
    </a>
</p>



## About LicenseKit

LicenseKit helps you protect your software with commercial licenses on all major Apple platforms (iOS, iPadOS, macOS, tvOS and watchOS).

You can define licenses with code that is compiled into the product binary, read licenses from files, validate licenses from remote APIs, integrate with services like Gumroad, etc. 

Licenses can specify and validate expiration date, platform (iOS, iPadOS, macOS, watchOS, etc.), bundle ID, tier, environment, features, and much more.

LicenseKit supports iOS 15, macOS 13, tvOS 15 and watchOS 8.



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

The [online documentation][Documentation] has a [getting-started guide][Getting-Started] that helps you get started with LicenseKit.

In LicenseKit, a ``LicenseEngine`` is used to manage your product licenses.

Use *your* LicenseKit license key to create a ``LicenseEngine``, then define which license service to use.

Here, we use the "FREE" LicenseKit license key to create an license engine that uses a `.binary` service with hard-coded licenses:

```swift
let engine = try await LicenseEngine(licenseKey: "Your license key") {
    .binary(
        licenses: [
            License(licenseKey: "license-key-1"),
            License(licenseKey: "license-key-2")
        ]
    )
}
```

The engine will use the service(s) you specified to get the license, and will by default validate the license for the current platform, bundle and date before returning it.

You can choose from many different service types, such as `.binary`, `.file`, `.api`, `.gumroad`, etc.  

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

LicenseKit is closed source. See the [LICENSE][License] file for more info.



[Email]: mailto:info@getlicensekit.coms
[Website]: https://getlicensekit.com
[Twitter]: https://twitter.com/getlicensekit
[Mastodon]: https://techhub.social/@licensekit
[Sponsors]: https://github.com/sponsors/danielsaidi

[Documentation]: https://licensekit.github.io/LicenseKit/documentation/licensekit/
[Getting-Started]: https://licensekit.github.io/LicenseKit/documentation/licensekit/getting-started
[License]: https://github.com/LicenseKit/LicenseKit/blob/main/LICENSE
