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

LicenseKit lets you specify expiration date, supported platforms (iOS, macOS, tvOS, watchOS), bundle IDs, tier etc. for each license and validate the current license whenever you want.

LicenseKit requires a commercial license. You can obtain a license from the [LicenseKit website][Website].



## Supported Platforms

LicenseKit supports `iOS 13`, `macOS 11`, `tvOS 13` and `watchOS 6`.

This means that you can use LicenseKit to protect your software on all major Apple platforms.



## Installation

LicenseKit can be installed with the Swift Package Manager:

```
https://github.com/LicenseKit/LicenseKit.git
```

LicenseKit only has to be added to the main app target. If you are using LicenseKit with a library, make sure to setup SPM so that your users get both your library and LicenseKit.



## Getting started

The online documentation has a [getting-started guide][Getting-Started] that will help you get started with the library.



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
