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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDNPNAskFsyC9Yocx-ccwsgFsk8sPZWgMw',
    appId: '1:77776808063:web:14aa0fcaf1e28cd9a3b74a',
    messagingSenderId: '77776808063',
    projectId: 'darazclone-38a51',
    authDomain: 'darazclone-38a51.firebaseapp.com',
    storageBucket: 'darazclone-38a51.appspot.com',
    measurementId: 'G-RC1NGXK145',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5c62KtwPFUwqLC_Euwy7H8nJ_CX0gmOM',
    appId: '1:77776808063:android:381ce15e4eb567bea3b74a',
    messagingSenderId: '77776808063',
    projectId: 'darazclone-38a51',
    storageBucket: 'darazclone-38a51.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCscyOKqBDJlfsvOxn4FN6N3Zr1sRnhKLM',
    appId: '1:77776808063:ios:e170f7493a8cff65a3b74a',
    messagingSenderId: '77776808063',
    projectId: 'darazclone-38a51',
    storageBucket: 'darazclone-38a51.appspot.com',
    iosBundleId: 'com.example.myprofessionals',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCscyOKqBDJlfsvOxn4FN6N3Zr1sRnhKLM',
    appId: '1:77776808063:ios:e170f7493a8cff65a3b74a',
    messagingSenderId: '77776808063',
    projectId: 'darazclone-38a51',
    storageBucket: 'darazclone-38a51.appspot.com',
    iosBundleId: 'com.example.myprofessionals',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDNPNAskFsyC9Yocx-ccwsgFsk8sPZWgMw',
    appId: '1:77776808063:web:ac7f6b5079bb823fa3b74a',
    messagingSenderId: '77776808063',
    projectId: 'darazclone-38a51',
    authDomain: 'darazclone-38a51.firebaseapp.com',
    storageBucket: 'darazclone-38a51.appspot.com',
    measurementId: 'G-XQ0R2FXSE4',
  );
}
