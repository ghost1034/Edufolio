import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDhYtL_MeK8KrrNauZ6jhSgs4WpDOWwGOs",
            authDomain: "student-5e8a3.firebaseapp.com",
            projectId: "student-5e8a3",
            storageBucket: "student-5e8a3.appspot.com",
            messagingSenderId: "354203165848",
            appId: "1:354203165848:web:2e9b94f6757dfc630a1ced",
            measurementId: "G-40HK4METSE"));
  } else {
    await Firebase.initializeApp();
  }
}
