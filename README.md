This repository demonstrates a bug with dart pub workspaces.

There are 4 packages in this workspace:

* base - a Flutter package with an asset
* included_package - a Flutter package with an asset that depends on `base`
* excluded_package - a Flutter package with an asset that depends on `base`
* app - a Flutter app that depends on ONLY `included_package`

Expect result:

`flutter build web` should build a flutter web app, with only assets from included_package.

Actual result:

`flutter build web` builds a flutter web app that contains assets from both included_package and excluded_package.

To reproduce:

- cd app
- flutter build web
- inside build/web/assets/packages you will see both the `included_package` and `excluded_package` assets.

```
