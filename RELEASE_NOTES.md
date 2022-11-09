# Release Notes

LicenseKit tries to honor semantic versioning:

* Only remove deprecated code in `major` versions.
* Only deprecate code in `minor` and `patch` versions.
* Avoid breaking changes in `minor` and `patch` versions.
* Code can be marked as deprecated at any time.

Breaking changes can occur in minor versions and patches, if
the alternative is to not be able to release new features or
fixes that are critical or provide important value.

These release notes only include functional changes. They do
not cover license changes, which means that there may be new
versions that are not listed here.



## 0.4

This version adds a cached license service and new tier capabilities.

This version also removes Quick and Nimble dependencies.

### ✨ Features

* `CachedLicenseService` is a new service that lets you cache previous operation.
* `LicenseError` re-adds the `missingLicense` case.
* `LicenseError` has a new `other` error type.
* `LicenseError` has a new `isHigherTierNeeded` property.
* `LicenseSource` is a new enum that can help you configure which service type tpo use.
* `LicenseTier` has new tier comparison and validation functionality.

### 💡 Behavior changes

* `LicenseError` `isExpiredLicense` is renamed to `isExpired`.



## 0.3

This version adds a FREE tier that you can use with any app or library. Just use "FREE" as license key when creating a license engine, and you will get a `trial` tier license.

This version also renames "license registration service" to "license service" and `registerLicenseKey` to `getLicense`.

### ✨ Features

* `LicenseServiceProxy` is a new license service that can handle multiple service instances.
* `LicenseTier.trial` is a new license tier that you can use for trial licenses.



## 0.2

This version adjusts the library quite a bit and adds a lot of additional functionality to it.

### ✨ Features

* `LicenseService` is a new protocol that defines services that can be used to handle licenses.
* `LocalLicenseService` is a local registration service that uses hard-coded licenses.
* `CsvLicenseService` is a file-based registration service that uses licenses from CSV files.
* `RemoteLicenseService` is a api-based registration service that uses licenses from remote api:s.

### 💡 Behavior changes

* `License` now allows expiration by default.
* `LicenseEngine` now uses a service builder instead of a service type.



## 0.1

This is the first available beta version of LicenseKit.
