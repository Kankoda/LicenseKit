# Release Notes

LicenseKit honors semantic versioning to great extent:

* Only remove deprecated code in `major` versions.
* Only deprecate code in `minor` and `patch` versions.
* Avoid breaking changes in `minor` and `patch` versions.
* Code can be marked as deprecated at any time.

Breaking changes *can* still occur in minor versions and patches, if the alternative is to not be able to release important new features or fixes.



## 0.9.2

This version adds support for strict concurrency and visionOS.

### ✨ New Features

* `License.Environment` now supports custom values.
* `License.Platform` now supports custom values and visionOS.



## 0.9.1

This version improves the cached license service performance.



## 0.9

This version adds Gumroad license mapping and replaces Small, Medium and Large licenses with Gold, Silver and Large.

### ✨ New Features

* `License` properties are now mutable.
* `License` has a new `hasFeature` function.
* `License` can now validate bundle ID string.
* `LicenseEngine` now uses a Gulroad service that properly maps bundle IDs.
* `LicenseError` now implements `LocalizedError` to return readable errors.
* `LicenseError` has a new `missingLicenseInCache` to support distring errors.
* `LicenseError.invalidLicenseKey` now supports specifying a custom error message.

### 💡 Adjustments

* `License` now also validates platform instead of just bundle and date.
* `LicenseEngine` now throws valid errors when failing to resolve service.
* `LicenseServiceType.gumroad` now maps e-mail to name if name is missing.
* `LicenseServiceType.gumroad` now uses iOS 14 supporting ISO date parsing.

### 💥 Breaking changes

* `ApiConfiguration` is moved to `LicenseIntegrations`.
* `LicenseFeature.featureId` is now optional to be more flexible.
* `LicenseFeature` has a new, optional `unlockedByTier` property.
* `LicenseService` is now internal to clean up and minimize the library.
* `LicenseServiceType.proxy` now uses a `LicenseServiceType` instead of a service.



## 0.8

This version adds capabilities that unlock monthly subscriptions for LicenseKit.

### ✨ New Features

* `Gumroad.Purchase` now has default parsed `license` properties.
* `LicenseEngine` can now be created with a Gumroad license key.
* `LicenseServiceType` cases no longer need a license to be used.
* `LicenseServiceType.api` and `.gumroad` has new `cached` capabilities.

### 💡 Adjustments

* The license tiers and their capabilities have been tweaked.

### 💥 Breaking changes

* The `LicenseEngine` initializer is now async to support Gumroad.
* The `LicenseEngine` service builder is no longer given the license.
* The `LicenseServiceType` cases no longer need a license to be used.



## 0.8

This version adds capabilities that unlock monthly subscriptions for LicenseKit.

### ✨ New Features

* `Gumroad.Purchase` now has default parsed `license` properties.
* `LicenseEngine` can now be created with a Gumroad license key.
* `LicenseServiceType` cases no longer need a license to be used.
* `LicenseServiceType.api` and `.gumroad` has new `cached` capabilities.

### 💡 Adjustments

* The license tiers and their capabilities have been tweaked.

### 💥 Breaking changes

* The `LicenseEngine` initializer is now async to support Gumroad.
* The `LicenseEngine` service builder is no longer given the license.
* The `LicenseServiceType` cases no longer need a license to be used.



## 0.7.1

This version adjusts the number of licenses that can be used with the free trial.



## 0.7

This version nests license types under the `License` model and replaces the license services with a `LicenseServiceType`.

### 🚨 Important Changes

* All license services are now resolved with a `LicenseServiceType` enum instead.

### 💥 Breaking changes

* All concrete service types have been made internal.
* Api-based license mapping is no longer generic, and maps raw data instead.
* `LicenseCustomer` has been renamed to `License.Customer`.
* `LicenseEnvironment` has been renamed to `License.Environment`.
* `LicensePlatform` has been renamed to `License.Platform`.
* `LicenseSource` has been renamed to `License.Source`.
* `LicenseTier` has been renamed to `License.Tier`.



## 0.6

This version adds Gumroad integration.

This version also aims to streamline the library, and thus has many breaking changes.

### 🚨 Important Changes

* The FREE tier can now only handle 5 licenses instead of the previous 10.

### ✨ New Features

* `ApiConfiguration` is a new struct that can be used to define various configurations.
* `ApiConfiguration` has a new Gumroad-specific configuration.
* `License` has a bunch of new validation functions.
* `LicenseEnvironment` has a new `.all` property.
* `LicenseError` has new cases.
* `Gumroad` is a new namespace for Gumroad-specific types.
* `GumroadLicenseService` is a new service for Gumroad integrations.

### 💥 Breaking changes

* `CsvLicenseService` has been renamed to `FileBasedLicenseService`.
* `LocalLicenseService` has been renamed to `BinaryLicenseService`.
* `RemoteLicenseService` has been renamed to `ApiLicenseService`.

* `ApiConfiguration` uses a URL string instead of an URL.
* `ApiLicenseService` replaces init parameters with a `configuration`.
* `ApiLicenseService` replaces `LicenseMappable` with a `licenseMapping`.
* `ApiLicenseService` uses a `URLSession` instead of a `NetworkService`.
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
