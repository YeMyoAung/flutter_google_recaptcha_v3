# flutter_google_recaptcha_v3

Create Google reCAPTCHA v3 token for Flutter app. Google reCAPTCHA v3 plugin for Flutter. A Google reCAPTCHA is a free service that protects your website from spam and abuse.

[![Pub](https://badgen.net/badge/Pub/v0.0.1?color=orange)](https://pub.dartlang.org/packages/g_recaptcha_v3)
[![MIT License](https://badgen.net/badge/License/MIT?color=blue)](https://github.com/YeMyoAung/flutter_google_recaptcha_v3/blob/main/LICENSE)

## Preview

<a href="#ScreenShotsAndroid">
  <img src="https://user-images.githubusercontent.com/26484667/236123836-5eac3c0c-00c1-4cca-87b9-2d9a2620b3fb.gif" width="200px" height="410px">
</a>

## Installation

Add flutter_google_recaptcha_v3 as dependency to your pubspec file.

```dart
   flutter_google_recaptcha_v3:
    git:
      url: https://github.com/YeMyoAung/flutter_google_recaptcha_v3.git
```

## Setup

## for Android

Update `minSdkVersion` in app level build.gradle.

```
defaultConfig {
        applicationId "YOUR_APP_ID"
        minSdkVersion 21 //<-- this line
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
}
```

## Usage

First of all you need to import our package.

```dart
import 'package:flutter_google_recaptcha_v3/google_recaptcha_v3.dart';
```

And then you can use easily.

## Create A RecaptchaController

You can create a controller invoking `RecaptchaController`.
`RecaptchaController` take 2 parameters.First on is `apiKey` and second one is optional `hostName`.

```dart
    final RecaptchaController controller = RecaptchaController(
          'YOUR_API_KEY',
          hostName: 'YOUR_HOST_NAME',
    );
```

## And then invoke `getRecaptcha`

`getRecaptcha` will take `BuildContext` and then give you `nullable RecaptchaModel`.

```dart
    final RecaptchaModel? model = await controller.getRecaptcha(context);
```

## Contact Us

[Starlight Studio](https://www.facebook.com/starlightstudio.of/)
