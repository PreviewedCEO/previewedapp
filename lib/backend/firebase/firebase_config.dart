import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfdc1hL_7n46W7y6mhw3yhaNB847gIiyc",
            authDomain: "previewed-nobpzs.firebaseapp.com",
            projectId: "previewed-nobpzs",
            storageBucket: "previewed-nobpzs.appspot.com",
            messagingSenderId: "321219032197",
            appId: "1:321219032197:web:36e14f0527712bba6565ec",
            measurementId: "G-S8ZWXGWYTQ"));
  } else {
    await Firebase.initializeApp();
  }
}
