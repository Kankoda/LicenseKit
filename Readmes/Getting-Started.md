# Getting started

Once LicenseKit is added to your project, you need to obtain a license before you can start using it in your library.


## How to obtain a license

LicenseKit requires a commercial license. The [LicenseKit website][Website] website has information about license price, tiers, features etc. 


## More on licenses

Registering a valid license will setup the Pro features that the license includes. You can then use all features that the license includes. Failure to register a license before accessing Pro features will cause features to throw a `LicenseError`.

To register a license, just use the `License.register(licenseKey:)` function.


### How to access your license

After registering a valid license as described above, you can use the static `License.current` property to inspect your license information.


### How to reconfigure your license

Registering a valid license will cause LicenseKit to configure your application and extension according to the license configuration. If you want to use a different setup, you can reconfigure LicenseKit after registering a valid license. Have a look at the demo app for examples.


## Going further

Have a look in the documentation for more articles on how to configure LicenseKit, create your own service implementations etc. You can also have a look at the demo apps, which replace many services with demo-specific implementations.



[Website]: https://getlicensekit.com
