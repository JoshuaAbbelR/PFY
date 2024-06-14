import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyClQrmPUTA12aquHNLOM154krf2bU9TY68",
            authDomain: "pet-for-you-5mjuzb.firebaseapp.com",
            projectId: "pet-for-you-5mjuzb",
            storageBucket: "pet-for-you-5mjuzb.appspot.com",
            messagingSenderId: "974671934865",
            appId: "1:974671934865:web:aa122b22b51eb6dc405630"));
  } else {
    await Firebase.initializeApp();
  }
}
