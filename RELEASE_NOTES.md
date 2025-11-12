# Release Notes

LicenseKit honors semantic versioning, with the following strategy:

* Deprecations can happen at any time.
* Deprecations are removed in `major` updates.
* Breaking changes should only occur in `major` updates.
* Breaking changes *can* occur in `minor` and `patch` updates, if the alternative is worse.

These release notes cover the current major version. See older versions for older release notes.



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
