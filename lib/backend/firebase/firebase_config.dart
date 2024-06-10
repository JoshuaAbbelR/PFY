import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBMWvxHaLVLWAXsDXI0dUDJXtgHcfLusK4",
            authDomain: "pet-s-for-you.firebaseapp.com",
            projectId: "pet-s-for-you",
            storageBucket: "pet-s-for-you.appspot.com",
            messagingSenderId: "633947686814",
            appId: "1:633947686814:web:f41a323afb21e19f82388f",
            measurementId: "G-2KXYP3SB4Q"));
  } else {
    await Firebase.initializeApp();
  }
}
