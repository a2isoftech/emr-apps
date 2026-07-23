This package contains the following builders for emr_one:
- RegisterRoutesBuilder

Builders are registered in build.yaml.

This package is imported into `emr_one_shell_web` and `emr_one_shell_native` and is invoked using:

```
flutter pub run build_runner build
```

During development it's possible to debug a builder by running the following in either the `emr_one_shell_web` or `emr_one_shell_native` folder:

```
flutter pub run build_runner generate-build-script
```

then adding a breakpoint in your builder's `build` method, and starting either the "emr one builder (web)" or "emr one builder (native)" task.

Builders can cache, so you may find your breakpoint in `build` is not hit. In that situation run:
```
melos clean
melos bs
```

and then re-run the steps from the `flutter pub run build_runner generate-build-script` line above.
