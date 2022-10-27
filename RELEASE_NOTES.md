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



## 0.2

This version adjusts the library quite a bit and adds a lot of additional functionality to it.

### ✨ Features

* `LicenseRegistrationService` is a new protocol that defines services that can be used to register license keys.
* `LocalLicenseRegistrationService` is a local registration service that uses hard-coded licenses.
* `CsvLicenseRegistrationService` is a file-based registration service that uses licenses from CSV files.
* `RemoteLicenseRegistrationService` is a api-based registration service that uses licenses from remote api:s.

### 💡 Behavior changes

* `License` now allows expiration by default.
* `LicenseEngine` now uses a service builder instead of a service type.



## 0.1

This is the first available beta version of LicenseKit.
