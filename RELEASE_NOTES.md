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



## 0.6

This version adds Gumroad integration.

This version also aims to streamline the library, and thus has many breaking changes.

### 🚨 Important Changes

* The FREE tier can now only handle 5 licenses instead of the previous 10.

### ✨ New Features

* `ApiLicenseServiceConfiguration` is a new struct that can be used to define various configurations.
* `ApiLicenseServiceConfiguration` has a new Gumroad-specific configuration.
* `License` has a bunch of new validation functions.
* `LicenseEnvironment` has a new `.all` property.
* `LicenseError` has new cases.
* `Gumroad` is a new namespace for Gumroad-specific types.
* `GumroadLicenseService` is a new service for Gumroad integrations.

### 💥 Breaking changes

* `CsvLicenseService` has been renamed to `FileBasedLicenseService`.
* `LocalLicenseService` has been renamed to `BinaryLicenseService`.
* `RemoteLicenseService` has been renamed to `ApiLicenseService`.

* `ApiLicenseService` replaces init parameters with a `configuration`.
* `ApiLicenseService` replaces `LicenseMappable` with a `licenseMapping`.
* `ApiLicenseService` uses a `URLSession` instead of a `NetworkService`.
* `ApiLicenseServiceConfiguration` uses a URL string instead of an URL.
* `CsvFileError` has been removed.
* `FileBasedLicenseService` `licenseBuilder` has been renamed to `licenseMapping` and now maps a single row.
* `License` now takes an environment array instead of an optional one.
* `License` renames a bunch of validation functions.
* `LicenseMappable` has been removed.
* `LicenseService` `getLicense(_:)` has changed signature to `getLicense(withKey:)`.
* `LicenseTier` no longer has any validation functions.
* `LocalLicenseService` renames `licenses` to `customerLicenses`.
* `NetworkService` has been removed.
* `StandardNetworkService` has been removed.



## 0.5

This version adds new features to the `License` type.

### ✨ New Features

* `License` can now specify `allowsExpirationInProduction` to only have expired licenses fail validation when debugging, but not in production.
* `License` has new `name` and `activationDate` properties.
* `License` has a new `validate(tier:)` function.
* `License` has a new `validate(feature:or:)` function.
* `License` feature validation now supports nil strings.

### 💡 Adjustments

* `License` now has a single initializer that accepts both features and feature IDs.

### 💥 Breaking changes

* `LicenseFeature` `featureId` is no longer optional.
* `LicenseEngine` `getLicense` now uses an implicit parameter name.
* `LicenseService` `getLicense` now uses an implicit parameter name.



## 0.4

This version adds a cached license service and new tier capabilities.

This version also removes Quick and Nimble dependencies.

### ✨ New Features

* `CachedLicenseService` is a new service that lets you cache previous operation.
* `LicenseError` re-adds the `missingLicense` case.
* `LicenseError` has a new `other` error type.
* `LicenseError` has a new `isHigherTierNeeded` property.
* `LicenseSource` is a new enum that can help you configure which service type tpo use.
* `LicenseTier` has new tier comparison and validation functionality.

### 💡 Adjustments

* `LicenseError` `isExpiredLicense` is renamed to `isExpired`.



## 0.3

This version adds a FREE tier that you can use with any app or library. Just use "FREE" as license key when creating a license engine, and you will get a `trial` tier license.

This version also renames "license registration service" to "license service" and `registerLicenseKey` to `getLicense`.

### ✨ New Features

* `LicenseServiceProxy` is a new license service that can handle multiple service instances.
* `LicenseTier.trial` is a new license tier that you can use for trial licenses.



## 0.2

This version adjusts the library quite a bit and adds a lot of additional functionality to it.

### ✨ New Features

* `LicenseService` is a new protocol that defines services that can be used to handle licenses.
* `LocalLicenseService` is a local registration service that uses hard-coded licenses.
* `CsvLicenseService` is a file-based registration service that uses licenses from CSV files.
* `RemoteLicenseService` is a api-based registration service that uses licenses from remote api:s.

### 💡 Adjustments

* `License` now allows expiration by default.
* `LicenseEngine` now uses a service builder instead of a service type.



## 0.1

This is the first available beta version of LicenseKit.
