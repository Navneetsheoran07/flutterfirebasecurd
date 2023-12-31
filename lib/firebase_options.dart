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
    apiKey: 'AIzaSyC8b8EUwP7GJ9YZ-wTgusSnyWfAvulkSKM',
    appId: '1:422066440305:web:f7be6dc17917ef004033d0',
    messagingSenderId: '422066440305',
    projectId: 'flutterfirebasecurd-f5e8b',
    authDomain: 'flutterfirebasecurd-f5e8b.firebaseapp.com',
    storageBucket: 'flutterfirebasecurd-f5e8b.appspot.com',
    measurementId: 'G-QSTL5SPCLD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9siB69PtzNRKipqe8ZH0ubKFMAMtG9Kg',
    appId: '1:422066440305:android:3b2a1ca1f58e90a84033d0',
    messagingSenderId: '422066440305',
    projectId: 'flutterfirebasecurd-f5e8b',
    storageBucket: 'flutterfirebasecurd-f5e8b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHd7OL1G_waHbNTlVxicMLawCHSrDXAUM',
    appId: '1:422066440305:ios:387458888b4fb2994033d0',
    messagingSenderId: '422066440305',
    projectId: 'flutterfirebasecurd-f5e8b',
    storageBucket: 'flutterfirebasecurd-f5e8b.appspot.com',
    iosClientId: '422066440305-fe3soe8u4kvk0vj91slgaugfl1nml25i.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfirebasecurd',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHd7OL1G_waHbNTlVxicMLawCHSrDXAUM',
    appId: '1:422066440305:ios:83065c142f6be9464033d0',
    messagingSenderId: '422066440305',
    projectId: 'flutterfirebasecurd-f5e8b',
    storageBucket: 'flutterfirebasecurd-f5e8b.appspot.com',
    iosClientId: '422066440305-m5703lhg7nm4rqubi9e6ilmot7kbh099.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfirebasecurd.RunnerTests',
  );
}
