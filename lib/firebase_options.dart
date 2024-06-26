// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB3qHH-8BRrmuWPcgNa_vHOcwfozM8J-bo',
    appId: '1:919263431638:web:1ea57a3dd6aa3c7b837277',
    messagingSenderId: '919263431638',
    projectId: 'booktalk-d9318',
    authDomain: 'booktalk-d9318.firebaseapp.com',
    storageBucket: 'booktalk-d9318.appspot.com',
    measurementId: 'G-H9MLJG4032',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxJZU11i10MnLhtRRa2wnvtO6cPm9h_2I',
    appId: '1:919263431638:android:4af9f250b9676712837277',
    messagingSenderId: '919263431638',
    projectId: 'booktalk-d9318',
    storageBucket: 'booktalk-d9318.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcwwyDbr9whgv_XzJ9YJ9WU2RONj87_Yo',
    appId: '1:919263431638:ios:071dcbab94dfe38e837277',
    messagingSenderId: '919263431638',
    projectId: 'booktalk-d9318',
    storageBucket: 'booktalk-d9318.appspot.com',
    iosBundleId: 'com.example.booktalkFrontend',
  );
}
