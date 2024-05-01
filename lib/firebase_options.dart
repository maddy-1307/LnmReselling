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
    apiKey: 'AIzaSyCHfujOUTaNXi4ODYzjI1pm5WLmejJFqP4',
    appId: '1:838367122176:web:b2d9dba167fb1ddd0b59e5',
    messagingSenderId: '838367122176',
    projectId: 'lnmresell-acb82',
    authDomain: 'lnmresell-acb82.firebaseapp.com',
    storageBucket: 'lnmresell-acb82.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAX98QSTgUPoZ89rv_a5fqDslHFOP2Mx48',
    appId: '1:838367122176:android:16477f79039166cc0b59e5',
    messagingSenderId: '838367122176',
    projectId: 'lnmresell-acb82',
    storageBucket: 'lnmresell-acb82.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYNbcw1Tmz1MiNopELdMt63XfyshQjcn0',
    appId: '1:838367122176:ios:cc0f95917761c49b0b59e5',
    messagingSenderId: '838367122176',
    projectId: 'lnmresell-acb82',
    storageBucket: 'lnmresell-acb82.appspot.com',
    iosClientId: '838367122176-5jee6ft7ev8mhaf7rpoq6cjkl9qc79v5.apps.googleusercontent.com',
    iosBundleId: 'com.example.lnmReselling',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCYNbcw1Tmz1MiNopELdMt63XfyshQjcn0',
    appId: '1:838367122176:ios:cc0f95917761c49b0b59e5',
    messagingSenderId: '838367122176',
    projectId: 'lnmresell-acb82',
    storageBucket: 'lnmresell-acb82.appspot.com',
    iosClientId: '838367122176-5jee6ft7ev8mhaf7rpoq6cjkl9qc79v5.apps.googleusercontent.com',
    iosBundleId: 'com.example.lnmReselling',
  );
}
