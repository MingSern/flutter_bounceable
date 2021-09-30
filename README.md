<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# flutter_bounceable

- A simple, interactive and customizable on-tap bounce animation that can be wrapped on any widgets that you like. 
- You can create custom bouncing animation similarly to apps like **Spotify** and **App Store**.
- Package similar to [flutter_bounce](https://pub.dev/packages/flutter_bounce) and [bouncing_widget](https://pub.dev/packages/bouncing_widget).

## Advantages:

- Truly simple and efficient.
- Customizable bouncing animation using `curve`, `scaleFactor` and `duration`.
- Options to control `onTap`, `onTapUp`, `onTapDown` and `onTapCancel`.
- Enable and disable `onTap` option.
- Not sticky when scrolling.
- Does not trigger multiple `onTap` events when tapped on multiple `Bounceable` widget simultaneously.

## 🚀 Installing:

In your pubspec.yaml
```yaml
dependencies:
  flutter_bounceable: ^1.0.0
```
```dart
import 'package:flutter_bounceable/flutter_bounceable.dart';
```

## Usage:

Just wrap on any widget that you like, it just works🙂:
```dart
Bounceable(
  onTap: () {},
  child: YourWidget(),
);
```

## Demo:

<img src="https://github.com/MingSern/flutter_bounceable/raw/main/documentation/demo.gif" height="500">
<img src="https://github.com/MingSern/flutter_bounceable/raw/main/documentation/demo_compressed.gif" height="500">

## Contributing:

Feature requests and pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
