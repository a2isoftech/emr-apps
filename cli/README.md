# A CLI for EMR Apps.
This CLI is intended to help with common tasks that are performed in the EMR Apps codebase.

```
dart run bin/emrapps.dart
```

# Compile an executable
Note that `dart compile exe` does not support cross-OS compilation.
```
dart compile exe bin/emrapps.dart --output bin/macos/emrapps --target-os macos

dart compile exe bin/emrapps.dart --output bin/windows/emrapps.exe --target-os windows

dart compile exe bin/emrapps.dart --output bin/linux/emrapps.exe --target-os linux
```

```
# To install from source - this will build each time the app is run:
dart pub global activate --source path ./cli

# To install the compiled version (do the 'compile' step above first):
dart pub global activate --source path ./cli/bin/macos

# To uninstall:
dart pub global deactivate emrapps
```
