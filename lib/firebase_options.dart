// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC9q1RAtKtfhSoIMMcv1xFgxTtpa00SQnE',
    appId: '1:390785316771:web:55f242352c8ee047400c16',
    messagingSenderId: '390785316771',
    projectId: 'superprecio-c1849',
    authDomain: 'superprecio-c1849.firebaseapp.com',
    storageBucket: 'superprecio-c1849.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsp5mMe4jSI-aV8stmu_0hzE4BrBlFwRs',
    appId: '1:390785316771:android:6e789847ad50f196400c16',
    messagingSenderId: '390785316771',
    projectId: 'superprecio-c1849',
    storageBucket: 'superprecio-c1849.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdh8qe7ImB0lHhWxNJOnYoz18TA4hllbQ',
    appId: '1:390785316771:ios:59943ffe33719973400c16',
    messagingSenderId: '390785316771',
    projectId: 'superprecio-c1849',
    storageBucket: 'superprecio-c1849.appspot.com',
    iosBundleId: 'com.superprecio.superprecio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdh8qe7ImB0lHhWxNJOnYoz18TA4hllbQ',
    appId: '1:390785316771:ios:e64911811a6743ab400c16',
    messagingSenderId: '390785316771',
    projectId: 'superprecio-c1849',
    storageBucket: 'superprecio-c1849.appspot.com',
    iosBundleId: 'com.superprecio.superprecio.RunnerTests',
  );
}
