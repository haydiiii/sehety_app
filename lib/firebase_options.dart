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
    apiKey: 'AIzaSyBC39wW_0R6wEYHo4dhEIWdOZvTteDYQsE',
    appId: '1:310697058415:web:15bc96d15a7187011b6d9a',
    messagingSenderId: '310697058415',
    projectId: 'sehety-app',
    authDomain: 'sehety-app.firebaseapp.com',
    storageBucket: 'sehety-app.appspot.com',
    measurementId: 'G-0R1WBBN4Q4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRPhtrxgluTx8v-847c0511ZHoKXTE8wY',
    appId: '1:310697058415:android:36cf6dbb9fbb1d271b6d9a',
    messagingSenderId: '310697058415',
    projectId: 'sehety-app',
    storageBucket: 'sehety-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSKOmPB6Ml20thBMlXukMeXzA0FltPQpc',
    appId: '1:310697058415:ios:098ad7a0322301901b6d9a',
    messagingSenderId: '310697058415',
    projectId: 'sehety-app',
    storageBucket: 'sehety-app.appspot.com',
    iosBundleId: 'com.example.sehetyApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSKOmPB6Ml20thBMlXukMeXzA0FltPQpc',
    appId: '1:310697058415:ios:098ad7a0322301901b6d9a',
    messagingSenderId: '310697058415',
    projectId: 'sehety-app',
    storageBucket: 'sehety-app.appspot.com',
    iosBundleId: 'com.example.sehetyApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBC39wW_0R6wEYHo4dhEIWdOZvTteDYQsE',
    appId: '1:310697058415:web:e2f7c5a91c3ce9fe1b6d9a',
    messagingSenderId: '310697058415',
    projectId: 'sehety-app',
    authDomain: 'sehety-app.firebaseapp.com',
    storageBucket: 'sehety-app.appspot.com',
    measurementId: 'G-PLB44YKDZL',
  );
}
