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
    apiKey: 'AIzaSyD_V47_14pWrpiL5z_-G7pjEIuqV5xzNG4',
    appId: '1:570926909896:web:086e64e7caafd2d95398fd',
    messagingSenderId: '570926909896',
    projectId: 'employeeapp-83f55',
    authDomain: 'employeeapp-83f55.firebaseapp.com',
    storageBucket: 'employeeapp-83f55.appspot.com',
    measurementId: 'G-TGZTML6RW0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDF_nDZBvuKbcWLcKgwCtexlZuuUpEr2aE',
    appId: '1:570926909896:android:5b060b0ddaaced365398fd',
    messagingSenderId: '570926909896',
    projectId: 'employeeapp-83f55',
    storageBucket: 'employeeapp-83f55.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDk9uefPVOe2hy7oK4ZTjahZU6mGhFRASE',
    appId: '1:570926909896:ios:bccac2660cf3d1155398fd',
    messagingSenderId: '570926909896',
    projectId: 'employeeapp-83f55',
    storageBucket: 'employeeapp-83f55.appspot.com',
    iosBundleId: 'com.example.employeeapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDk9uefPVOe2hy7oK4ZTjahZU6mGhFRASE',
    appId: '1:570926909896:ios:ddc96d8ff80fb7445398fd',
    messagingSenderId: '570926909896',
    projectId: 'employeeapp-83f55',
    storageBucket: 'employeeapp-83f55.appspot.com',
    iosBundleId: 'com.example.employeeapp.RunnerTests',
  );
}