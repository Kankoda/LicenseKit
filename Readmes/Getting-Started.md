# Getting started

Once LicenseKit is added to your project, you need to obtain a license before you can start using it in your library.


## Licenses 

LicenseKit is built with LicenseKit and uses the same license model as other software that uses it. This means that you must provide a valid license key before you can start using it.

The [LicenseKit website][Website] website has up to date information about pricing, tiers, license features etc.


## Licene engine

LicenseKit has a ``LicenseEngine`` that can be configured in different ways. You use a license engine to register license keys for your users.


```swift
import LicenseKit

class MyClass {

    func registerLicenseKey(_ key: String) throws -> License {
        
        // Create a local license engine with hard-coded licenses
        let engine = LicenseEngine(
            licenseKey: "YOUR_LICENSE_KIT_KEY",
            type: .local(licenses: [...]))

        // Try to register the provided license key 
        return engine.registerLicenseKey(key)
    }
}
```

You must provide a valid LicenseKit license key when you create a ``LicenseEngine`` instance, else fail with a ``LicenseError``. 

Once you have an engine, its ``LicenseEngine/engineLicense`` can be used to see your license information. Since a license engine exposes your license, company info etc. you must never share it with your users.

You can then use ``LicenseEngine/registerLicenseKey(_:)`` to register the license keys of your users. If the license key is valid, this will return the license, else fail with a ``LicenseError``.


## License engine types

LicenseKit has a ``LicenseEngineType`` that must be provided when you create a ``LicenseEngine``. The engine type determines how licenses will be validated.

LicenseKit currently only has a ``LicenseEngineType/local(licenses:)`` engine type, which is created with and validated local licenses that are hard-coded into your binary.

Future versions of LicenseKit may introduce new engine types that validates licenses in completely different ways.


## Apps vs. libraries

Licenses are handled a bit differently in apps and libraries.

In apps, you can create a license engine instance when the app is launched or whenever you need it. It can then be used by the app to let users register their license keys.

In libraries, you should provide developers with a way to register a license key, then use that to setup an engine, register the key and return the license. This way, developers only have to use your library.


## Going further

Have a look at the LicenseKit demo for some examples. It consists of a demo package and a demo app, where both the package and the app specify their own locale licenses. 

The package requires a license key to be used and has a "feature" that requires a valid license. The app then imports the package, registers a package license key on launch and tries to create a feature instance. It also lets users register an app-specific license key directly from within the app. 



[Website]: https://getlicensekit.com
