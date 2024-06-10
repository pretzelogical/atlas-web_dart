# atlas-web_dart

Learning dart for the full stack web developer spec at Atlas School

## Dart features

### Type safe

Dart is a statically typed language with type inference. This means that you can either strictly define types or have them be inferred using the ```var``` keyword.

```dart
var testStr0 = 'test';  // With type inference.
String testStr1 = '12'; // With strictly defined type.
```

### Compilation targets

Dart allows for compilation to a number of targets including but not limited to:
  - Native executables
    - Allows for quick execution since app is statically compiled
  - JIT compiler
    - Instantly run dart code that self optimizes over its runtime
  - JS
    - Write apps in dart and have them run in the browser or node