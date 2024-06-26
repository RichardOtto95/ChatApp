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
    apiKey: 'AIzaSyAL5ZqE7rmhhC6FSGHpZoeM2Uw--buJXmc',
    appId: '1:388401831817:web:965d0f2940a5ef0b618b58',
    messagingSenderId: '388401831817',
    projectId: 'ricostudies-5bb22',
    authDomain: 'ricostudies-5bb22.firebaseapp.com',
    storageBucket: 'ricostudies-5bb22.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1LvoOslyHAXqsDykFuyQuqzsy0qOnLU0',
    appId: '1:388401831817:android:d3c163e862666070618b58',
    messagingSenderId: '388401831817',
    projectId: 'ricostudies-5bb22',
    storageBucket: 'ricostudies-5bb22.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyARjn6VH7xIN_yTYLHR51h2vgFsTT4F8ks',
    appId: '1:388401831817:ios:de448f44032d9ce2618b58',
    messagingSenderId: '388401831817',
    projectId: 'ricostudies-5bb22',
    storageBucket: 'ricostudies-5bb22.appspot.com',
    androidClientId: '388401831817-kuih22dk6s3lrbda3j7ov96d6pfccloc.apps.googleusercontent.com',
    iosClientId: '388401831817-8fq67n19ukpdco3qc3kpts2kjit99bea.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyARjn6VH7xIN_yTYLHR51h2vgFsTT4F8ks',
    appId: '1:388401831817:ios:8850ff3c60bc2a21618b58',
    messagingSenderId: '388401831817',
    projectId: 'ricostudies-5bb22',
    storageBucket: 'ricostudies-5bb22.appspot.com',
    androidClientId: '388401831817-3sgv7nlt904q4a5btulh35ojfci9ffev.apps.googleusercontent.com',
    iosClientId: '388401831817-kjil6jn8goag3bie1iv4s4irsqu3jfvf.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
