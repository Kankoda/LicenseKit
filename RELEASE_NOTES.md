# Release Notes

LicenseKit honors semantic versioning, with the following strategy:

* Deprecations can happen at any time.
* Deprecations are removed in `major` updates.
* Breaking changes should only occur in `major` updates.
* Breaking changes *can* occur in `minor` and `patch` updates, if the alternative is worse.

These release notes cover the current major version. See older versions for older release notes.



## 1.2.3

This version replaces 1.2.1 and 1.2.2 due to git commit problems.

This version removes `LicenseStore.shared` and adds a public `LicenseStore` initializer instead.

This version is also released as a multiplatform build. 



## 1.2

### ✨ New Features

* `License` has a new, static validication function.
* `LicenseStore` is a new way to store a single license.
* `LicenseEngine` can now be created with a license store.

### 💡 Adjustments

* `License.ValidationError` has renamed multiple error types.
 


## 1.1

### ✨ New Features

* `License` has a new `renewalDate` property.
* `License.Customer` has a new `fullName` property.

### 💡 Adjustments

* `License.allowsExpiration` is now `false` by default.
 


## 1.0.2

### 💡 Adjustments

* `License.allowsExpiration` is now `false` by default.
 


## 1.0.1

### ✨ New Features

* `License` has new matching and sorting functionality.
 


## 1.0

This version bumps to Swift 6 and removes all previously deprecated code.

### ✨ New Features

* `License` has new expiration properties.
* `License` and all subtypes now implement `Hashable` and `Sendable`.
