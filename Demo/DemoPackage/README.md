# DemoPackage

This package demonstrates how to add LicenseKit to a package
and use it to protect features with a license key.

The package has a `DemoPackageLicense` class that takes care
of registering the package's LicenseKit license as well as a
license for the demo app, which lets the app use the package.  

The demo app imports both LicenseKit and DemoPackage and has
code that registers the demo app's DemoPackage license using
the `DemoPackageLicense` class. This way, this paclage keeps
its internal license informaton to itself. 
