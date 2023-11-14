<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="LicenseKit Logo" title="LicenseKit" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/LicenseKit/LicenseKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/Swift-5.8-orange.svg" alt="Swift 5.8" />
    <a href="https://twitter.com/kankodahq"><img src="https://img.shields.io/twitter/url?label=Twitter&style=social&url=https%3A%2F%2Ftwitter.com%2Fkankodahq" alt="Twitter: @kankodahq" title="Twitter: @kankodahq" /></a>
    <a href="https://mastodon.social/@kankoda"><img src="https://img.shields.io/mastodon/follow/110888068770108814?domain=https%3A%2F%2Fmastodon.social&label=Mastodon&style=social" alt="Mastodon: @kankoda@mastodon.social" title="Mastodon: @kankoda@mastodon.social" /></a>
</p>



## About LicenseKit

A ``License`` represents a software license that can be resolved with a license key.

LicenseKit licenses (see <doc:Understanding-Licenses>) can specify and validate expiration date, platform, bundle ID, tier, environment, features, and much, much more.

LicenseKit uses services (see <doc:Understanding-License-Services>) to compile licenses into the product binary, read licenses from files, fetch licenses from remote APIs, integrate with external services like Gumroad, etc.

LicenseKit also lets you cache validation results to handle temporary connectivity loss, and use service proxying to use multiple services to validate license keys.



## Installation

LicenseKit can be installed with the Swift Package Manager:

```
https://github.com/Kankoda/LicenseKit.git
```

LicenseKit only has to be added to the main app target. If you are using LicenseKit with a library, make sure to set up your Swift package so that your users get both your library and LicenseKit when fetching your package.



## Features

LicenseKit provides a bunch of license-specific features:

* ✅ [License Validation][Licenses] - LicenseKit can validate licenses in many ways.
* ⌨️ [Binary Licenses][License-Services] - LicenseKit lets you define licenses with source code.
* 📄 [File-Based Licenses][License-Services] - LicenseKit lets you define licenses with plain text files.
* 🌩️ [API/Cloud-Based Licenses][License-Services] - LicenseKit can validate licenses with web requests.
* 💰 [Gumroad][License-Services] - LicenseKit can integrate directly with Gumroad.
* 📦 [License Caching][License-Services] - LicenseKit can cache successful license validations.
* ➡️ [Service Proxying][License-Services] - LicenseKit can chain multiple services together.



## Getting started

The [online documentation][Documentation] has a [getting-started guide][Getting-Started] that helps you get started.



## Pricing

LicenseKit requires a commercial license to be used. It's free to start using and affordable to scale.

You can purchase a license or try out the free, unlimited trial from the [LicenseKit website][Website].



## Documentation

The [online documentation][Documentation] has articles, code examples etc. that let you overview the various parts of the library.



## Demo Application

The demo app lets you try out the library on iOS and macOS. Just open and run the `Demo` project.



## Contact

LicenseKit is handled by Kankoda:

* [Website][Website]
* [Mastodon][Mastodon]
* [Twitter][Twitter]
* [E-mail][Email]

Reach out if you have any questions or need help any way.



## License

LicenseKit is closed source. See the [LICENSE][License] file for more info.



[Email]: mailto:info@kankoda.com
[Website]: https://kankoda.com/licensekit
[Twitter]: https://twitter.com/kankodahq
[Mastodon]: https://mastodon.social/@kankoda

[Documentation]: https://kankoda.github.io/LicenseKit/documentation/licensekit
[Getting-Started]: https://kankoda.github.io/LicenseKit/documentation/licensekit/getting-started
[License]: https://github.com/Kankoda/LicenseKit/blob/main/LICENSE

[Licenses]: https://kankoda.github.io/LicenseKit/documentation/licensekit/understanding-licenses
[License-Errors]: https://kankoda.github.io/LicenseKit/documentation/licensekit/understanding-license-errors
[License-Services]: https://kankoda.github.io/LicenseKit/documentation/licensekit/understanding-license-services
