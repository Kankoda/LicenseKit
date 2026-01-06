# Release Notes

LicenseKit honors semantic versioning, with the following strategy:

* Deprecations can happen at any time.
* Deprecations are removed in `major` updates.
* Breaking changes should only occur in `major` updates.
* Breaking changes *can* occur in `minor` and `patch` updates, if the alternative is worse.

These release notes cover the current major version. See older versions for older release notes.



## 2.1.1

This version builds the SDK with macOS 15 and Xcode 16.4.



## 2.1

This version adds more app-related types, and exposes license types at the root level.

### ✨ Features

* `LicenseApp` is a new namespace with app-specific views.
* `LicenseApp.LicenseFileDecryptionScreen` is a new view that can decrypt license files.
* `LicenseApp.LicenseKeyGeneratorScreen` is a new view that can generate license keys.
* `LicenseApp.LicenseInfoRow` is a new view that can show license info.
* `LicenseApp.LicenseInfoSection` is a new view that can list license info.
* `LicenseApp.LicenseInfoView` is a new view that can list all license info.
* `LicenseApp.LicenseServiceScreen` is a new view that can search for licenses.
* `LicenseManagerApp` does not compile on all platforms.

### 💡 Updates

* `LicenseServiceType` now implements `Sendable`.

### 🗑️ Deprecations

* `LicenseServiceType/encryptedFile` has been renamed to `licenseFile`.



## 2.0.1

This version adds some customer information that is needed by other products.



## 2.0

This version changes the license model, and removes unwanted types.

### ✨ New Features

* `Date+License` is now public.
* `License` has a new `expirationProductVersion`.
* `License.validate(...)` now allows optional values.
* `License.validate(...)` now allows validating environment.
* `License.validate(...)` now allows validating product version number.

### 🐛 Bugs

* `License.validate(...)`  has been removed.

### 💥 Breaking Changes

* `License.allowsExpiration` has been removed.
* `License.allowsExpirationInProduction` has been removed.
